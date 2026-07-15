<?php

use App\Http\Controllers\DataExplorerController;
use App\Http\Controllers\DeveloperDocsController;
use App\Http\Controllers\SsoViewController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return redirect()->route('developer.sso');
});

Route::prefix('sso')->name('sso.')->group(function () {
    Route::get('/', [SsoViewController::class, 'index'])->name('index');
    Route::post('/login', [SsoViewController::class, 'login'])->name('login');
    Route::get('/token', [SsoViewController::class, 'index']);
    Route::get('/clients', [SsoViewController::class, 'clients'])->name('clients');
    Route::get('/clients/create', [SsoViewController::class, 'createClient'])->name('createClient');
    Route::post('/clients', [SsoViewController::class, 'storeClient'])->name('storeClient');
    Route::get('/clients/{client}/credentials', [SsoViewController::class, 'showCredentials'])->name('credentials');
    Route::get('/clients/{client}/edit', [SsoViewController::class, 'editClient'])->name('editClient');
    Route::put('/clients/{client}', [SsoViewController::class, 'updateClient'])->name('updateClient');
    Route::delete('/clients/{client}', [SsoViewController::class, 'deleteClient'])->name('deleteClient');
});

Route::get('/developer/sso', [DeveloperDocsController::class, 'index'])->name('developer.sso');

Route::get('/data', [DataExplorerController::class, 'index'])->name('data.index');
