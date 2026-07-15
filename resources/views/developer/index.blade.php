@extends('layouts.app')

@section('title', 'SSO Developer Setup - Telin KM')

@section('content')
    <div class="mx-auto max-w-7xl space-y-8">
        <!-- Hero -->
        <div class="text-center">
            <h1 class="text-4xl font-extrabold tracking-tight text-slate-900 sm:text-5xl">Connect your app with Telin SSO</h1>
            <p class="mx-auto mt-4 max-w-2xl text-lg text-slate-500">Single sign-on for employees. Secure tokens, profile data, positions, and profile photos — all in one place.</p>
            <div class="mt-6 flex flex-wrap items-center justify-center gap-3">
                <a href="{{ route('sso.createClient') }}" class="inline-flex items-center gap-2 rounded-xl bg-indigo-600 px-5 py-2.5 text-sm font-semibold text-white shadow-lg shadow-indigo-200 transition hover:bg-indigo-700 hover:shadow-indigo-300">+ Create OAuth Client</a>
                <a href="{{ route('sso.clients') }}" class="inline-flex items-center gap-2 rounded-xl border border-slate-300 bg-white px-5 py-2.5 text-sm font-semibold text-slate-700 transition hover:bg-slate-50">View Clients</a>
            </div>
        </div>

        <!-- Simulation notice -->
        <div class="rounded-2xl border border-amber-200 bg-amber-50 p-5">
            <div class="flex items-start gap-3">
                <span class="mt-0.5 text-lg">⚠️</span>
                <div>
                    <h3 class="text-sm font-extrabold text-amber-900">Simulation Environment</h3>
                    <p class="mt-1 text-sm text-amber-800">This SSO server is for simulation only. All seeded employee accounts use the password <code class="rounded bg-white px-1.5 py-0.5 font-mono font-bold text-amber-900">password</code>. Ask the admin for a sample employee email, or check the <a href="{{ route('data.index', ['table' => 'employees']) }}" class="font-bold underline">Data → Employees</a> page.</p>
                </div>
            </div>
        </div>

        <!-- Base URL -->
        <div class="rounded-2xl border border-slate-200 bg-white p-6 shadow-sm transition hover:shadow-md">
            <div class="mb-4 flex items-center gap-2">
                <h2 class="text-lg font-bold text-slate-900">Base URL</h2>
                <span class="group relative flex h-5 w-5 cursor-help items-center justify-center rounded-full border border-slate-300 text-[10px] font-bold text-slate-400 hover:border-indigo-300 hover:text-indigo-600">?
                    <span class="absolute bottom-full left-1/2 z-20 mb-2 hidden w-56 -translate-x-1/2 rounded-lg bg-slate-800 px-3 py-2 text-xs font-medium text-white shadow-xl group-hover:block">Use this base URL for every SSO API request from your application.</span>
                </span>
            </div>
            <code class="block rounded-xl bg-slate-900 p-4 text-sm text-emerald-400">{{ $baseUrl }}</code>
        </div>

        <!-- Steps -->
        <div class="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
            <div class="rounded-2xl border border-slate-200 bg-white p-6 shadow-sm transition hover:-translate-y-1 hover:shadow-lg">
                <div class="mb-4 flex h-10 w-10 items-center justify-center rounded-xl bg-indigo-50 text-lg font-extrabold text-indigo-600">1</div>
                <h3 class="text-lg font-bold text-slate-900">Register app</h3>
                <p class="mt-1 text-sm text-slate-500">Click <a href="{{ route('sso.createClient') }}" class="font-semibold text-indigo-600 hover:underline">Create OAuth Client</a>. We generate Client ID & Secret for you.</p>
            </div>
            <div class="rounded-2xl border border-slate-200 bg-white p-6 shadow-sm transition hover:-translate-y-1 hover:shadow-lg">
                <div class="mb-4 flex h-10 w-10 items-center justify-center rounded-xl bg-indigo-50 text-lg font-extrabold text-indigo-600">2</div>
                <h3 class="text-lg font-bold text-slate-900">Request token</h3>
                <p class="mt-1 text-sm text-slate-500">Send user credentials + client credentials to the token endpoint.</p>
            </div>
            <div class="rounded-2xl border border-slate-200 bg-white p-6 shadow-sm transition hover:-translate-y-1 hover:shadow-lg">
                <div class="mb-4 flex h-10 w-10 items-center justify-center rounded-xl bg-indigo-50 text-lg font-extrabold text-indigo-600">3</div>
                <h3 class="text-lg font-bold text-slate-900">Fetch user info</h3>
                <p class="mt-1 text-sm text-slate-500">Use the access token to get employee profile, position, and photo.</p>
            </div>
        </div>

        <!-- Token -->
        <div class="rounded-2xl border border-slate-200 bg-white p-6 shadow-sm transition hover:shadow-md">
            <div class="mb-4 flex items-center gap-2">
                <h2 class="text-lg font-bold text-slate-900">Get Access Token</h2>
                <span class="group relative flex h-5 w-5 cursor-help items-center justify-center rounded-full border border-slate-300 text-[10px] font-bold text-slate-400 hover:border-indigo-300 hover:text-indigo-600">?
                    <span class="absolute bottom-full left-1/2 z-20 mb-2 hidden w-60 -translate-x-1/2 rounded-lg bg-slate-800 px-3 py-2 text-xs font-medium text-white shadow-xl group-hover:block">Your app sends user email/password plus the generated client credentials.</span>
                </span>
            </div>
            <div class="flex items-center gap-3">
                <span class="rounded-lg bg-slate-900 px-2.5 py-1 text-[10px] font-extrabold uppercase tracking-wider text-white">POST</span>
                <code class="text-sm font-semibold text-slate-700">{{ $baseUrl }}/api/sso/token</code>
            </div>
            <div class="mt-4 space-y-4">
                <div class="rounded-xl bg-slate-900 p-4 text-sm text-emerald-400">{
  "client_id": "your-generated-client-id",
  "client_secret": "your-generated-client-secret",
  "grant_type": "password",
  "email": "user@telin.com",
  "password": "password"
}</div>
                <p class="text-sm text-slate-500">Response:</p>
                <div class="rounded-xl bg-slate-900 p-4 text-sm text-emerald-400">{
  "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...",
  "token_type": "Bearer",
  "expires_in": 3600
}</div>
            </div>
        </div>

        <div class="grid gap-6 lg:grid-cols-2">
            <!-- Userinfo -->
            <div class="rounded-2xl border border-slate-200 bg-white p-6 shadow-sm transition hover:shadow-md">
                <div class="mb-4 flex items-center gap-2">
                    <h2 class="text-lg font-bold text-slate-900">User Info</h2>
                    <span class="group relative flex h-5 w-5 cursor-help items-center justify-center rounded-full border border-slate-300 text-[10px] font-bold text-slate-400 hover:border-indigo-300 hover:text-indigo-600">?
                        <span class="absolute bottom-full left-1/2 z-20 mb-2 hidden w-56 -translate-x-1/2 rounded-lg bg-slate-800 px-3 py-2 text-xs font-medium text-white shadow-xl group-hover:block">Returns employee profile, positions, departments, and photo URL.</span>
                    </span>
                </div>
                <div class="flex items-center gap-3">
                    <span class="rounded-lg bg-indigo-600 px-2.5 py-1 text-[10px] font-extrabold uppercase tracking-wider text-white">GET</span>
                    <code class="text-sm font-semibold text-slate-700">{{ $baseUrl }}/api/sso/userinfo</code>
                </div>
                <div class="mt-4 rounded-xl bg-slate-900 p-4 text-sm text-emerald-400">Authorization: Bearer &lt;access_token&gt;</div>
            </div>

            <!-- Introspect -->
            <div class="rounded-2xl border border-slate-200 bg-white p-6 shadow-sm transition hover:shadow-md">
                <div class="mb-4 flex items-center gap-2">
                    <h2 class="text-lg font-bold text-slate-900">Validate Token</h2>
                    <span class="group relative flex h-5 w-5 cursor-help items-center justify-center rounded-full border border-slate-300 text-[10px] font-bold text-slate-400 hover:border-indigo-300 hover:text-indigo-600">?
                        <span class="absolute bottom-full left-1/2 z-20 mb-2 hidden w-56 -translate-x-1/2 rounded-lg bg-slate-800 px-3 py-2 text-xs font-medium text-white shadow-xl group-hover:block">Check if an access token is still active before trusting it.</span>
                    </span>
                </div>
                <div class="flex items-center gap-3">
                    <span class="rounded-lg bg-slate-900 px-2.5 py-1 text-[10px] font-extrabold uppercase tracking-wider text-white">POST</span>
                    <code class="text-sm font-semibold text-slate-700">{{ $baseUrl }}/api/sso/introspect</code>
                </div>
                <div class="mt-4 rounded-xl bg-slate-900 p-4 text-sm text-emerald-400">{
  "token": "eyJ0eXAiOiJKV1Qi..."
}</div>
            </div>
        </div>

        <!-- Code example -->
        <div class="rounded-2xl border border-slate-200 bg-white p-6 shadow-sm transition hover:shadow-md">
            <h2 class="text-lg font-bold text-slate-900">JavaScript Example</h2>
            <div class="mt-4 overflow-x-auto rounded-xl bg-slate-900 p-4 text-sm text-emerald-400">async function loginWithTelinSSO(email, password) {
  const tokenRes = await fetch('{{ $baseUrl }}/api/sso/token', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({
      client_id: 'your-client-id',
      client_secret: 'your-client-secret',
      grant_type: 'password',
      email,
      password
    })
  });

  const { access_token } = await tokenRes.json();

  const userRes = await fetch('{{ $baseUrl }}/api/sso/userinfo', {
    headers: { 'Authorization': `Bearer ${access_token}` }
  });

  return await userRes.json();
}</div>
        </div>

        <!-- Registered Apps -->
        <div class="rounded-2xl border border-slate-200 bg-white shadow-sm transition hover:shadow-md">
            <div class="flex flex-wrap items-center justify-between gap-4 border-b border-slate-100 p-6">
                <div class="flex items-center gap-2">
                    <h2 class="text-lg font-bold text-slate-900">Registered Applications</h2>
                    <span class="group relative flex h-5 w-5 cursor-help items-center justify-center rounded-full border border-slate-300 text-[10px] font-bold text-slate-400 hover:border-indigo-300 hover:text-indigo-600">?
                        <span class="absolute bottom-full left-1/2 z-20 mb-2 hidden w-56 -translate-x-1/2 rounded-lg bg-slate-800 px-3 py-2 text-xs font-medium text-white shadow-xl group-hover:block">Apps already connected to this SSO provider.</span>
                    </span>
                </div>
                <a href="{{ route('sso.createClient') }}" class="inline-flex items-center gap-1 rounded-xl bg-indigo-600 px-4 py-2 text-xs font-semibold text-white transition hover:bg-indigo-700">+ Add App</a>
            </div>
            <div class="overflow-x-auto">
                <table class="w-full">
                    <thead class="bg-slate-50">
                        <tr>
                            <th class="px-6 py-3 text-left text-xs font-bold uppercase tracking-wider text-slate-500">App Name</th>
                            <th class="px-6 py-3 text-left text-xs font-bold uppercase tracking-wider text-slate-500">Client ID</th>
                            <th class="px-6 py-3 text-left text-xs font-bold uppercase tracking-wider text-slate-500">Status</th>
                            <th class="px-6 py-3 text-left text-xs font-bold uppercase tracking-wider text-slate-500">Created</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-slate-100">
                        @forelse ($clients as $client)
                            <tr class="transition hover:bg-slate-50">
                                <td class="px-6 py-4 text-sm font-semibold text-slate-900">{{ $client->name }}</td>
                                <td class="px-6 py-4 text-xs font-mono text-slate-600">{{ $client->client_id }}</td>
                                <td class="px-6 py-4 text-sm">
                                    @if ($client->is_active)
                                        <span class="inline-flex items-center gap-1.5 rounded-full bg-emerald-100 px-2.5 py-1 text-xs font-bold text-emerald-700"><span class="h-1.5 w-1.5 rounded-full bg-emerald-500"></span> Active</span>
                                    @else
                                        <span class="inline-flex items-center gap-1.5 rounded-full bg-slate-100 px-2.5 py-1 text-xs font-bold text-slate-600"><span class="h-1.5 w-1.5 rounded-full bg-slate-400"></span> Inactive</span>
                                    @endif
                                </td>
                                <td class="px-6 py-4 text-sm text-slate-500">{{ $client->created_at?->format('Y-m-d H:i') }}</td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="4" class="px-6 py-10 text-center text-sm text-slate-500">
                                    No apps registered yet. <a href="{{ route('sso.createClient') }}" class="font-semibold text-indigo-600 hover:underline">Create your first client</a>.
                                </td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
