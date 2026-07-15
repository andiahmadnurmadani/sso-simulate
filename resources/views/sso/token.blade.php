@extends('layouts.app')

@section('title', 'SSO Token - Telin KM')

@section('content')
    <div class="mb-6">
        <h1 class="text-2xl font-semibold text-slate-900">Access Token</h1>
        <p class="text-sm text-slate-500">Token berhasil dibuat untuk <strong>{{ $employee->name }}</strong>.</p>
    </div>

    <div class="bg-white rounded-lg shadow overflow-hidden">
        <div class="p-6 border-b border-slate-200 flex items-center justify-between">
            <h2 class="text-lg font-medium text-slate-900">JWT Token</h2>
            <button onclick="copyToken()" class="px-3 py-1 bg-slate-100 hover:bg-slate-200 text-slate-700 text-xs font-medium rounded-md transition">
                Copy
            </button>
        </div>
        <div class="p-6">
            <textarea id="token" rows="6" readonly class="w-full px-4 py-3 bg-slate-50 border border-slate-200 rounded-md text-xs text-slate-700 font-mono focus:outline-none">{{ $token }}</textarea>
            <p id="copy-feedback" class="mt-2 text-xs text-green-600 hidden">Token disalin ke clipboard.</p>
        </div>
    </div>

    <div class="mt-6 bg-white rounded-lg shadow overflow-hidden">
        <div class="p-6 border-b border-slate-200">
            <h2 class="text-lg font-medium text-slate-900">Cara Pakai</h2>
        </div>
        <div class="p-6 space-y-4 text-sm text-slate-700">
            <p>Kirim request ke endpoint SSO dengan header berikut:</p>
            <pre class="bg-slate-900 text-green-400 p-4 rounded-md overflow-x-auto"><code>GET {{ url('/api/sso/userinfo') }}
Authorization: Bearer {{ substr($token, 0, 60) }}...</code></pre>
            <p>Atau introspect token:</p>
            <pre class="bg-slate-900 text-green-400 p-4 rounded-md overflow-x-auto"><code>POST {{ url('/api/sso/introspect') }}
Content-Type: application/json

{
  "token": "{{ substr($token, 0, 40) }}..."
}</code></pre>
        </div>
    </div>

    <div class="mt-6">
        <a href="{{ route('sso.index') }}" class="inline-flex items-center px-4 py-2 bg-indigo-600 text-white text-sm font-medium rounded-md hover:bg-indigo-700 transition">
            Kembali
        </a>
    </div>

    <script>
        function copyToken() {
            const el = document.getElementById('token');
            el.select();
            document.execCommand('copy');
            document.getElementById('copy-feedback').classList.remove('hidden');
            setTimeout(() => document.getElementById('copy-feedback').classList.add('hidden'), 2000);
        }
    </script>
@endsection
