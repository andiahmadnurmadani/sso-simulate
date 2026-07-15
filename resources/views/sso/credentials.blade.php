@extends('layouts.app')

@section('title', 'OAuth Client Credentials - Telin KM')

@section('content')
    <div class="mx-auto max-w-3xl space-y-6">
        <div class="text-center">
            <span class="mb-3 inline-flex items-center gap-1.5 rounded-full bg-emerald-100 px-3 py-1 text-xs font-bold text-emerald-700"><span class="h-1.5 w-1.5 rounded-full bg-emerald-500"></span> Application Created</span>
            <h1 class="text-3xl font-extrabold tracking-tight text-slate-900 sm:text-4xl">Your app is ready</h1>
            <p class="mx-auto mt-2 max-w-lg text-slate-500">Copy the Client ID and Client Secret below into your application. The secret will not be shown again.</p>
        </div>

        @if (session('success'))
            <div class="rounded-xl border border-emerald-200 bg-emerald-50 px-4 py-3 text-center text-sm font-medium text-emerald-800">
                {{ session('success') }}
            </div>
        @endif

        <div class="relative overflow-hidden rounded-2xl bg-gradient-to-br from-indigo-600 to-violet-600 p-8 text-white shadow-xl">
            <div class="absolute -right-10 -top-10 h-40 w-40 rounded-full bg-white/10"></div>
            <div class="absolute -bottom-8 -left-8 h-32 w-32 rounded-full bg-white/10"></div>
            <div class="relative z-10">
                <h2 class="text-xl font-extrabold">{{ $client->name }}</h2>
                <p class="text-sm text-indigo-100">Copy these credentials to your app</p>

                <div class="mt-5 space-y-4">
                    <div class="flex flex-col gap-3 rounded-xl border border-white/20 bg-white/10 p-4 backdrop-blur-sm sm:flex-row sm:items-center sm:justify-between">
                        <div class="min-w-0">
                            <div class="text-[10px] font-extrabold uppercase tracking-widest text-indigo-100">Client ID</div>
                            <div class="mt-1 break-all font-mono text-sm font-semibold" id="client-id">{{ $client->client_id }}</div>
                        </div>
                        <button type="button" onclick="copyToClipboard('client-id', this)" class="shrink-0 rounded-lg bg-white px-3 py-2 text-xs font-bold text-indigo-700 shadow transition hover:bg-indigo-50">Copy</button>
                    </div>

                    <div class="flex flex-col gap-3 rounded-xl border border-white/20 bg-white/10 p-4 backdrop-blur-sm sm:flex-row sm:items-center sm:justify-between">
                        <div class="min-w-0">
                            <div class="text-[10px] font-extrabold uppercase tracking-widest text-indigo-100">Client Secret</div>
                            <div class="mt-1 break-all font-mono text-sm font-semibold" id="client-secret">{{ $client->client_secret }}</div>
                        </div>
                        <button type="button" onclick="copyToClipboard('client-secret', this)" class="shrink-0 rounded-lg bg-white px-3 py-2 text-xs font-bold text-indigo-700 shadow transition hover:bg-indigo-50">Copy</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="rounded-xl border border-amber-200 bg-amber-50 px-4 py-3 text-sm font-medium text-amber-800">
            <strong>Important:</strong> Store the Client Secret securely on your server. Never expose it in frontend code or public repositories.
        </div>

        <div class="flex items-center justify-center gap-3">
            <a href="{{ route('sso.clients') }}" class="inline-flex items-center gap-2 rounded-xl border border-slate-300 bg-white px-5 py-2.5 text-sm font-semibold text-slate-700 transition hover:bg-slate-50">Back to Clients</a>
            <a href="{{ route('developer.sso') }}" class="inline-flex items-center gap-2 rounded-xl bg-indigo-600 px-5 py-2.5 text-sm font-semibold text-white shadow-lg shadow-indigo-200 transition hover:bg-indigo-700">View Setup Docs</a>
        </div>
    </div>

    <script>
        function copyToClipboard(elementId, btn) {
            const text = document.getElementById(elementId).textContent;
            navigator.clipboard.writeText(text).then(() => {
                const original = btn.textContent;
                btn.textContent = 'Copied!';
                setTimeout(() => btn.textContent = original, 1500);
            });
        }
    </script>
@endsection
