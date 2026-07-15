<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\View\View;

class EmployeeViewController extends Controller
{
    /**
     * Display a listing of employees in a table view.
     */
    public function index(Request $request): View
    {
        try {
            $query = Employee::query()->with(['positions.department.directorate']);

            if ($request->filled('search')) {
                $search = $request->input('search');
                $query->where(function ($q) use ($search): void {
                    $q->where('name', 'like', "%{$search}%")
                        ->orWhere('nik_telin', 'like', "%{$search}%")
                        ->orWhere('email', 'like', "%{$search}%")
                        ->orWhere('status_login', 'like', "%{$search}%");
                });
            }

            $employees = $query->paginate(15);
        } catch (\Throwable $e) {
            $employees = new LengthAwarePaginator([], 0, 15);
            $employees->setPath($request->url());
        }

        return view('employees.index', compact('employees'));
    }
}
