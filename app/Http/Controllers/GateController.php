<?php

namespace App\Http\Controllers;

use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\View\View;

class GateController extends Controller
{
    /**
     * Tampilkan form input kode akses.
     */
    public function show(Request $request): View|RedirectResponse
    {
        if ($request->session()->get('gate_authenticated', false)) {
            return redirect()->intended(route('developer.sso'));
        }

        return view('gate');
    }

    /**
     * Verifikasi kode akses yang dimasukkan.
     */
    public function verify(Request $request): RedirectResponse
    {
        $request->validate([
            'code' => ['required', 'string'],
        ], [
            'code.required' => 'Silakan masukkan kode akses terlebih dahulu.',
        ]);

        $validCode = (string) config('gate.access_code', 'telin2026');
        $inputCode = (string) $request->input('code');

        if (! hash_equals($validCode, $inputCode)) {
            return back()
                ->withErrors(['code' => 'Kode akses tidak sesuai. Silakan periksa kembali.'])
                ->withInput();
        }

        $request->session()->put('gate_authenticated', true);
        $request->session()->regenerate();

        return redirect()->intended(route('developer.sso'));
    }

    /**
     * Kunci kembali sesi gatekeeper.
     */
    public function lock(Request $request): RedirectResponse
    {
        $request->session()->forget('gate_authenticated');
        $request->session()->regenerate();

        return redirect()->route('gate.show')->with('status', 'Sesi telah dikunci.');
    }
}
