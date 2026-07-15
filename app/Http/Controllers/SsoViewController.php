<?php

namespace App\Http\Controllers;

use App\Models\OAuthClient;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\View\View;

class SsoViewController extends Controller
{
    /**
     * Display SSO login page.
     */
    public function index(): View
    {
        return view('sso.index');
    }

    /**
     * Display SSO client management page.
     */
    public function clients(Request $request): View
    {
        $clients = OAuthClient::latest()->paginate(10);

        return view('sso.clients', compact('clients'));
    }

    /**
     * Show form for creating a new client.
     */
    public function createClient(): View
    {
        return view('sso.client_form', ['client' => null]);
    }

    /**
     * Show form for editing a client.
     */
    public function editClient(OAuthClient $client): View
    {
        return view('sso.client_form', compact('client'));
    }

    /**
     * Show generated credentials after creating a client.
     */
    public function showCredentials(OAuthClient $client): View
    {
        return view('sso.credentials', compact('client'));
    }

    /**
     * Store a newly created OAuth client.
     */
    public function storeClient(Request $request): RedirectResponse
    {
        $validated = $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'allowed_redirect_uris' => ['nullable', 'string'],
            'is_active' => ['sometimes', 'nullable', 'boolean'],
        ]);

        $client = OAuthClient::create([
            'name' => $validated['name'],
            'client_id' => $this->generateClientId(),
            'client_secret' => hash('sha256', Str::random(32)),
            'allowed_redirect_uris' => $validated['allowed_redirect_uris'] ?? null,
            'is_active' => $validated['is_active'] ?? true,
        ]);

        return redirect()->route('sso.credentials', $client)->with('success', 'Client berhasil dibuat.');
    }

    /**
     * Generate unique client ID.
     */
    private function generateClientId(): string
    {
        do {
            $clientId = 'client-'.Str::lower(Str::random(8));
        } while (OAuthClient::where('client_id', $clientId)->exists());

        return $clientId;
    }

    /**
     * Update the specified OAuth client.
     */
    public function updateClient(Request $request, OAuthClient $client): RedirectResponse
    {
        $validated = $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'allowed_redirect_uris' => ['nullable', 'string'],
            'is_active' => ['sometimes', 'nullable', 'boolean'],
        ]);

        $client->update([
            'name' => $validated['name'],
            'allowed_redirect_uris' => $validated['allowed_redirect_uris'] ?? null,
            'is_active' => $validated['is_active'] ?? false,
        ]);

        return redirect()->route('sso.clients')->with('success', 'Client berhasil diperbarui.');
    }

    /**
     * Remove the specified OAuth client.
     */
    public function deleteClient(OAuthClient $client): RedirectResponse
    {
        $client->delete();

        return redirect()->route('sso.clients')->with('success', 'Client berhasil dihapus.');
    }

    /**
     * Handle login form submission and show token.
     */
    public function login(Request $request): View
    {
        $validated = $request->validate([
            'client_id' => ['required', 'string'],
            'client_secret' => ['required', 'string'],
            'email' => ['required', 'email'],
            'password' => ['required', 'string'],
        ]);

        $client = OAuthClient::where('client_id', $validated['client_id'])
            ->where('is_active', true)
            ->first();

        $employee = \App\Models\Employee::where('email', $validated['email'])->first();

        if (! $client || ! $employee || ! \Illuminate\Support\Facades\Hash::check($validated['password'], $employee->password)) {
            return view('sso.index', [
                'error' => 'Invalid client or credentials.',
                'old' => $request->only(['client_id', 'email']),
            ]);
        }

        $ssoController = new \App\Http\Controllers\Api\SsoController;
        $reflection = new \ReflectionMethod($ssoController, 'generateToken');
        $reflection->setAccessible(true);
        $token = $reflection->invoke($ssoController, $employee, $client);

        return view('sso.token', compact('token', 'employee'));
    }
}
