<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Telin KM SSO Identity Provider - Connect your apps with secure single sign-on">
    <title>@yield('title', config('app.name', 'Telin KM SSO'))</title>
    @fonts
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class="min-h-screen bg-slate-50 text-slate-900 antialiased">
    <nav class="sticky top-0 z-50 border-b border-slate-200/80 bg-white/80 backdrop-blur-xl">
        <div class="mx-auto flex h-16 max-w-7xl items-center justify-between px-4 sm:px-6 lg:px-8">
            <a href="/" class="flex items-center gap-2.5 text-xl font-extrabold tracking-tight text-slate-900">
                <span class="h-3 w-3 rounded-full bg-indigo-600 ring-4 ring-indigo-100"></span>
                Telin KM SSO
            </a>
            <div class="flex items-center gap-1">
                @php
                    $route = Route::currentRouteName();
                    $clientRoutes = ['sso.clients', 'sso.createClient', 'sso.storeClient', 'sso.editClient', 'sso.updateClient', 'sso.credentials', 'sso.deleteClient'];
                    $testerRoutes = ['sso.index', 'sso.login'];
                @endphp
                <a href="{{ route('developer.sso') }}" class="rounded-lg px-3 py-2 text-sm font-medium text-slate-600 transition hover:bg-slate-100 hover:text-slate-900 {{ $route === 'developer.sso' ? 'bg-indigo-50 text-indigo-700' : '' }}">Setup</a>
                <a href="{{ route('sso.clients') }}" class="rounded-lg px-3 py-2 text-sm font-medium text-slate-600 transition hover:bg-slate-100 hover:text-slate-900 {{ in_array($route, $clientRoutes) ? 'bg-indigo-50 text-indigo-700' : '' }}">Clients</a>
                <a href="{{ route('sso.index') }}" class="rounded-lg px-3 py-2 text-sm font-medium text-slate-600 transition hover:bg-slate-100 hover:text-slate-900 {{ in_array($route, $testerRoutes) ? 'bg-indigo-50 text-indigo-700' : '' }}">Tester</a>
                <a href="{{ route('data.index') }}" class="rounded-lg px-3 py-2 text-sm font-medium text-slate-600 transition hover:bg-slate-100 hover:text-slate-900 {{ $route === 'data.index' ? 'bg-indigo-50 text-indigo-700' : '' }}">Data</a>
                <a href="{{ url('/api/documentation') }}" target="_blank" class="rounded-lg px-3 py-2 text-sm font-medium text-slate-600 transition hover:bg-slate-100 hover:text-slate-900">Swagger</a>
            </div>
        </div>
    </nav>
    <main class="px-4 py-8 sm:px-6 lg:px-8">
        @yield('content')
    </main>
</body>
</html>
