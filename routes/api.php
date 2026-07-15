<?php

use App\Http\Controllers\Api\EmployeeController;
use App\Http\Controllers\Api\OAuthClientController;
use App\Http\Controllers\Api\SsoController;
use App\Http\Middleware\SsoTokenMiddleware;
use Illuminate\Support\Facades\Route;

Route::apiResource('employees', EmployeeController::class);
Route::apiResource('oauth-clients', OAuthClientController::class);

Route::post('/sso/token', [SsoController::class, 'token']);
Route::post('/sso/introspect', [SsoController::class, 'introspect']);
Route::middleware(SsoTokenMiddleware::class)->get('/sso/userinfo', [SsoController::class, 'userinfo']);
