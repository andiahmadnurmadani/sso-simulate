<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\OAuthClient;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Str;
use OpenApi\Attributes as OA;

#[OA\Tag(name: 'OAuth Clients', description: 'Manajemen aplikasi client SSO')]
class OAuthClientController extends Controller
{
    /**
     * Display a listing of OAuth clients.
     */
    #[OA\Get(
        path: '/oauth-clients',
        operationId: 'oauthClientsIndex',
        description: 'Daftar aplikasi client yang terdaftar',
        tags: ['OAuth Clients'],
        responses: [
            new OA\Response(response: 200, description: 'Daftar client'),
        ]
    )]
    public function index()
    {
        return OAuthClient::latest()->paginate(10);
    }

    /**
     * Store a newly created OAuth client.
     */
    #[OA\Post(
        path: '/oauth-clients',
        operationId: 'oauthClientsStore',
        description: 'Mendaftarkan aplikasi client baru',
        tags: ['OAuth Clients'],
        requestBody: new OA\RequestBody(required: true, content: new OA\JsonContent(
            required: ['name'],
            properties: [
                new OA\Property(property: 'name', type: 'string'),
                new OA\Property(property: 'client_id', type: 'string', nullable: true),
                new OA\Property(property: 'client_secret', type: 'string', nullable: true),
                new OA\Property(property: 'allowed_redirect_uris', type: 'string', nullable: true),
                new OA\Property(property: 'is_active', type: 'boolean', nullable: true),
            ]
        )),
        responses: [
            new OA\Response(response: 201, description: 'Client berhasil dibuat'),
            new OA\Response(response: 422, description: 'Validasi gagal'),
        ]
    )]
    public function store(Request $request): JsonResponse
    {
        $validated = $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'client_id' => ['nullable', 'string', 'max:64', 'unique:oauth_clients,client_id'],
            'client_secret' => ['nullable', 'string', 'max:128'],
            'allowed_redirect_uris' => ['nullable', 'string'],
            'is_active' => ['nullable', 'boolean'],
        ]);

        $client = OAuthClient::create([
            'name' => $validated['name'],
            'client_id' => $validated['client_id'] ?? 'client-'.Str::random(8),
            'client_secret' => $validated['client_secret'] ?? hash('sha256', Str::random(32)),
            'allowed_redirect_uris' => $validated['allowed_redirect_uris'] ?? null,
            'is_active' => $validated['is_active'] ?? true,
        ]);

        return response()->json($client, Response::HTTP_CREATED);
    }

    /**
     * Display the specified OAuth client.
     */
    #[OA\Get(
        path: '/oauth-clients/{id}',
        operationId: 'oauthClientsShow',
        description: 'Detail aplikasi client',
        tags: ['OAuth Clients'],
        parameters: [
            new OA\Parameter(name: 'id', in: 'path', required: true, schema: new OA\Schema(type: 'integer')),
        ],
        responses: [
            new OA\Response(response: 200, description: 'Detail client'),
            new OA\Response(response: 404, description: 'Client tidak ditemukan'),
        ]
    )]
    public function show(OAuthClient $oauthClient): JsonResponse
    {
        return response()->json($oauthClient);
    }

    /**
     * Update the specified OAuth client.
     */
    #[OA\Put(
        path: '/oauth-clients/{id}',
        operationId: 'oauthClientsUpdate',
        description: 'Memperbarui aplikasi client',
        tags: ['OAuth Clients'],
        parameters: [
            new OA\Parameter(name: 'id', in: 'path', required: true, schema: new OA\Schema(type: 'integer')),
        ],
        requestBody: new OA\RequestBody(required: true, content: new OA\JsonContent(
            properties: [
                new OA\Property(property: 'name', type: 'string'),
                new OA\Property(property: 'client_secret', type: 'string', nullable: true),
                new OA\Property(property: 'allowed_redirect_uris', type: 'string', nullable: true),
                new OA\Property(property: 'is_active', type: 'boolean', nullable: true),
            ]
        )),
        responses: [
            new OA\Response(response: 200, description: 'Client berhasil diperbarui'),
            new OA\Response(response: 404, description: 'Client tidak ditemukan'),
            new OA\Response(response: 422, description: 'Validasi gagal'),
        ]
    )]
    public function update(Request $request, OAuthClient $oauthClient): JsonResponse
    {
        $validated = $request->validate([
            'name' => ['nullable', 'string', 'max:255'],
            'client_secret' => ['nullable', 'string', 'max:128'],
            'allowed_redirect_uris' => ['nullable', 'string'],
            'is_active' => ['nullable', 'boolean'],
        ]);

        $oauthClient->update(array_filter($validated, fn ($value) => $value !== null));

        return response()->json($oauthClient);
    }

    /**
     * Remove the specified OAuth client.
     */
    #[OA\Delete(
        path: '/oauth-clients/{id}',
        operationId: 'oauthClientsDestroy',
        description: 'Menghapus aplikasi client',
        tags: ['OAuth Clients'],
        parameters: [
            new OA\Parameter(name: 'id', in: 'path', required: true, schema: new OA\Schema(type: 'integer')),
        ],
        responses: [
            new OA\Response(response: 204, description: 'Client berhasil dihapus'),
            new OA\Response(response: 404, description: 'Client tidak ditemukan'),
        ]
    )]
    public function destroy(OAuthClient $oauthClient): JsonResponse
    {
        $oauthClient->delete();

        return response()->json(null, Response::HTTP_NO_CONTENT);
    }
}
