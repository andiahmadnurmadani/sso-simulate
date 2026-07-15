@extends('layouts.app')

@section('title', 'Data Explorer - Telin KM')

@section('content')
    <div class="mx-auto max-w-7xl space-y-6">
        <div>
            <h1 class="text-3xl font-extrabold tracking-tight text-slate-900">Data Explorer</h1>
            <p class="mt-1 text-slate-500">Browse all application tables and records.</p>
        </div>

        <!-- Table selector -->
        <div class="flex flex-wrap gap-2">
            @foreach ($tables as $table)
                <a href="{{ route('data.index', ['table' => $table]) }}" class="rounded-xl px-4 py-2 text-sm font-semibold transition {{ $activeTable === $table ? 'bg-indigo-600 text-white shadow-md' : 'border border-slate-300 bg-white text-slate-700 hover:bg-slate-50' }}">
                    {{ Str::headline($table) }}
                </a>
            @endforeach
        </div>

        <!-- Search -->
        <form method="GET" action="{{ route('data.index') }}" class="flex max-w-md gap-2">
            <input type="hidden" name="table" value="{{ $activeTable }}">
            <input type="text" name="search" value="{{ request('search') }}" placeholder="Search in {{ Str::headline($activeTable) }}..." class="w-full rounded-xl border border-slate-300 px-4 py-2.5 text-sm transition focus:border-indigo-500 focus:outline-none focus:ring-4 focus:ring-indigo-500/10">
            <button type="submit" class="rounded-xl bg-indigo-600 px-4 py-2.5 text-sm font-semibold text-white transition hover:bg-indigo-700">Search</button>
        </form>

        <!-- Records table -->
        <div class="overflow-hidden rounded-2xl border border-slate-200 bg-white shadow-sm">
            <div class="border-b border-slate-100 px-6 py-4">
                <h2 class="text-lg font-bold text-slate-900">{{ Str::headline($activeTable) }}</h2>
                <p class="text-xs text-slate-500">{{ $records->total() }} records found</p>
            </div>
            <div class="overflow-x-auto">
                <table class="w-full">
                    <thead class="bg-slate-50">
                        <tr>
                            @foreach ($records->first()?->getAttributes() ?? [] as $key => $value)
                                <th class="px-6 py-3 text-left text-xs font-bold uppercase tracking-wider text-slate-500">{{ $key }}</th>
                            @endforeach
                            @if ($records->isEmpty())
                                <th class="px-6 py-3 text-left text-xs font-bold uppercase tracking-wider text-slate-500">No records</th>
                            @endif
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-slate-100">
                        @forelse ($records as $record)
                            <tr class="transition hover:bg-slate-50">
                                @foreach ($record->getAttributes() as $value)
                                    <td class="px-6 py-3 text-xs text-slate-700">
                                        @if (is_string($value) && strlen($value) > 80)
                                            <span class="font-mono">{{ substr($value, 0, 80) }}...</span>
                                        @else
                                            <span class="font-mono">{{ $value ?? '-' }}</span>
                                        @endif
                                    </td>
                                @endforeach
                            </tr>
                        @empty
                            <tr>
                                <td colspan="100" class="px-6 py-12 text-center text-sm text-slate-500">
                                    No records found in this table.
                                </td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
            <div class="border-t border-slate-100 px-6 py-4">
                {{ $records->links() }}
            </div>
        </div>
    </div>
@endsection
