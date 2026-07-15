<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\EmployeeResource;
use App\Models\Employee;
use App\Models\OAuthClient;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use OpenApi\Attributes as OA;

#[OA\Tag(name: 'SSO', description: 'Identity Provider endpoints seperti WSO2')]
class SsoController extends Controller
{
    private const TOKEN_TTL = 3600;

    /**
     * Issue access token untuk aplikasi client.
     */
    #[OA\Post(
        path: '/sso/token',
        operationId: 'ssoToken',
        description: 'Login employee dan dapatkan JWT access token untuk SSO',
        tags: ['SSO'],
        requestBody: new OA\RequestBody(required: true, content: new OA\JsonContent(
            required: ['client_id', 'client_secret', 'email', 'password', 'grant_type'],
            properties: [
                new OA\Property(property: 'client_id', type: 'string'),
                new OA\Property(property: 'client_secret', type: 'string'),
                new OA\Property(property: 'grant_type', type: 'string', example: 'password'),
                new OA\Property(property: 'email', type: 'string'),
                new OA\Property(property: 'password', type: 'string'),
            ]
        )),
        responses: [
            new OA\Response(response: 200, description: 'Token berhasil diterbitkan', content: new OA\JsonContent(
                properties: [
                    new OA\Property(property: 'access_token', type: 'string'),
                    new OA\Property(property: 'token_type', type: 'string', example: 'Bearer'),
                    new OA\Property(property: 'expires_in', type: 'integer'),
                ]
            )),
            new OA\Response(response: 401, description: 'Unauthorized'),
            new OA\Response(response: 422, description: 'Validasi gagal'),
        ]
    )]
    public function token(Request $request): JsonResponse
    {
        $request->validate([
            'client_id' => ['required', 'string'],
            'client_secret' => ['required', 'string'],
            'grant_type' => ['required', 'string', 'in:password'],
            'email' => ['required', 'string'],
            'password' => ['required', 'string'],
        ]);

        $client = OAuthClient::where('client_id', $request->input('client_id'))
            ->where('client_secret', $request->input('client_secret'))
            ->where('is_active', true)
            ->first();

        if (! $client) {
            return response()->json(['error' => 'invalid_client'], 401);
        }

        $employee = Employee::where('email', $request->input('email'))->first();

        if (! $employee || ! Hash::check($request->input('password'), $employee->password)) {
            return response()->json(['error' => 'invalid_credentials'], 401);
        }

        $token = $this->generateToken($employee, $client);

        return response()->json([
            'access_token' => $token,
            'token_type' => 'Bearer',
            'expires_in' => self::TOKEN_TTL,
        ]);
    }

    /**
     * Ambil data user yang sedang login.
     */
    #[OA\Get(
        path: '/sso/userinfo',
        operationId: 'ssoUserinfo',
        description: 'Ambil data employee beserta jabatan dan foto profile berdasarkan Bearer token',
        tags: ['SSO'],
        responses: [
            new OA\Response(response: 200, description: 'Data user', content: new OA\JsonContent(ref: '#/components/schemas/Employee')),
            new OA\Response(response: 401, description: 'Unauthorized'),
        ]
    )]
    public function userinfo(Request $request): EmployeeResource
    {
        return new EmployeeResource($request->attributes->get('sso_employee')->load('positions'));
    }

    /**
     * Introspect token.
     */
    #[OA\Post(
        path: '/sso/introspect',
        operationId: 'ssoIntrospect',
        description: 'Validasi access token dan kembalikan klaimnya',
        tags: ['SSO'],
        requestBody: new OA\RequestBody(required: true, content: new OA\JsonContent(
            required: ['token'],
            properties: [
                new OA\Property(property: 'token', type: 'string'),
            ]
        )),
        responses: [
            new OA\Response(response: 200, description: 'Token aktif', content: new OA\JsonContent(
                properties: [
                    new OA\Property(property: 'active', type: 'boolean'),
                    new OA\Property(property: 'sub', type: 'integer'),
                    new OA\Property(property: 'exp', type: 'integer'),
                ]
            )),
        ]
    )]
    public function introspect(Request $request): JsonResponse
    {
        $request->validate(['token' => ['required', 'string']]);

        $claims = $this->decodeToken($request->input('token'));

        if (! $claims) {
            return response()->json(['active' => false]);
        }

        return response()->json([
            'active' => true,
            'sub' => $claims['sub'],
            'exp' => $claims['exp'],
        ]);
    }

    private function generateToken(Employee $employee, OAuthClient $client): string
    {
        $header = json_encode(['typ' => 'JWT', 'alg' => 'HS256']);
        $time = time();
        $payload = json_encode([
            'iss' => config('app.url'),
            'sub' => $employee->emp_id,
            'aud' => $client->client_id,
            'iat' => $time,
            'exp' => $time + self::TOKEN_TTL,
            'jti' => (string) Str::uuid(),
        ]);

        $base64Header = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($header));
        $base64Payload = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($payload));
        $signature = hash_hmac('sha256', "{$base64Header}.{$base64Payload}", $client->client_secret, true);
        $base64Signature = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($signature));

        return "{$base64Header}.{$base64Payload}.{$base64Signature}";
    }

    private function decodeToken(string $token): ?array
    {
        $parts = explode('.', $token);
        if (count($parts) !== 3) {
            return null;
        }

        $payload = json_decode(base64_decode(str_replace(['-', '_'], ['+', '/'], $parts[1])), true);
        if (! $payload || ! isset($payload['exp']) || $payload['exp'] < time()) {
            return null;
        }

        $clients = OAuthClient::where('is_active', true)->pluck('client_secret', 'client_id');
        foreach ($clients as $clientId => $secret) {
            $signature = hash_hmac('sha256', "{$parts[0]}.{$parts[1]}", $secret, true);
            $expected = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($signature));
            if (hash_equals($expected, $parts[2])) {
                return $payload;
            }
        }

        return null;
    }

    public static function resolveEmployeeFromToken(string $token): ?Employee
    {
        $parts = explode('.', $token);
        if (count($parts) !== 3) {
            return null;
        }

        $payload = json_decode(base64_decode(str_replace(['-', '_'], ['+', '/'], $parts[1])), true);
        if (! $payload || ! isset($payload['exp']) || $payload['exp'] < time()) {
            return null;
        }

        $clients = OAuthClient::where('is_active', true)->pluck('client_secret', 'client_id');
        foreach ($clients as $secret) {
            $signature = hash_hmac('sha256', "{$parts[0]}.{$parts[1]}", $secret, true);
            $expected = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($signature));
            if (hash_equals($expected, $parts[2])) {
                return Employee::find($payload['sub']);
            }
        }

        return null;
    }
}
