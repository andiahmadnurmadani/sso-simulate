<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Employee>
 */
class EmployeeFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => fake()->name(),
            'nik_telin' => fake()->unique()->numerify('######'),
            'nik_tg' => fake()->numerify('######'),
            'gender' => fake()->randomElement(['MALE', 'FEMALE']),
            'religion' => fake()->randomElement(['ISLAM', 'KRISTEN', 'KATOLIK', 'HINDU', 'BUDHA']),
            'place_of_birth' => fake()->city(),
            'date_of_birth' => fake()->date('m/d/Y'),
            'employee_status' => fake()->randomElement(['KARYAWAN TETAP', 'KARYAWAN KONTRAK']),
            'position_band' => fake()->randomElement(['I', 'II', 'III', 'IV', 'V']),
            'work_location' => fake()->city(),
            'office_address' => fake()->address(),
            'city' => fake()->city(),
            'province' => fake()->state(),
            'pos_code' => fake()->postcode(),
            'telepon' => fake()->phoneNumber(),
            'my_address' => fake()->address(),
            'my_city' => fake()->city(),
            'my_province' => fake()->state(),
            'my_country' => 'INDONESIA',
            'my_pos_code' => fake()->postcode(),
            'my_tlp_no' => fake()->phoneNumber(),
            'email' => fake()->unique()->safeEmail(),
            'email_asli' => fake()->safeEmail(),
            'profile_photo' => fake()->boolean(80) ? 'https://ui-avatars.com/api/?name='.urlencode(fake()->name()).'&background=random' : null,
            'password' => bcrypt('password'),
            'language' => 'id',
            'user_status_id' => 3,
            'auth_type_id' => 1,
            'auth_dtm' => fake()->dateTime(),
            'nonce' => null,
            'token' => null,
            'attempts' => 0,
            'status_login' => fake()->randomElement(['FITA', 'NON FITA']),
        ];
    }
}
