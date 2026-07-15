@extends('layouts.app')

@section('title', ($client ? 'Edit' : 'Create') . ' OAuth Client - Telin KM')

@section('content')
    <div class="mx-auto max-w-2xl space-y-6">
        <div>
            <h1 class="text-3xl font-extrabold tracking-tight text-slate-900">{{ $client ? 'Edit Application' : 'Create Application' }}</h1>
            <p class="mt-1 text-slate-500">{{ $client ? 'Update registered SSO application.' : 'Register a new app. Client ID and Secret will be generated automatically.' }}</p>
        </div>

        @if ($errors->any())
            <div class="rounded-xl border border-red-200 bg-red-50 px-4 py-3 text-sm text-red-800">
                <ul class="list-inside list-disc">
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        <div class="rounded-2xl border border-slate-200 bg-white p-6 shadow-sm sm:p-8">
            <form method="POST" action="{{ $client ? route('sso.updateClient', $client) : route('sso.storeClient') }}" class="space-y-6">
                @csrf
                @if ($client)
                    @method('PUT')
                @endif

                <div>
                    <label for="name" class="mb-1 block text-sm font-bold text-slate-700">Application Name <span class="text-red-500">*</span></label>
                    <input type="text" id="name" name="name" value="{{ old('name', $client?->name) }}" required placeholder="e.g. HRIS, ERP, Portal" class="w-full rounded-xl border border-slate-300 px-4 py-2.5 text-sm transition focus:border-indigo-500 focus:outline-none focus:ring-4 focus:ring-indigo-500/10">
                    @error('name')<p class="mt-1 text-xs text-red-600">{{ $message }}</p>@enderror
                </div>

                @if ($client)
                    <div class="grid gap-4 sm:grid-cols-2">
                        <div>
                            <label class="mb-1 block text-sm font-bold text-slate-700">Client ID</label>
                            <div class="flex items-center gap-2">
                                <input type="text" id="edit-client-id" value="{{ $client->client_id }}" disabled class="w-full rounded-xl border border-slate-200 bg-slate-100 px-4 py-2.5 text-sm font-mono text-slate-600">
                                <button type="button" onclick="copyFormValue('edit-client-id', this)" class="shrink-0 rounded-lg border border-slate-300 bg-white px-3 py-2 text-xs font-bold text-slate-700 transition hover:bg-slate-50">Copy</button>
                            </div>
                            <p class="mt-1 text-xs text-slate-400">Client ID cannot be changed.</p>
                        </div>
                        <div>
                            <label class="mb-1 block text-sm font-bold text-slate-700">Client Secret</label>
                            <div class="flex items-center gap-2">
                                <input type="text" id="edit-client-secret" value="{{ $client->client_secret }}" disabled class="w-full rounded-xl border border-slate-200 bg-slate-100 px-4 py-2.5 text-sm font-mono text-slate-600">
                                <button type="button" onclick="copyFormValue('edit-client-secret', this)" class="shrink-0 rounded-lg border border-slate-300 bg-white px-3 py-2 text-xs font-bold text-slate-700 transition hover:bg-slate-50">Copy</button>
                            </div>
                            <p class="mt-1 text-xs text-slate-400">Keep this secret safe.</p>
                        </div>
                    </div>
                @else
                    <div class="rounded-xl border border-indigo-100 bg-indigo-50 p-5">
                        <h3 class="mb-2 text-sm font-bold text-indigo-900">Credentials will be generated</h3>
                        <p class="text-xs text-indigo-700/80">After saving, you will see the real Client ID and Client Secret on the next page. Use that page to copy the credentials into your app.</p>
                    </div>
                @endif

                <div>
                    <label for="allowed_redirect_uris" class="mb-1 block text-sm font-bold text-slate-700">
                        Redirect URIs
                        <span class="group relative ml-1 inline-flex h-4 w-4 cursor-help items-center justify-center rounded-full border border-slate-300 text-[9px] font-bold text-slate-400 hover:border-indigo-300 hover:text-indigo-600">?
                            <span class="absolute bottom-full left-1/2 z-20 mb-2 hidden w-56 -translate-x-1/2 rounded-lg bg-slate-800 px-3 py-2 text-left text-xs font-medium text-white shadow-xl group-hover:block">Callback URL of your app after login. Separate multiple URLs with commas.</span>
                        </span>
                    </label>
                    <input type="text" id="allowed_redirect_uris" name="allowed_redirect_uris" value="{{ old('allowed_redirect_uris', $client?->allowed_redirect_uris) }}" placeholder="https://your-app.com/callback" class="w-full rounded-xl border border-slate-300 px-4 py-2.5 text-sm transition focus:border-indigo-500 focus:outline-none focus:ring-4 focus:ring-indigo-500/10">
                    @error('allowed_redirect_uris')<p class="mt-1 text-xs text-red-600">{{ $message }}</p>@enderror
                </div>

                <div class="flex items-center gap-3">
                    <input type="hidden" name="is_active" value="0">
                    <input type="checkbox" id="is_active" name="is_active" value="1" {{ old('is_active', $client?->is_active ?? true) ? 'checked' : '' }} class="h-4 w-4 rounded border-slate-300 text-indigo-600 focus:ring-indigo-500">
                    <label for="is_active" class="text-sm font-semibold text-slate-700">Active</label>
                </div>

                <div class="flex items-center gap-3 border-t border-slate-100 pt-6">
                    <button type="submit" class="inline-flex items-center gap-2 rounded-xl bg-indigo-600 px-5 py-2.5 text-sm font-semibold text-white shadow-lg shadow-indigo-200 transition hover:bg-indigo-700">{{ $client ? 'Save Changes' : 'Generate Credentials' }}</button>
                    <a href="{{ route('sso.clients') }}" class="inline-flex items-center gap-2 rounded-xl border border-slate-300 bg-white px-5 py-2.5 text-sm font-semibold text-slate-700 transition hover:bg-slate-50">Cancel</a>
                </div>
            </form>
        </div>
    </div>

    <script>
        function copyFormValue(inputId, btn) {
            const input = document.getElementById(inputId);
            navigator.clipboard.writeText(input.value).then(() => {
                const original = btn.textContent;
                btn.textContent = 'Copied!';
                setTimeout(() => btn.textContent = original, 1500);
            });
        }
    </script>
@endsection
