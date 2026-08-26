<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" class="h-full">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gatekeeper — Telin KM SSO</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <style>
        * { box-sizing: border-box; }
        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
            background: #f8fafc;
            color: #0f172a;
            margin: 0;
            padding: 0;
        }
        .gate-container {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 24px 16px;
            background: linear-gradient(135deg, #f8fafc 0%, #eef2ff 60%, #f1f5f9 100%);
        }
        .gate-card {
            width: 100%;
            max-width: 400px;
            background: #ffffff;
            border: 1px solid #e2e8f0;
            border-radius: 16px;
            padding: 32px 28px;
            box-shadow: 0 10px 25px -5px rgba(15, 23, 42, 0.05), 0 8px 10px -6px rgba(15, 23, 42, 0.03);
        }
        .gate-icon {
            width: 48px;
            height: 48px;
            background: #eef2ff;
            color: #4f46e5;
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 16px auto;
            border: 1px solid #e0e7ff;
        }
        .gate-icon svg {
            width: 22px;
            height: 22px;
            max-width: 22px;
            max-height: 22px;
            display: block;
        }
        .gate-title {
            font-size: 20px;
            font-weight: 800;
            color: #0f172a;
            text-align: center;
            margin: 0 0 6px 0;
            letter-spacing: -0.02em;
        }
        .gate-desc {
            font-size: 13px;
            color: #64748b;
            text-align: center;
            margin: 0 0 24px 0;
            line-height: 1.5;
        }
        .gate-label {
            display: block;
            font-size: 12px;
            font-weight: 700;
            color: #334155;
            margin-bottom: 8px;
            text-transform: uppercase;
            letter-spacing: 0.04em;
        }
        .gate-input-wrapper {
            position: relative;
            margin-bottom: 20px;
        }
        .gate-input {
            width: 100%;
            height: 44px;
            background: #ffffff;
            border: 1px solid #cbd5e1;
            border-radius: 10px;
            padding: 0 42px 0 14px;
            font-size: 14px;
            font-weight: 500;
            color: #0f172a;
            outline: none;
            transition: all 0.15s ease-in-out;
        }
        .gate-input:focus {
            border-color: #6366f1;
            box-shadow: 0 0 0 3px rgba(99, 102, 241, 0.15);
        }
        .gate-toggle-btn {
            position: absolute;
            right: 10px;
            top: 50%;
            transform: translateY(-50%);
            background: transparent;
            border: none;
            color: #94a3b8;
            cursor: pointer;
            padding: 4px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .gate-toggle-btn:hover {
            color: #475569;
        }
        .gate-toggle-btn svg {
            width: 18px;
            height: 18px;
        }
        .gate-submit-btn {
            width: 100%;
            height: 44px;
            background: #4f46e5;
            color: #ffffff;
            border: none;
            border-radius: 10px;
            font-size: 14px;
            font-weight: 700;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            box-shadow: 0 4px 12px rgba(79, 70, 229, 0.25);
            transition: all 0.15s ease-in-out;
        }
        .gate-submit-btn:hover {
            background: #4338ca;
            box-shadow: 0 6px 16px rgba(79, 70, 229, 0.35);
        }
        .gate-submit-btn:active {
            transform: scale(0.99);
        }
        .gate-error {
            background: #fef2f2;
            border: 1px solid #fee2e2;
            border-radius: 10px;
            padding: 10px 14px;
            font-size: 13px;
            font-weight: 500;
            color: #b91c1c;
            margin-bottom: 18px;
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .gate-status {
            background: #f0fdf4;
            border: 1px solid #dcfce7;
            border-radius: 10px;
            padding: 10px 14px;
            font-size: 13px;
            font-weight: 500;
            color: #15803d;
            margin-bottom: 18px;
            text-align: center;
        }
        .gate-footer {
            margin-top: 24px;
            font-size: 12px;
            color: #94a3b8;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="gate-container">
        <!-- Brand Title Above Card -->
        <div style="text-align: center; margin-bottom: 24px;">
            <div style="font-size: 20px; font-weight: 900; color: #0f172a; letter-spacing: -0.02em;">
                Telin KM SSO
            </div>
            <div style="font-size: 13px; color: #64748b; margin-top: 2px;">
                Single Sign-On Identity Provider
            </div>
        </div>

        <!-- Card Box -->
        <div class="gate-card">
            <!-- Icon -->
            <div class="gate-icon">
                <svg fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M16.5 10.5V6.75a4.5 4.5 0 10-9 0v3.75m-.75 11.25h10.5a2.25 2.25 0 002.25-2.25v-6.75a2.25 2.25 0 00-2.25-2.25H6.75a2.25 2.25 0 00-2.25 2.25v6.75a2.25 2.25 0 002.25 2.25z" />
                </svg>
            </div>

            <div class="gate-title">Developer Gate</div>
            <div class="gate-desc">Masukkan kode akses untuk membuka dokumentasi dan layanan developer.</div>

            @if (session('status'))
                <div class="gate-status">
                    {{ session('status') }}
                </div>
            @endif

            @if ($errors->has('code'))
                <div class="gate-error">
                    <svg style="width: 16px; height: 16px; min-width: 16px;" viewBox="0 0 20 20" fill="currentColor">
                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zM8.28 7.22a.75.75 0 00-1.06 1.06L8.94 10l-1.72 1.72a.75.75 0 101.06 1.06L10 11.06l1.72 1.72a.75.75 0 101.06-1.06L11.06 10l1.72-1.72a.75.75 0 00-1.06-1.06L10 8.94 8.28 7.22z" clip-rule="evenodd" />
                    </svg>
                    <span>{{ $errors->first('code') }}</span>
                </div>
            @endif

            <form method="POST" action="{{ route('gate.verify') }}" autocomplete="off">
                @csrf
                <label for="gate_code" class="gate-label">Kode Akses</label>
                <div class="gate-input-wrapper">
                    <input 
                        type="password" 
                        id="gate_code" 
                        name="code" 
                        required 
                        autofocus 
                        autocomplete="new-password"
                        placeholder="Ketik passcode..." 
                        class="gate-input"
                    />
                    <button type="button" class="gate-toggle-btn" onclick="togglePassVisibility()" title="Lihat password">
                        <svg id="eye-icon" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M2.036 12.322a1.012 1.012 0 010-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178z" />
                            <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                        </svg>
                    </button>
                </div>

                <button type="submit" class="gate-submit-btn">
                    <span>Buka Akses</span>
                    <svg style="width: 16px; height: 16px;" fill="none" viewBox="0 0 24 24" stroke-width="2.5" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M13.5 4.5L21 12m0 0l-7.5 7.5M21 12H3" />
                    </svg>
                </button>
            </form>
        </div>

        <div class="gate-footer">
            &copy; {{ date('Y') }} Telin KM &mdash; Simulation Environment
        </div>
    </div>

    <script>
        function togglePassVisibility() {
            var input = document.getElementById('gate_code');
            var eye = document.getElementById('eye-icon');
            if (input.type === 'password') {
                input.type = 'text';
                eye.innerHTML = '<path stroke-linecap="round" stroke-linejoin="round" d="M3.98 8.223A10.477 10.477 0 001.934 12C3.226 16.338 7.244 19.5 12 19.5c.993 0 1.953-.138 2.863-.395M6.228 6.228A10.45 10.45 0 0112 4.5c4.756 0 8.773 3.162 10.065 7.498a10.523 10.523 0 01-4.293 5.774M6.228 6.228L3 3m3.228 3.228l3.65 3.65m7.894 7.894L21 21m-3.228-3.228l-3.65-3.65m0 0a3 3 0 10-4.243-4.243m4.242 4.242L9.88 9.88" />';
            } else {
                input.type = 'password';
                eye.innerHTML = '<path stroke-linecap="round" stroke-linejoin="round" d="M2.036 12.322a1.012 1.012 0 010-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178z" /><path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />';
            }
        }
    </script>
</body>
</html>
