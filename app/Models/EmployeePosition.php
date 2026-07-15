<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class EmployeePosition extends Model
{
    /** @use HasFactory<\Database\Factories\EmployeePositionFactory> */
    use HasFactory;

    protected $primaryKey = 'ep_id';

    public $timestamps = true;

    protected $fillable = [
        'emp_id',
        'pos_id',
        'emp_id_atasan',
        'pos_id_atasan',
    ];

    public function employee(): BelongsTo
    {
        return $this->belongsTo(Employee::class, 'emp_id', 'emp_id');
    }

    public function position(): BelongsTo
    {
        return $this->belongsTo(Position::class, 'pos_id', 'pos_id');
    }
}
