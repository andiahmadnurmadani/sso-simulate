<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreEmployeeRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        $employeeId = $this->route('employee')?->emp_id;

        return [
            'name' => ['nullable', 'string', 'max:45'],
            'nik_telin' => ['nullable', 'string', 'max:45', 'unique:employees,nik_telin'.($employeeId ? ",{$employeeId},emp_id" : '')],
            'nik_tg' => ['nullable', 'string', 'max:45'],
            'gender' => ['nullable', 'string', 'max:45'],
            'religion' => ['nullable', 'string', 'max:45'],
            'place_of_birth' => ['nullable', 'string', 'max:45'],
            'date_of_birth' => ['nullable', 'string', 'max:45'],
            'employee_status' => ['nullable', 'string', 'max:45'],
            'position_band' => ['nullable', 'string', 'max:45'],
            'work_location' => ['nullable', 'string', 'max:45'],
            'office_address' => ['nullable', 'string', 'max:200'],
            'city' => ['nullable', 'string', 'max:45'],
            'province' => ['nullable', 'string', 'max:45'],
            'pos_code' => ['nullable', 'string', 'max:45'],
            'telepon' => ['nullable', 'string', 'max:45'],
            'my_address' => ['nullable', 'string', 'max:200'],
            'my_city' => ['nullable', 'string', 'max:45'],
            'my_province' => ['nullable', 'string', 'max:45'],
            'my_country' => ['nullable', 'string', 'max:45'],
            'my_pos_code' => ['nullable', 'string', 'max:45'],
            'my_tlp_no' => ['nullable', 'string', 'max:45'],
            'email' => ['nullable', 'string', 'max:45'],
            'email_asli' => ['nullable', 'string', 'max:45'],
            'profile_photo' => ['nullable', 'string'],
            'password' => ['nullable', 'string', 'max:120'],
            'language' => ['nullable', 'string', 'max:45'],
            'user_status_id' => ['nullable', 'integer'],
            'auth_type_id' => ['nullable', 'integer'],
            'auth_dtm' => ['nullable', 'date_format:Y-m-d H:i:s'],
            'nonce' => ['nullable', 'string', 'max:32'],
            'token' => ['nullable', 'string', 'max:32'],
            'attempts' => ['nullable', 'integer'],
            'status_login' => ['nullable', 'string', 'max:45'],
        ];
    }
}
