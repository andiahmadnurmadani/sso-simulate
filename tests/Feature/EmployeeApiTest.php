<?php

uses()->group('employee');

it('has employees api routes registered', function (): void {
    $routes = collect(\Illuminate\Support\Facades\Route::getRoutes())
        ->filter(fn ($route) => str_starts_with($route->uri(), 'api/employees'));

    expect($routes)->toHaveCount(5);
});

it('has sso api routes registered', function (): void {
    $routes = collect(\Illuminate\Support\Facades\Route::getRoutes())
        ->filter(fn ($route) => str_starts_with($route->uri(), 'api/sso'));

    expect($routes)->toHaveCount(3);
});

it('has swagger docs route registered', function (): void {
    $route = collect(\Illuminate\Support\Facades\Route::getRoutes())
        ->first(fn ($route) => $route->uri() === 'api/documentation');

    expect($route)->not->toBeNull();
});

it('has employees web route registered', function (): void {
    $route = collect(\Illuminate\Support\Facades\Route::getRoutes())
        ->first(fn ($route) => $route->uri() === 'employees');

    expect($route)->not->toBeNull();
});

it('root redirects to employees index', function (): void {
    $route = collect(\Illuminate\Support\Facades\Route::getRoutes())
        ->first(fn ($route) => $route->uri() === '/');

    expect($route)->not->toBeNull();
});

it('sso token route is accessible as post', function (): void {
    $route = collect(\Illuminate\Support\Facades\Route::getRoutes())
        ->first(fn ($route) => $route->uri() === 'api/sso/token' && in_array('POST', $route->methods(), true));

    expect($route)->not->toBeNull();
});
