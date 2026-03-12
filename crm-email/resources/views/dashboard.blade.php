@extends('layouts.admin')

@section('content')

<h2 class="mb-4">📊 CRM Email Dashboard</h2>

<div class="row">

<div class="card mb-4 shadow-sm border-0">
    <div class="card-body">

        <form method="GET" action="/dashboard" class="row g-3 align-items-end">

            <div class="col-md-4">
                <label class="form-label">From Date</label>
                <input type="date" name="from" class="form-control" value="{{ request('from') }}">
            </div>

            <div class="col-md-4">
                <label class="form-label">To Date</label>
                <input type="date" name="to" class="form-control" value="{{ request('to') }}">
            </div>

            <div class="col-md-4">
                <button type="submit" class="btn btn-primary">
                    🔍 Filter
                </button>

                <a href="/dashboard" class="btn btn-secondary">
                    Reset
                </a>
            </div>

        </form>

    </div>
</div>


    <div class="col-md-6">
        <div class="card shadow-sm border-0">
            <div class="card-body">
                <h5>Total Email Terkirim</h5>
                <h2 class="fw-bold text-primary">
                    {{ $totalEmails }}
                </h2>
            </div>
        </div>
    </div>

    <div class="col-md-6">
        <div class="card shadow-sm border-0">
            <div class="card-body">
                <h5>Total Jenis Pesan</h5>
                <h2 class="fw-bold text-success">
                    {{ $totalTemplates }}
                </h2>
            </div>
        </div>
    </div>

</div>

<div class="card mt-4 shadow-sm border-0">
    <div class="card-body">
        <h5 class="mb-3">📨 Email Terakhir</h5>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Case ID</th>    
                    <th>Customer</th>
                    <th>Email</th>
                    <th>Subject</th>
                    <th>Tanggal</th>
                </tr>
            </thead>
            <tbody>
                @forelse($recentEmails as $email)
                    <tr>
                        <td>{{ $email->case_id }}</td>
                        <td>{{ $email->customer_name }}</td>
                        <td>{{ $email->customer_email }}</td>
                        <td>{{ $email->subject }}</td>
                        <td>{{ $email->created_at->format('d M Y H:i') }}</td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="4" class="text-center text-muted">
                            Belum ada email terkirim
                        </td>
                    </tr>
                @endforelse
            </tbody>
        </table>

    </div>
</div>

@endsection
