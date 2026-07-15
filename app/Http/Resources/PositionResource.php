<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class PositionResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'pos_id' => $this->pos_id,
            'name' => $this->name,
            'department' => $this->whenLoaded('department', function () {
                return [
                    'department_id' => $this->department->department_id,
                    'code' => $this->department->code,
                    'name' => $this->department->name,
                    'directorate' => $this->department->directorate?->name,
                ];
            }),
            'pivot' => $this->when($this->pivot, function () {
                return [
                    'emp_id_atasan' => $this->pivot->emp_id_atasan,
                    'pos_id_atasan' => $this->pivot->pos_id_atasan,
                ];
            }),
        ];
    }
}
