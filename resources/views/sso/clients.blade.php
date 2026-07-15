@extends('layouts.app')

@section('title', 'OAuth Clients - Telin KM')

@section('content')
    <div class="mx-auto max-w-7xl space-y-6">
        <div class="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
            <div>
                <h1 class="text-3xl font-extrabold tracking-tight text-slate-900">OAuth Clients</h1>
                <p class="mt-1 text-slate-500">Manage applications connected to Telin KM SSO.</p>
            </div>
            <div class="flex items-center gap-3">
                <a href="{{ route('sso.createClient') }}" class="inline-flex items-center gap-2 rounded-xl bg-indigo-600 px-4 py-2.5 text-sm font-semibold text-white shadow-lg shadow-indigo-200 transition hover:bg-indigo-700">+ New Client</a>
                <a href="{{ route('developer.sso') }}" class="inline-flex items-center gap-2 rounded-xl border border-slate-300 bg-white px-4 py-2.5 text-sm font-semibold text-slate-700 transition hover:bg-slate-50">Setup</a>
            </div>
        </div>

        @if (session('success'))
            <div class="rounded-xl border border-emerald-200 bg-emerald-50 px-4 py-3 text-sm font-medium text-emerald-800">
                {{ session('success') }}
            </div>
        @endif

        <div class="overflow-hidden rounded-2xl border border-slate-200 bg-white shadow-sm">
            <div class="overflow-x-auto">
                <table class="w-full">
                    <thead class="bg-slate-50">
                        <tr>
                            <th class="px-6 py-3 text-left text-xs font-bold uppercase tracking-wider text-slate-500">App Name</th>
                            <th class="px-6 py-3 text-left text-xs font-bold uppercase tracking-wider text-slate-500">Client ID</th>
                            <th class="px-6 py-3 text-left text-xs font-bold uppercase tracking-wider text-slate-500">Client Secret</th>
                            <th class="px-6 py-3 text-left text-xs font-bold uppercase tracking-wider text-slate-500">Redirect URIs</th>
                            <th class="px-6 py-3 text-left text-xs font-bold uppercase tracking-wider text-slate-500">Grant Types</th>
                            <th class="px-6 py-3 text-left text-xs font-bold uppercase tracking-wider text-slate-500">Status</th>
                            <th class="px-6 py-3 text-left text-xs font-bold uppercase tracking-wider text-slate-500">Actions</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-slate-100">
                        @forelse ($clients as $client)
                            <tr class="transition hover:bg-slate-50">
                                <td class="px-6 py-4 text-sm font-bold text-slate-900">{{ $client->name }}</td>
                                <td class="px-6 py-4 text-xs font-mono text-slate-600">{{ $client->client_id }}</td>
                                <td class="px-6 py-4 text-xs font-mono text-slate-600">
                                    <span class="group relative cursor-help border-b border-dashed border-slate-400">
                                        {{ substr($client->client_secret, 0, 16) }}...
                                        <span class="absolute bottom-full left-1/2 z-20 mb-2 hidden w-52 -translate-x-1/2 rounded-lg bg-slate-800 px-3 py-2 text-xs font-medium text-white shadow-xl group-hover:block">Secret is hidden. Edit client to view full secret.</span>
                                    </span>
                                </td>
                                <td class="px-6 py-4 text-sm text-slate-600">{{ $client->allowed_redirect_uris ?? '-' }}</td>
                                <td class="px-6 py-4 text-sm text-slate-600">{{ $client->grant_types ?? 'authorization_code' }}</td>
                                <td class="px-6 py-4 text-sm">
                                    @if ($client->is_active)
                                        <span class="inline-flex items-center gap-1.5 rounded-full bg-emerald-100 px-2.5 py-1 text-xs font-bold text-emerald-700"><span class="h-1.5 w-1.5 rounded-full bg-emerald-500"></span> Active</span>
                                    @else
                                        <span class="inline-flex items-center gap-1.5 rounded-full bg-slate-100 px-2.5 py-1 text-xs font-bold text-slate-600"><span class="h-1.5 w-1.5 rounded-full bg-slate-400"></span> Inactive</span>
                                    @endif
                                </td>
                                <td class="px-6 py-4 text-sm">
                                    <div class="flex items-center gap-2">
                                        <a href="{{ route('sso.editClient', $client) }}" class="rounded-lg border border-slate-300 bg-white px-3 py-1.5 text-xs font-semibold text-slate-700 transition hover:bg-slate-50">Edit</a>
                                        <form method="POST" action="{{ route('sso.deleteClient', $client) }}" class="inline" onsubmit="return confirm('Delete this client?')">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="rounded-lg bg-red-600 px-3 py-1.5 text-xs font-semibold text-white transition hover:bg-red-700">Delete</button>
                                        </form>
                                    </div>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="7" class="px-6 py-12 text-center text-sm text-slate-500">
                                    No OAuth clients yet. <a href="{{ route('sso.createClient') }}" class="font-semibold text-indigo-600 hover:underline">Create one</a>.
                                </td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
            <div class="border-t border-slate-100 px-6 py-4">
                {{ $clients->links() }}
            </div>
        </div>
    </div>
@endsection
