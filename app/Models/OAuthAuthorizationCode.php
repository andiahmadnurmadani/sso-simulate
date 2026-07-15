<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OAuthAuthorizationCode extends Model
{
    /** @use HasFactory<\Database\Factories\OAuthAuthorizationCodeFactory> */
    use HasFactory;

    protected $table = 'oauth_authorization_codes';

    public $timestamps = true;

    protected $fillable = [
        'client_id',
        'employee_id',
        'code',
        'redirect_uri',
        'expires_at',
        'used',
    ];

    protected function casts(): array
    {
        return [
            'expires_at' => 'datetime',
            'used' => 'boolean',
        ];
    }
}
