<?php

namespace Database\Seeders;

use App\Models\Department;
use App\Models\Directorate;
use App\Models\Employee;
use App\Models\EmployeePosition;
use App\Models\OAuthClient;
use App\Models\Position;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class EmployeeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $directorates = Directorate::factory()->count(5)->create();
        $departments = Department::factory()->count(10)->create([
            'directorate_id' => fn () => $directorates->random()->directorate_id,
        ]);
        $positions = Position::factory()->count(15)->create([
            'department_id' => fn () => $departments->random()->department_id,
        ]);

        Employee::factory()->count(500)->create();
        $employees = Employee::pluck('emp_id');
        $positionIds = $positions->pluck('pos_id');

        $employeePositions = [];
        $now = now();

        foreach ($employees as $empId) {
            $employeePositions[] = [
                'emp_id' => $empId,
                'pos_id' => $positionIds->random(),
                'emp_id_atasan' => $employees->random(),
                'pos_id_atasan' => $positionIds->random(),
                'created_at' => $now,
                'updated_at' => $now,
            ];
        }

        EmployeePosition::insert($employeePositions);

        OAuthClient::create([
            'client_id' => 'default-client',
            'client_secret' => hash('sha256', 'default-secret'),
            'name' => 'Default SSO Client',
            'allowed_redirect_uris' => null,
            'is_active' => true,
        ]);
    }
}
