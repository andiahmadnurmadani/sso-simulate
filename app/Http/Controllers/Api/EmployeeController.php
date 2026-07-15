<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreEmployeeRequest;
use App\Http\Resources\EmployeeResource;
use App\Models\Employee;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;
use Illuminate\Http\Response;
use OpenApi\Attributes as OA;

#[OA\Info(version: '1.0.0', title: 'Employee API')]
#[OA\Server(url: '/api', description: 'API Server')]
class EmployeeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    #[OA\Get(
        path: '/employees',
        operationId: 'employeesIndex',
        description: 'Mengambil daftar employee',
        tags: ['Employees'],
        parameters: [
            new OA\Parameter(name: 'per_page', in: 'query', description: 'Jumlah item per halaman', required: false, schema: new OA\Schema(type: 'integer', default: 15)),
            new OA\Parameter(name: 'search', in: 'query', description: 'Filter berdasarkan name, nik_telin, email, atau status_login', required: false, schema: new OA\Schema(type: 'string')),
        ],
        responses: [
            new OA\Response(response: 200, description: 'Daftar employee', content: new OA\JsonContent(type: 'array', items: new OA\Items(ref: '#/components/schemas/Employee'))),
        ]
    )]
    public function index(Request $request): AnonymousResourceCollection
    {
        $query = Employee::query()->with('positions');

        if ($request->filled('search')) {
            $search = $request->input('search');
            $query->where(function ($q) use ($search): void {
                $q->where('name', 'like', "%{$search}%")
                    ->orWhere('nik_telin', 'like', "%{$search}%")
                    ->orWhere('email', 'like', "%{$search}%")
                    ->orWhere('status_login', 'like', "%{$search}%");
            });
        }

        return EmployeeResource::collection($query->paginate($request->input('per_page', 15)));
    }

    /**
     * Store a newly created resource in storage.
     */
    #[OA\Post(
        path: '/employees',
        operationId: 'employeesStore',
        description: 'Membuat employee baru',
        tags: ['Employees'],
        requestBody: new OA\RequestBody(required: true, content: new OA\JsonContent(ref: '#/components/schemas/EmployeeRequest')),
        responses: [
            new OA\Response(response: 201, description: 'Employee berhasil dibuat', content: new OA\JsonContent(ref: '#/components/schemas/Employee')),
            new OA\Response(response: 422, description: 'Validasi gagal'),
        ]
    )]
    public function store(StoreEmployeeRequest $request): EmployeeResource
    {
        $employee = Employee::create($request->validated());

        return new EmployeeResource($employee);
    }

    /**
     * Display the specified resource.
     */
    #[OA\Get(
        path: '/employees/{emp_id}',
        operationId: 'employeesShow',
        description: 'Mengambil detail employee',
        tags: ['Employees'],
        parameters: [
            new OA\Parameter(name: 'emp_id', in: 'path', description: 'ID employee', required: true, schema: new OA\Schema(type: 'integer')),
        ],
        responses: [
            new OA\Response(response: 200, description: 'Detail employee', content: new OA\JsonContent(ref: '#/components/schemas/Employee')),
            new OA\Response(response: 404, description: 'Employee tidak ditemukan'),
        ]
    )]
    public function show(Employee $employee): EmployeeResource
    {
        return new EmployeeResource($employee->load('positions'));
    }

    /**
     * Update the specified resource in storage.
     */
    #[OA\Put(
        path: '/employees/{emp_id}',
        operationId: 'employeesUpdate',
        description: 'Memperbarui data employee',
        tags: ['Employees'],
        parameters: [
            new OA\Parameter(name: 'emp_id', in: 'path', description: 'ID employee', required: true, schema: new OA\Schema(type: 'integer')),
        ],
        requestBody: new OA\RequestBody(required: true, content: new OA\JsonContent(ref: '#/components/schemas/EmployeeRequest')),
        responses: [
            new OA\Response(response: 200, description: 'Employee berhasil diperbarui', content: new OA\JsonContent(ref: '#/components/schemas/Employee')),
            new OA\Response(response: 404, description: 'Employee tidak ditemukan'),
            new OA\Response(response: 422, description: 'Validasi gagal'),
        ]
    )]
    public function update(StoreEmployeeRequest $request, Employee $employee): EmployeeResource
    {
        $employee->update($request->validated());

        return new EmployeeResource($employee->load('positions'));
    }

    /**
     * Remove the specified resource from storage.
     */
    #[OA\Delete(
        path: '/employees/{emp_id}',
        operationId: 'employeesDestroy',
        description: 'Menghapus employee',
        tags: ['Employees'],
        parameters: [
            new OA\Parameter(name: 'emp_id', in: 'path', description: 'ID employee', required: true, schema: new OA\Schema(type: 'integer')),
        ],
        responses: [
            new OA\Response(response: 204, description: 'Employee berhasil dihapus'),
            new OA\Response(response: 404, description: 'Employee tidak ditemukan'),
        ]
    )]
    public function destroy(Employee $employee): JsonResponse
    {
        $employee->delete();

        return response()->json(null, Response::HTTP_NO_CONTENT);
    }
}

