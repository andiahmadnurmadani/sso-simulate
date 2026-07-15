@extends('layouts.app')

@section('title', 'Authorize Application - Telin KM')

@section('content')
    <div class="mx-auto max-w-md">
        <div class="rounded-2xl border border-slate-200 bg-white p-8 shadow-sm">
            <div class="mb-6 text-center">
                <div class="mx-auto mb-4 flex h-14 w-14 items-center justify-center rounded-full bg-indigo-50">
                    <span class="text-2xl">🔐</span>
                </div>
                <h1 class="text-2xl font-extrabold text-slate-900">Authorize {{ $client->name }}</h1>
                <p class="mt-2 text-sm text-slate-500">This application wants to access your Telin KM profile. Login to continue.</p>
            </div>

            @if ($error)
                <div class="mb-4 rounded-xl border border-red-200 bg-red-50 px-4 py-3 text-sm font-medium text-red-800">
                    {{ $error === 'invalid_credentials' ? 'Invalid email or password.' : $error }}
                </div>
            @endif

            <form method="POST" action="{{ route('sso.authorize.approve') }}" class="space-y-4">
                @csrf
                <input type="hidden" name="client_id" value="{{ $client->client_id }}">
                <input type="hidden" name="redirect_uri" value="{{ $redirectUri }}">
                <input type="hidden" name="response_type" value="code">
                <input type="hidden" name="state" value="{{ $state }}">

                <div>
                    <label for="email" class="mb-1 block text-sm font-bold text-slate-700">Email</label>
                    <input type="email" id="email" name="email" required placeholder="employee@telin.com" class="w-full rounded-xl border border-slate-300 px-4 py-2.5 text-sm transition focus:border-indigo-500 focus:outline-none focus:ring-4 focus:ring-indigo-500/10">
                </div>

                <div>
                    <label for="password" class="mb-1 block text-sm font-bold text-slate-700">Password</label>
                    <input type="password" id="password" name="password" required placeholder="password" class="w-full rounded-xl border border-slate-300 px-4 py-2.5 text-sm transition focus:border-indigo-500 focus:outline-none focus:ring-4 focus:ring-indigo-500/10">
                </div>

                <div class="rounded-xl bg-amber-50 p-3 text-xs text-amber-800">
                    Simulation: all seeded passwords are <strong>password</strong>.
                </div>

                <button type="submit" class="w-full rounded-xl bg-indigo-600 px-5 py-2.5 text-sm font-semibold text-white shadow-lg shadow-indigo-200 transition hover:bg-indigo-700">Login & Authorize</button>

                <p class="text-center text-xs text-slate-500">
                    You will be redirected back to<br>
                    <code class="break-all rounded bg-slate-100 px-1 py-0.5 text-[10px] text-slate-700">{{ $redirectUri }}</code>
                </p>
            </form>
        </div>
    </div>
@endsection
