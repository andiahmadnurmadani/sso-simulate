<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class EmployeeResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'emp_id' => $this->emp_id,
            'name' => $this->name,
            'nik_telin' => $this->nik_telin,
            'nik_tg' => $this->nik_tg,
            'gender' => $this->gender,
            'religion' => $this->religion,
            'place_of_birth' => $this->place_of_birth,
            'date_of_birth' => $this->date_of_birth,
            'employee_status' => $this->employee_status,
            'position_band' => $this->position_band,
            'work_location' => $this->work_location,
            'office_address' => $this->office_address,
            'city' => $this->city,
            'province' => $this->province,
            'pos_code' => $this->pos_code,
            'telepon' => $this->telepon,
            'my_address' => $this->my_address,
            'my_city' => $this->my_city,
            'my_province' => $this->my_province,
            'my_country' => $this->my_country,
            'my_pos_code' => $this->my_pos_code,
            'my_tlp_no' => $this->my_tlp_no,
            'email' => $this->email,
            'email_asli' => $this->email_asli,
            'profile_photo' => $this->profile_photo,
            'language' => $this->language,
            'user_status_id' => $this->user_status_id,
            'auth_type_id' => $this->auth_type_id,
            'auth_dtm' => $this->auth_dtm?->format('Y-m-d H:i:s'),
            'nonce' => $this->nonce,
            'token' => $this->token,
            'attempts' => $this->attempts,
            'status_login' => $this->status_login,
            'positions' => PositionResource::collection($this->whenLoaded('positions')),
            'created_at' => $this->created_at?->format('Y-m-d H:i:s'),
            'updated_at' => $this->updated_at?->format('Y-m-d H:i:s'),
        ];
    }
}
