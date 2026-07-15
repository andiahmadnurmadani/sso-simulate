<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\OAuthClient>
 */
class OAuthClientFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'client_id' => 'client-'.Str::random(8),
            'client_secret' => hash('sha256', Str::random(32)),
            'name' => fake()->company(),
            'allowed_redirect_uris' => null,
            'is_active' => true,
        ];
    }
}
