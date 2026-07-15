@extends('layouts.app')

@section('title', 'Employees - Telin KM')

@section('content')
    <div class="mb-6 flex items-center justify-between">
        <div>
            <h1 class="text-2xl font-semibold text-slate-900">Employees</h1>
            <p class="text-sm text-slate-500">Daftar karyawan dari tabel <code>employees</code>.</p>
        </div>
        <a href="/api/documentation" target="_blank" class="inline-flex items-center px-4 py-2 bg-indigo-600 text-white text-sm font-medium rounded-md hover:bg-indigo-700 transition">
            API Docs
        </a>
    </div>

    <div class="bg-white rounded-lg shadow overflow-hidden">
        <div class="p-6 border-b border-slate-200">
            <form method="GET" action="{{ route('employees.index') }}" class="flex items-center gap-4">
                <input
                    type="text"
                    name="search"
                    value="{{ request('search') }}"
                    placeholder="Cari nama, NIK, email, atau status..."
                    class="w-full max-w-sm px-4 py-2 border border-slate-300 rounded-md text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500"
                >
                <button type="submit" class="px-4 py-2 bg-slate-800 text-white text-sm font-medium rounded-md hover:bg-slate-700 transition">
                    Cari
                </button>
                @if (request('search'))
                    <a href="{{ route('employees.index') }}" class="text-sm text-slate-600 hover:text-slate-900">Reset</a>
                @endif
            </form>
        </div>

        <div class="overflow-x-auto">
            <table class="min-w-full divide-y divide-slate-200">
                <thead class="bg-slate-50">
                    <tr>
                        <th class="px-6 py-3 text-left text-xs font-semibold text-slate-600 uppercase tracking-wider">Photo</th>
                        <th class="px-6 py-3 text-left text-xs font-semibold text-slate-600 uppercase tracking-wider">Name</th>
                        <th class="px-6 py-3 text-left text-xs font-semibold text-slate-600 uppercase tracking-wider">NIK Telin</th>
                        <th class="px-6 py-3 text-left text-xs font-semibold text-slate-600 uppercase tracking-wider">Email</th>
                        <th class="px-6 py-3 text-left text-xs font-semibold text-slate-600 uppercase tracking-wider">Position</th>
                        <th class="px-6 py-3 text-left text-xs font-semibold text-slate-600 uppercase tracking-wider">Department</th>
                        <th class="px-6 py-3 text-left text-xs font-semibold text-slate-600 uppercase tracking-wider">Status</th>
                        <th class="px-6 py-3 text-left text-xs font-semibold text-slate-600 uppercase tracking-wider">Login Status</th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-slate-200">
                    @forelse ($employees as $employee)
                        @php
                            $firstPosition = $employee->positions->first();
                        @endphp
                        <tr class="hover:bg-slate-50 transition">
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-slate-700">
                                @if ($employee->profile_photo)
                                    <img src="{{ $employee->profile_photo }}" alt="{{ $employee->name }}" class="h-10 w-10 rounded-full object-cover border border-slate-200">
                                @else
                                    <div class="h-10 w-10 rounded-full bg-slate-200 flex items-center justify-center text-xs font-semibold text-slate-600">
                                        {{ strtoupper(substr($employee->name, 0, 1)) }}
                                    </div>
                                @endif
                            </td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-slate-900">{{ $employee->name }}</td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-slate-700">{{ $employee->nik_telin }}</td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-slate-700">{{ $employee->email }}</td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-slate-700">{{ $firstPosition?->name }}</td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-slate-700">{{ $firstPosition?->department?->name }}</td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-slate-700">{{ $employee->employee_status }}</td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-slate-700">
                                <span class="px-2 py-1 rounded-full text-xs font-medium {{ $employee->status_login === 'FITA' ? 'bg-green-100 text-green-800' : 'bg-gray-100 text-gray-800' }}">
                                    {{ $employee->status_login ?? 'NON FITA' }}
                                </span>
                            </td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="8" class="px-6 py-8 text-center text-sm text-slate-500">
                                Tidak ada data employee.
                            </td>
                        </tr>
                    @endforelse
                </tbody>
            </table>
        </div>

        <div class="px-6 py-4 border-t border-slate-200">
            {{ $employees->links() }}
        </div>
    </div>
@endsection
