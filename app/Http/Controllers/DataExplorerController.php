<?php

namespace App\Http\Controllers;

use App\Models\Department;
use App\Models\Directorate;
use App\Models\Employee;
use App\Models\EmployeePosition;
use App\Models\OAuthClient;
use App\Models\Position;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\View\View;

class DataExplorerController extends Controller
{
    private array $tables = [
        'employees' => Employee::class,
        'departments' => Department::class,
        'directorates' => Directorate::class,
        'positions' => Position::class,
        'employee_positions' => EmployeePosition::class,
        'oauth_clients' => OAuthClient::class,
        'users' => User::class,
    ];

    public function index(Request $request): View
    {
        $table = $request->get('table', 'employees');
        $modelClass = $this->tables[$table] ?? Employee::class;

        $records = $modelClass::query()
            ->when($request->filled('search'), function ($query) use ($request, $modelClass) {
                $search = $request->get('search');
                $query->where(function ($q) use ($search, $modelClass) {
                    foreach ((new $modelClass)->getFillable() as $column) {
                        $q->orWhere($column, 'like', "%{$search}%");
                    }
                });
            })
            ->paginate(25)
            ->withQueryString();

        return view('data.index', [
            'tables' => array_keys($this->tables),
            'activeTable' => $table,
            'records' => $records,
        ]);
    }
}