#[OA\Schema(
    schema: 'Employee',
    description: 'Model Employee',
    properties: [
        new OA\Property(property: 'emp_id', type: 'integer'),
        new OA\Property(property: 'name', type: 'string', nullable: true),
        new OA\Property(property: 'nik_telin', type: 'string', nullable: true),
        new OA\Property(property: 'nik_tg', type: 'string', nullable: true),
        new OA\Property(property: 'gender', type: 'string', nullable: true),
        new OA\Property(property: 'religion', type: 'string', nullable: true),
        new OA\Property(property: 'place_of_birth', type: 'string', nullable: true),
        new OA\Property(property: 'date_of_birth', type: 'string', nullable: true),
        new OA\Property(property: 'employee_status', type: 'string', nullable: true),
        new OA\Property(property: 'position_band', type: 'string', nullable: true),
        new OA\Property(property: 'work_location', type: 'string', nullable: true),
        new OA\Property(property: 'office_address', type: 'string', nullable: true),
        new OA\Property(property: 'city', type: 'string', nullable: true),
        new OA\Property(property: 'province', type: 'string', nullable: true),
        new OA\Property(property: 'pos_code', type: 'string', nullable: true),
        new OA\Property(property: 'telepon', type: 'string', nullable: true),
        new OA\Property(property: 'my_address', type: 'string', nullable: true),
        new OA\Property(property: 'my_city', type: 'string', nullable: true),
        new OA\Property(property: 'my_province', type: 'string', nullable: true),
        new OA\Property(property: 'my_country', type: 'string', nullable: true),
        new OA\Property(property: 'my_pos_code', type: 'string', nullable: true),
        new OA\Property(property: 'my_tlp_no', type: 'string', nullable: true),
        new OA\Property(property: 'email', type: 'string', nullable: true),
        new OA\Property(property: 'email_asli', type: 'string', nullable: true),
        new OA\Property(property: 'profile_photo', type: 'string', nullable: true),
        new OA\Property(property: 'language', type: 'string', nullable: true),
        new OA\Property(property: 'user_status_id', type: 'integer', nullable: true),
        new OA\Property(property: 'auth_type_id', type: 'integer', nullable: true),
        new OA\Property(property: 'auth_dtm', type: 'string', format: 'date-time', nullable: true),
        new OA\Property(property: 'nonce', type: 'string', nullable: true),
        new OA\Property(property: 'token', type: 'string', nullable: true),
        new OA\Property(property: 'attempts', type: 'integer', nullable: true),
        new OA\Property(property: 'status_login', type: 'string', nullable: true),
        new OA\Property(property: 'positions', type: 'array', items: new OA\Items(ref: '#/components/schemas/Position'), nullable: true),
        new OA\Property(property: 'created_at', type: 'string', format: 'date-time', nullable: true),
        new OA\Property(property: 'updated_at', type: 'string', format: 'date-time', nullable: true),
    ]
)]
#[OA\Schema(
    schema: 'EmployeeRequest',
    description: 'Payload untuk membuat/memperbarui Employee',
    properties: [
        new OA\Property(property: 'name', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'nik_telin', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'nik_tg', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'gender', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'religion', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'place_of_birth', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'date_of_birth', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'employee_status', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'position_band', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'work_location', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'office_address', type: 'string', maxLength: 200, nullable: true),
        new OA\Property(property: 'city', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'province', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'pos_code', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'telepon', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'my_address', type: 'string', maxLength: 200, nullable: true),
        new OA\Property(property: 'my_city', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'my_province', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'my_country', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'my_pos_code', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'my_tlp_no', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'email', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'email_asli', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'profile_photo', type: 'string', nullable: true),
        new OA\Property(property: 'password', type: 'string', maxLength: 120, nullable: true),
        new OA\Property(property: 'language', type: 'string', maxLength: 45, nullable: true),
        new OA\Property(property: 'user_status_id', type: 'integer', nullable: true),
        new OA\Property(property: 'auth_type_id', type: 'integer', nullable: true),
        new OA\Property(property: 'auth_dtm', type: 'string', format: 'date-time', nullable: true),
        new OA\Property(property: 'nonce', type: 'string', maxLength: 32, nullable: true),
        new OA\Property(property: 'token', type: 'string', maxLength: 32, nullable: true),
        new OA\Property(property: 'attempts', type: 'integer', nullable: true),
        new OA\Property(property: 'status_login', type: 'string', maxLength: 45, nullable: true),
    ]
)]
#[OA\Schema(
    schema: 'Position',
    description: 'Model Position',
    properties: [
        new OA\Property(property: 'pos_id', type: 'integer'),
        new OA\Property(property: 'name', type: 'string', nullable: true),
        new OA\Property(property: 'department', type: 'object', nullable: true),
        new OA\Property(property: 'pivot', type: 'object', nullable: true),
    ]
)]
class EmployeeSchemas
{
}
