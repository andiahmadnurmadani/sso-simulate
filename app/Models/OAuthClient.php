<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OAuthClient extends Model
{
    /** @use HasFactory<\Database\Factories\OAuthClientFactory> */
    use HasFactory;

    protected $table = 'oauth_clients';

    public $timestamps = true;

    protected $fillable = [
        'client_id',
        'client_secret',
        'name',
        'allowed_redirect_uris',
        'grant_types',
        'is_active',
    ];

    protected function casts(): array
    {
        return [
            'is_active' => 'boolean',
        ];
    }

    /**
     * Check if the given redirect URI is registered for this client.
     */
    public function validatesRedirectUri(string $redirectUri): bool
    {
        if (empty($this->allowed_redirect_uris)) {
            return false;
        }

        $allowed = array_map('trim', explode(',', $this->allowed_redirect_uris));

        return in_array($redirectUri, $allowed, true);
    }

    /**
     * Get allowed grant types as array.
     */
    public function allowedGrantTypes(): array
    {
        if (empty($this->grant_types)) {
            return ['authorization_code'];
        }

        return array_map('trim', explode(',', $this->grant_types));
    }

    /**
     * Check if the client supports a grant type.
     */
    public function supportsGrantType(string $grantType): bool
    {
        return in_array($grantType, $this->allowedGrantTypes(), true);
    }
}
