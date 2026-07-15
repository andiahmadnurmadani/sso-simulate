<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Telin KM SSO - Authorize Application">
    <title>@yield('title', 'Authorize - Telin KM SSO')</title>
    @fonts
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class="min-h-screen bg-gradient-to-br from-slate-50 via-indigo-50/30 to-slate-100 text-slate-900 antialiased">
    <div class="flex min-h-screen flex-col items-center justify-center px-4 py-10">
        <div class="mb-10 text-center">
            <h1 class="text-2xl font-extrabold tracking-tight text-slate-900">Telin KM SSO</h1>
            <p class="mt-1.5 text-sm font-medium text-slate-500">Single Sign-On Identity Provider</p>
        </div>
        @yield('content')
        <p class="mt-10 text-center text-xs text-slate-400">
            &copy; {{ date('Y') }} Telin KM &mdash; Simulation Environment
        </p>
    </div>
</body>
</html>
