<!DOCTYPE html>
<html>
<head>
    <title>CRM Email</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background:#f4f6f9;">

<div class="d-flex">

    <!-- SIDEBAR -->
    <div style="width:250px; height:100vh; background:#1e293b;" class="text-white p-3">

        <h4 class="mb-4">CRM Email</h4>

        <ul class="nav flex-column">
            <li class="nav-item mb-2">
                <a href="/dashboard" class="nav-link text-white">
                    📊 Email Dashboard
                </a>
            </li>
            <li class="nav-item mb-2">
        <a href="/wa-dashboard" class="nav-link text-white">
            📱 WA Dashboard
        </a>
    </li>

            <li class="nav-item">
                <a href="/create-email" class="nav-link text-white">
                    ✉️ Create Email
                </a>
            </li>
        </ul>
    </div>

    <!-- CONTENT -->
    <div class="flex-fill p-4">
        @yield('content')
    </div>

</div>

</body>
</html>
