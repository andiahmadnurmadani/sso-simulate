<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Employee;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use OpenApi\Attributes as OA;

class PasswordResetController extends Controller
{
    /**
     * Ganti password employee (harus login dengan access token).
     * Verifikasi password lama untuk keamanan.
     */
    #[OA\Post(
        path: '/sso/change-password',
        operationId: 'ssoChangePassword',
        description: 'Ganti password employee yang sedang login. Membutuhkan access token (Bearer) dan password lama.',
        tags: ['SSO'],
        security: [['bearerAuth' => []]],
        requestBody: new OA\RequestBody(required: true, content: new OA\JsonContent(
            required: ['old_password', 'new_password'],
            properties: [
                new OA\Property(property: 'old_password', type: 'string', description: 'Password lama'),
                new OA\Property(property: 'new_password', type: 'string', description: 'Password baru (min 8 karakter)'),
            ]
        )),
        responses: [
            new OA\Response(response: 200, description: 'Password berhasil diganti', content: new OA\JsonContent(
                properties: [
                    new OA\Property(property: 'message', type: 'string'),
                ]
            )),
            new OA\Response(response: 401, description: 'Token tidak valid / password lama salah'),
            new OA\Response(response: 422, description: 'Validasi gagal'),
        ]
    )]
    public function changePassword(Request $request): JsonResponse
    {
        $request->validate([
            'old_password' => ['required', 'string'],
            'new_password' => ['required', 'string', 'min:8'],
        ]);

        /** @var Employee $employee */
        $employee = $request->attributes->get('sso_employee');

        if (! $employee || ! Hash::check($request->input('old_password'), $employee->password)) {
            return response()->json(['error' => 'invalid_old_password'], 401);
        }

        if ($request->input('old_password') === $request->input('new_password')) {
            return response()->json(['error' => 'new_password_same_as_old'], 422);
        }

        $employee->update(['password' => Hash::make($request->input('new_password'))]);

        return response()->json(['message' => 'Password berhasil diganti.']);
    }
}
