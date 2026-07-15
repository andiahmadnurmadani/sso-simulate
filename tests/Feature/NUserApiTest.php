<?php

uses()->group('nuser');

it('has n-users api routes registered', function (): void {
    $routes = collect(\Illuminate\Support\Facades\Route::getRoutes())
        ->filter(fn ($route) => str_starts_with($route->uri(), 'api/n-users'));

    expect($routes)->toHaveCount(5);
});

it('has swagger docs route registered', function (): void {
    $route = collect(\Illuminate\Support\Facades\Route::getRoutes())
        ->first(fn ($route) => $route->uri() === 'api/documentation');

    expect($route)->not->toBeNull();
});

it('has n-users web route registered', function (): void {
    $route = collect(\Illuminate\Support\Facades\Route::getRoutes())
        ->first(fn ($route) => $route->uri() === 'n-users');

    expect($route)->not->toBeNull();
});
