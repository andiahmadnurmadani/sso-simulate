<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Directorate extends Model
{
    /** @use HasFactory<\Database\Factories\DirectorateFactory> */
    use HasFactory;

    protected $primaryKey = 'directorate_id';

    public $timestamps = true;

    protected $fillable = [
        'name',
        'create_dtm',
        'update_dtm',
    ];

    protected function casts(): array
    {
        return [
            'create_dtm' => 'datetime',
            'update_dtm' => 'datetime',
        ];
    }

    public function departments(): HasMany
    {
        return $this->hasMany(Department::class, 'directorate_id', 'directorate_id');
    }
}
