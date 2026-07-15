<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Employee extends Model
{
    /** @use HasFactory<\Database\Factories\EmployeeFactory> */
    use HasFactory;

    protected $table = 'employees';

    protected $primaryKey = 'emp_id';

    public $timestamps = true;

    protected $fillable = [
        'name',
        'nik_telin',
        'nik_tg',
        'gender',
        'religion',
        'place_of_birth',
        'date_of_birth',
        'employee_status',
        'position_band',
        'work_location',
        'office_address',
        'city',
        'province',
        'pos_code',
        'telepon',
        'my_address',
        'my_city',
        'my_province',
        'my_country',
        'my_pos_code',
        'my_tlp_no',
        'email',
        'email_asli',
        'profile_photo',
        'password',
        'language',
        'user_status_id',
        'auth_type_id',
        'auth_dtm',
        'nonce',
        'token',
        'attempts',
        'status_login',
    ];

    protected function casts(): array
    {
        return [
            'auth_dtm' => 'datetime',
        ];
    }

    public function employeePositions(): HasMany
    {
        return $this->hasMany(EmployeePosition::class, 'emp_id', 'emp_id');
    }

    public function positions(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Position::class, 'employee_positions', 'emp_id', 'pos_id', 'emp_id', 'pos_id')
            ->withPivot('emp_id_atasan', 'pos_id_atasan');
    }
}
