<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Department>
 */
class DepartmentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'directorate_id' => null,
            'parent' => null,
            'code' => fake()->unique()->bothify('DEPT-####'),
            'num_code' => fake()->numerify('####'),
            'name' => fake()->randomElement([
                'Corporate Strategy',
                'Internal Audit',
                'Legal & Compliance',
                'Global Business Operation',
                'Voice & Mobility Sales',
                'Carrier Enterprise Sales',
                'Marketing & Business Intelligence',
                'Global Network Operation',
                'Product Management',
            ]),
            'description' => fake()->sentence(),
            'course_model' => fake()->randomElement(['A', 'B']),
        ];
    }
}
