<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Department extends Model
{
    /** @use HasFactory<\Database\Factories\DepartmentFactory> */
    use HasFactory;

    protected $primaryKey = 'department_id';

    public $timestamps = true;

    protected $fillable = [
        'directorate_id',
        'parent',
        'code',
        'num_code',
        'name',
        'description',
        'course_model',
    ];

    public function directorate(): BelongsTo
    {
        return $this->belongsTo(Directorate::class, 'directorate_id', 'directorate_id');
    }

    public function positions(): HasMany
    {
        return $this->hasMany(Position::class, 'department_id', 'department_id');
    }
}
