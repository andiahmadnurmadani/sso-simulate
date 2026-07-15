<?php

namespace Database\Factories;

use App\Models\Employee;
use App\Models\Position;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\EmployeePosition>
 */
class EmployeePositionFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'emp_id' => Employee::factory(),
            'pos_id' => Position::factory(),
            'emp_id_atasan' => null,
            'pos_id_atasan' => null,
        ];
    }
}
