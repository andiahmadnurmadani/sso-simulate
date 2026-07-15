<?php

namespace App\Http\Middleware;

use App\Http\Controllers\Api\SsoController;
use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class SsoTokenMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        $header = $request->header('Authorization');
        if (! $header || ! str_starts_with($header, 'Bearer ')) {
            return response()->json(['error' => 'missing_token'], 401);
        }

        $token = substr($header, 7);
        $employee = SsoController::resolveEmployeeFromToken($token);

        if (! $employee) {
            return response()->json(['error' => 'invalid_token'], 401);
        }

        $request->attributes->set('sso_employee', $employee);

        return $next($request);
    }
}
