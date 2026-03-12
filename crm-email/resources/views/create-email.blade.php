@extends('layouts.admin')

@section('content')

<h2 class="mb-4">✉️ Create Email</h2>
<div class="card shadow-sm border-0">
    <div class="card-body">

       <form method="POST" action="/send-email">
@csrf

<div class="mb-3">
    <label class="form-label">Customer Email</label>
    <input type="email" name="customer_email" class="form-control" required>
</div>

<div id="dynamicFields"></div>

<div class="mb-3">
    <label class="form-label">Jenis Pesan</label>
    <select name="template_id" class="form-select" required>
        <option value="">-- Pilih jenis pesan --</option>
        @foreach($templates as $template)
            <option value="{{ $template->id }}">
                {{ $template->name }}
            </option>
        @endforeach
    </select>
</div>
<div class="mb-3">
    <label class="form-label">Kirim Melalui</label><br>

    <div class="form-check form-check-inline">
        <input class="form-check-input" type="checkbox" 
               name="channels[]" value="email" id="emailCheck">
        <label class="form-check-label" for="emailCheck">
            Email
        </label>
    </div>

    <div class="form-check form-check-inline">
        <input class="form-check-input" type="checkbox" 
               name="channels[]" value="wa" id="waCheck">
        <label class="form-check-label" for="waCheck">
            WhatsApp
        </label>
    </div>
</div>
<button type="submit" class="btn btn-primary">
    🚀 Send Email
</button>

</form>
<script>
document.addEventListener("DOMContentLoaded", function () {

    const templateSelect = document.querySelector("select[name='template_id']");
    const dynamicFields = document.getElementById("dynamicFields");

    templateSelect.addEventListener("change", function () {

        const selectedText = templateSelect.options[templateSelect.selectedIndex].text;

        let html = "";

        if (selectedText === "Part Delay") {
            html = `
                <div class="mb-3">
                    <label>Customer Name</label>
                    <input type="text" name="customer_name" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label>nomor Whastapp</label>
                    <input type="text" name="customer_phone" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label>Case ID</label>
                    <input type="text" name="workorder" class="form-control" required>
                </div>
            `;
        }

        if (selectedText === "Onsite confirmation") {
    html = `
        <div class="mb-3">
            <label>Customer Name</label>
            <input type="text" name="customer_name" class="form-control" required>
        </div>
        <div class="mb-3">
                    <label>nomor Whastapp</label>
                    <input type="text" name="customer_phone" class="form-control" required>
                </div>
        <div class="mb-3">
            <label>Nama Teknisi</label>
            <input type="text" name="engineer_name" class="form-control" required>
        </div>

        <div class="mb-3">
            <label>Tanggal Janji Temu</label>
            <input type="date" name="appointment_date" class="form-control" required>
        </div>

        <div class="mb-3">
            <label>Waktu Janji Temu</label>
            <input type="time" name="appointment_time" class="form-control" required>
        </div>
         <div class="mb-3">
                    <label>Case ID</label>
                    <input type="text" name="workorder" class="form-control" required>
                </div>
    `;
}
        if (selectedText === "Finish") {
    html = `
        <div class="mb-3">
            <label>Customer Name</label>
            <input type="text" name="customer_name" class="form-control" required>
        </div>
        <div class="mb-3">
                    <label>nomor Whastapp</label>
                    <input type="text" name="customer_phone" class="form-control" required>
                </div>
        <div class="mb-3">
                    <label>Case ID</label>
                    <input type="text" name="workorder" class="form-control" required>
                </div>

    `;
}

if (selectedText === "Reschedule Service - Confirmed Part Delivery") {
    html = `
        <div class="mb-3">
            <label>Customer Name</label>
            <input type="text" name="customer_name" class="form-control" required>
        </div>
        <div class="mb-3">
                    <label>nomor Whastapp</label>
                    <input type="text" name="customer_phone" class="form-control" required>
                </div>
        <div class="mb-3">
            <label>Tanggal Pengiriman Suku Cadang</label>
            <input type="date" name="new_delivery_date" class="form-control" required>
        </div>

        <div class="mb-3">
            <label>Tanggal Janji Servis Baru</label>
            <input type="date" name="new_service_date" class="form-control" required>
        </div>

        <div class="mb-3">
                    <label>Case ID</label>
                    <input type="text" name="workorder" class="form-control" required>
                </div>
    `;
}

if (selectedText === "Service Confirmation - No Parts Required") {
    html = `
        <div class="mb-3">
            <label>Customer Name</label>
            <input type="text" name="customer_name" class="form-control" required>
        </div>
        <div class="mb-3">
                    <label>nomor Whastapp</label>
                    <input type="text" name="customer_phone" class="form-control" required>
                </div>
        <div class="mb-3">
            <label>Tanggal Layanan</label>
            <input type="date" name="service_date" class="form-control" required>
        </div>

        <div class="mb-3">
            <label>jabatan</label>
            <input type="text" name="sender_position2" class="form-control" required>
        </div>

        <div class="mb-3">
                    <label>Case ID</label>
                    <input type="text" name="workorder" class="form-control" required>
                </div>
    `;
}

if (selectedText === "Service Confirmation - Parts Required") {
    html = `
        <div class="mb-3">
            <label>Customer Name</label>
            <input type="text" name="customer_name" class="form-control" required>
        </div>
        <div class="mb-3">
                    <label>nomor Whastapp</label>
                    <input type="text" name="customer_phone" class="form-control" required>
                </div>
        <div class="mb-3">
            <label>Tanggal Layanan</label>
            <input type="date" name="service_date" class="form-control" required>
        </div>

        <div class="mb-3">
            <label>jabatan</label>
            <input type="text" name="sender_position3" class="form-control" required>
        </div>

         <div class="mb-3">
                    <label>Case ID</label>
                    <input type="text" name="workorder" class="form-control" required>
                </div>
    `;
}

if (selectedText === "Service Reminder - Upcoming Appointment") {
    html = `
        <div class="mb-3">
            <label>Customer Name</label>
            <input type="text" name="customer_name" class="form-control" required>
        </div>
        <div class="mb-3">
                    <label>nomor Whastapp</label>
                    <input type="text" name="customer_phone" class="form-control" required>
                </div>
        <div class="mb-3">
            <label>Nama Teknisi</label>
            <input type="text" name="engineer_name" class="form-control" required>
        </div>

        <div class="mb-3">
            <label>Tanggal Janji Temu</label>
            <input type="date" name="appointment_date" class="form-control" required>
        </div>

        <div class="mb-3">
            <label>Waktu Janji Temu</label>
            <input type="time" name="appointment_time" class="form-control" required>
        </div>

          <div class="mb-3">
                    <label>Case ID</label>
                    <input type="text" name="workorder" class="form-control" required>
                </div>
    `;
}

        dynamicFields.innerHTML = html;
    });

});
</script>

    </div>
</div>

@endsection
