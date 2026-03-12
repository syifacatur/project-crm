<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Http;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Models\EmailTemplate;
use App\Models\EmailLog;
use App\Models\WaLog;
use App\Http\Controllers\EmailController;


Route::get('/', function () {
    return redirect('/dashboard');
});

Route::get('/dashboard', function (Request $request) {

    $query = EmailLog::query();

    // Jika ada filter tanggal
    if ($request->from && $request->to) {
        $query->whereBetween('created_at', [
            $request->from . ' 00:00:00',
            $request->to . ' 23:59:59'
        ]);
    }


    $totalEmails = $query->count();
    $recentEmails = $query->latest()->take(10)->get();
    $totalTemplates = EmailTemplate::count();

    return view('dashboard', compact(
        'totalEmails',
        'totalTemplates',
        'recentEmails'
    ));
});

Route::get('/create-email', function () {
    $templates = EmailTemplate::all();
    return view('create-email', compact('templates'));
});
Route::get('/get-template-fields/{id}', function ($id) {
    $template = \App\Models\EmailTemplate::find($id);

    return response()->json([
        'fields' => json_decode($template->required_fields)
    ]);
});
Route::get('/wa-dashboard', function (Illuminate\Http\Request $request) {

    $query = WaLog::query();

    if($request->from && $request->to){
        $query->whereBetween('created_at', [
            $request->from . ' 00:00:00',
            $request->to . ' 23:59:59'
        ]);
    }

    $totalWa = $query->count();

    $recentWa = $query->latest()->take(10)->get();

    return view('wa-dashboard', compact('totalWa','recentWa'));
});

Route::post('/send-email', function (Request $request) {

    $template = EmailTemplate::find($request->template_id);

    if(!$template){
        return redirect()->back()->with('error', 'Template tidak ditemukan');
    }

    $channels = $request->channels ?? [];

    if(empty($channels)){
        return redirect()->back()->with('error', 'Pilih minimal satu metode pengiriman');
    }

    $data = $request->all();

    unset($data['channels']); // 🔥 WAJIB TAMBAHKAN INI

    $waBody = $template->wa_body ?? ''; 

    $data['sender_name'] = "HP Service Center Semarang";
    $data['sender_position'] = "Customer Service";
    $data['company_name'] = "PT. Harmoni Putra Solusindo";
    $data['sender_phone'] = "08123456789";

    $subject = $template->subject;
    $body = $template->body;

    // Field tambahan
    $data['engineer_name'] = $request->engineer_name ?? '';
    $data['appointment_date'] = $request->appointment_date ?? '';
    $data['appointment_time'] = $request->appointment_time ?? '';
    $data['new_delivery_date'] = $request->new_delivery_date ?? '';
    $data['new_service_date'] = $request->new_service_date ?? '';
    $data['service_date'] = $request->service_date ?? '';
    $data['sender_position2'] = $request->sender_position2 ?? '';
    $data['sender_position3'] = $request->sender_position3 ?? '';

    foreach($data as $key => $value){

        if(is_array($value)) continue; // 🔥 tambahan safety

        $subject = str_replace('{{'.$key.'}}', (string)$value, $subject);
        $body = str_replace('{{'.$key.'}}', (string)$value, $body);
        $waBody = str_replace('{{'.$key.'}}', (string)$value, $waBody);
    }


    // =========================
    // KIRIM EMAIL (jika dicentang)
    // =========================
    if(in_array('email', $channels)){

        Mail::send([], [], function ($message) use ($request, $subject, $body) {

            $logoPath = public_path('images/HP.png');
            $cid = $message->embed($logoPath);
            $finalBody = str_replace('{{company_logo}}', $cid, $body);

            $message->to($request->customer_email)
                    ->subject($subject)
                    ->from(config('mail.from.address'), config('mail.from.name'))
                    ->replyTo('custcare@harmoniputra.com', 'Customer Care')
                    ->html($finalBody);
        });
    }

    // =========================
// KIRIM WHATSAPP (jika dicentang)
// =========================
if(in_array('wa', $channels)){

    $response = Http::withHeaders([
        'x-api-key' => '123456'
    ])->post('http://localhost:2026/send', [
        'nomor' => $request->customer_phone,
        'pesan' => $waBody
    ]);

    WaLog::create([
        'customer_name' => $request->customer_name,
        'customer_phone' => $request->customer_phone,
        'case_id' => $request->workorder,
        'message' => $waBody,
        'status' => $response->successful() ? 'sent' : 'failed'
    ]);
}
    // =========================
    // SIMPAN LOG (tidak berubah)
    // =========================
    EmailLog::create([
        'customer_name' => $request->customer_name ?? '-',
        'customer_email' => $request->customer_email,
        'customer_phone' => $request->customer_phone,
        'case_id' => $request->workorder,
        'subject' => $subject,
    ]);

    return redirect('/dashboard')->with('success','Pesan berhasil dikirim');
});