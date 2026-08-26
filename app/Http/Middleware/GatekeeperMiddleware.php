<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class GatekeeperMiddleware
{
    /**
     * Handle an incoming request.
     */
    public function handle(Request $request, Closure $next): Response
    {
        if (! $request->session()->get('gate_authenticated', false)) {
            if ($request->expectsJson()) {
                return response()->json([
                    'error' => 'gate_locked',
                    'message' => 'Kode akses diperlukan untuk membuka layanan ini.',
                ], Response::HTTP_FORBIDDEN);
            }

            return redirect()->guest(route('gate.show'));
        }

        return $next($request);
    }
}
