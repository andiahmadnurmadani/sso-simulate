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
        'is_active',
    ];

    protected function casts(): array
    {
        return [
            'is_active' => 'boolean',
        ];
    }
}
