<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use App\Models\OAuthAuthorizationCode;
use App\Models\OAuthClient;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\View\View;

class SsoAuthorizeController extends Controller
{
    /**
     * Display the SSO authorization/login page.
     */
    public function show(Request $request): View|RedirectResponse
    {
        $validation = $this->validateAuthorizeRequest($request);
        if ($validation instanceof RedirectResponse) {
            return $validation;
        }

        ['client' => $client, 'redirectUri' => $redirectUri, 'state' => $state] = $validation;

        return view('sso.authorize', [
            'client' => $client,
            'redirectUri' => $redirectUri,
            'state' => $state,
            'error' => $request->get('error'),
        ]);
    }

    /**
     * Process the user's approval and issue an authorization code.
     */
    public function approve(Request $request): RedirectResponse
    {
        $validation = $this->validateAuthorizeRequest($request);
        if ($validation instanceof RedirectResponse) {
            return $validation;
        }

        ['client' => $client, 'redirectUri' => $redirectUri, 'state' => $state] = $validation;

        $request->validate([
            'email' => ['required', 'email'],
            'password' => ['required', 'string'],
        ]);

        $employee = Employee::where('email', $request->input('email'))->first();

        if (! $employee || ! Hash::check($request->input('password'), $employee->password)) {
            return redirect()->route('sso.authorize', [
                'client_id' => $client->client_id,
                'redirect_uri' => $redirectUri,
                'response_type' => 'code',
                'state' => $state,
                'error' => 'invalid_credentials',
            ]);
        }

        $code = $this->generateAuthorizationCode($client, $employee, $redirectUri);

        $redirectUrl = $redirectUri . (str_contains($redirectUri, '?') ? '&' : '?') . http_build_query([
            'code' => $code,
            'state' => $state,
        ]);

        return redirect()->away($redirectUrl);
    }

    /**
     * Validate the authorization request parameters.
     */
    private function validateAuthorizeRequest(Request $request): array|RedirectResponse
    {
        $clientId = $request->get('client_id');
        $redirectUri = $request->get('redirect_uri');
        $responseType = $request->get('response_type');
        $state = $request->get('state');

        if ($responseType !== 'code') {
            return $this->errorRedirect($redirectUri, 'unsupported_response_type', $state);
        }

        $client = OAuthClient::where('client_id', $clientId)
            ->where('is_active', true)
            ->first();

        if (! $client) {
            return $this->errorRedirect($redirectUri, 'invalid_client', $state);
        }

        if (! $redirectUri || ! $client->validatesRedirectUri($redirectUri)) {
            return $this->errorRedirect($redirectUri, 'invalid_redirect_uri', $state);
        }

        return ['client' => $client, 'redirectUri' => $redirectUri, 'state' => $state];
    }

    /**
     * Generate a unique authorization code.
     */
    private function generateAuthorizationCode(OAuthClient $client, Employee $employee, string $redirectUri): string
    {
        $code = hash('sha256', Str::random(64));

        OAuthAuthorizationCode::create([
            'client_id' => $client->client_id,
            'employee_id' => $employee->emp_id,
            'code' => $code,
            'redirect_uri' => $redirectUri,
            'expires_at' => now()->addMinutes(10),
            'used' => false,
        ]);

        return $code;
    }

    /**
     * Build an error redirect response.
     */
    private function errorRedirect(?string $redirectUri, string $error, ?string $state): RedirectResponse
    {
        if (! $redirectUri) {
            return redirect()->route('sso.index')->with('error', $error);
        }

        $query = ['error' => $error];
        if ($state) {
            $query['state'] = $state;
        }

        $redirectUrl = $redirectUri . (str_contains($redirectUri, '?') ? '&' : '?') . http_build_query($query);

        return redirect()->away($redirectUrl);
    }
}
