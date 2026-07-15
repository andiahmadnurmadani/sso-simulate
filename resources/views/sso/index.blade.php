@extends('layouts.app')

@section('title', 'SSO Login Tester - Telin KM')

@section('content')
    <div class="mx-auto max-w-4xl space-y-6">
        <div>
            <h1 class="text-3xl font-extrabold tracking-tight text-slate-900">SSO Login Tester</h1>
            <p class="mt-1 text-slate-500">Test SSO login and get an access token for your application.</p>
        </div>

        <div class="rounded-2xl border border-amber-200 bg-amber-50 p-5">
            <div class="flex items-start gap-3">
                <span class="mt-0.5 text-lg">⚠️</span>
                <div>
                    <h3 class="text-sm font-extrabold text-amber-900">Simulation Environment</h3>
                    <p class="mt-1 text-sm text-amber-800">All seeded employee accounts use password <code class="rounded bg-white px-1.5 py-0.5 font-mono font-bold text-amber-900">password</code>. Find sample emails in <a href="{{ route('data.index', ['table' => 'employees']) }}" class="font-bold underline">Data → Employees</a>.</p>
                </div>
            </div>
        </div>

        @if (isset($error))
            <div class="rounded-xl border border-red-200 bg-red-50 px-4 py-3 text-sm font-medium text-red-800">
                {{ $error }}
            </div>
        @endif

        <div class="rounded-2xl border border-slate-200 bg-white p-6 shadow-sm">
            <div class="mb-5 flex items-center gap-2">
                <h2 class="text-lg font-bold text-slate-900">Token Request</h2>
                <span class="group relative flex h-5 w-5 cursor-help items-center justify-center rounded-full border border-slate-300 text-[10px] font-bold text-slate-400 hover:border-indigo-300 hover:text-indigo-600">?
                    <span class="absolute bottom-full left-1/2 z-20 mb-2 hidden w-60 -translate-x-1/2 rounded-lg bg-slate-800 px-3 py-2 text-xs font-medium text-white shadow-xl group-hover:block">Enter a user email/password plus the client credentials to test login.</span>
                </span>
            </div>
            <form method="POST" action="{{ route('sso.login') }}" class="grid gap-5 sm:grid-cols-2">
                @csrf
                <div>
                    <label for="client_id" class="mb-1 block text-sm font-bold text-slate-700">Client ID</label>
                    <input type="text" id="client_id" name="client_id" value="{{ old('client_id', ($old ?? [])['client_id'] ?? '') }}" placeholder="default-client" class="w-full rounded-xl border border-slate-300 px-4 py-2.5 text-sm transition focus:border-indigo-500 focus:outline-none focus:ring-4 focus:ring-indigo-500/10">
                </div>
                <div>
                    <label for="client_secret" class="mb-1 block text-sm font-bold text-slate-700">Client Secret</label>
                    <input type="password" id="client_secret" name="client_secret" placeholder="default-secret" class="w-full rounded-xl border border-slate-300 px-4 py-2.5 text-sm transition focus:border-indigo-500 focus:outline-none focus:ring-4 focus:ring-indigo-500/10">
                </div>
                <div>
                    <label for="email" class="mb-1 block text-sm font-bold text-slate-700">Email</label>
                    <input type="email" id="email" name="email" value="{{ old('email', ($old ?? [])['email'] ?? '') }}" placeholder="employee@telin.com" class="w-full rounded-xl border border-slate-300 px-4 py-2.5 text-sm transition focus:border-indigo-500 focus:outline-none focus:ring-4 focus:ring-indigo-500/10">
                </div>
                <div>
                    <label for="password" class="mb-1 block text-sm font-bold text-slate-700">Password</label>
                    <input type="password" id="password" name="password" placeholder="password" class="w-full rounded-xl border border-slate-300 px-4 py-2.5 text-sm transition focus:border-indigo-500 focus:outline-none focus:ring-4 focus:ring-indigo-500/10">
                </div>
                <div class="sm:col-span-2 flex flex-wrap items-center gap-3">
                    <button type="submit" class="inline-flex items-center gap-2 rounded-xl bg-indigo-600 px-5 py-2.5 text-sm font-semibold text-white shadow-lg shadow-indigo-200 transition hover:bg-indigo-700">Get Access Token</button>
                    <a href="{{ route('developer.sso') }}" class="inline-flex items-center gap-2 rounded-xl border border-slate-300 bg-white px-5 py-2.5 text-sm font-semibold text-slate-700 transition hover:bg-slate-50">Back to Setup</a>
                </div>
            </form>
        </div>

        <div class="rounded-2xl border border-slate-200 bg-white p-6 shadow-sm">
            <h2 class="text-lg font-bold text-slate-900">API Endpoints</h2>
            <div class="mt-4 space-y-3">
                <div class="flex items-center gap-3">
                    <span class="rounded-lg bg-slate-900 px-2.5 py-1 text-[10px] font-extrabold uppercase tracking-wider text-white">POST</span>
                    <div>
                        <code class="text-sm font-semibold text-slate-700">{{ url('/api/sso/token') }}</code>
                        <p class="text-xs text-slate-500">Login and get JWT access token.</p>
                    </div>
                </div>
                <div class="flex items-center gap-3">
                    <span class="rounded-lg bg-indigo-600 px-2.5 py-1 text-[10px] font-extrabold uppercase tracking-wider text-white">GET</span>
                    <div>
                        <code class="text-sm font-semibold text-slate-700">{{ url('/api/sso/userinfo') }}</code>
                        <p class="text-xs text-slate-500">Get employee profile, position, and photo (Bearer token).</p>
                    </div>
                </div>
                <div class="flex items-center gap-3">
                    <span class="rounded-lg bg-slate-900 px-2.5 py-1 text-[10px] font-extrabold uppercase tracking-wider text-white">POST</span>
                    <div>
                        <code class="text-sm font-semibold text-slate-700">{{ url('/api/sso/introspect') }}</code>
                        <p class="text-xs text-slate-500">Validate access token.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
