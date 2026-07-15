<?php

namespace App\Http\Controllers;

use App\Models\OAuthClient;
use Illuminate\View\View;

class DeveloperDocsController extends Controller
{
    /**
     * Display SSO integration guide for external developers.
     */
    public function index(): View
    {
        $baseUrl = rtrim(config('app.url', 'https://simulasi-sso.kii.lat'), '/');
        $clients = OAuthClient::latest()->limit(10)->get();

        return view('developer.index', compact('baseUrl', 'clients'));
    }
}
