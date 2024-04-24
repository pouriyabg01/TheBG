<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\LoginRequest;
use App\Providers\RouteServiceProvider;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\View\View;

class AuthenticatedSessionController extends Controller
{
    /**
     * Display the login view.
     */
    public function create(): View
    {
        return view('profile.login');
    }

    /**
     * Handle an incoming authentication request.
     */
    public function store(LoginRequest $loginRequest): RedirectResponse
    {

        $loginRequest->authenticate();

        $loginRequest->session()->regenerate();

        /*
         * TODO back to previous url after login
         */

        $route = RouteServiceProvider::HOME;

//        if ($loginRequest->has('backTo')) {
//            $route = 'awdwad/awd';
//        }

        return redirect()->intended($route);
    }

    /**
     * Destroy an authenticated session.
     */
    public function destroy(Request $request): RedirectResponse
    {
        Auth::guard('customer')->logout();

//        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}
