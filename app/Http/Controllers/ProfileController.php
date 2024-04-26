<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProfileUpdateRequest;
use App\Models\Customer;
use http\Env\Response;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\View\View;

class ProfileController extends Controller
{
    /**
     * Display the user's profile form.
     */
    public function edit(Request $request): View
    {
        return view('profile.pages.profile', [
            'customer' => $request->user('customer'),
        ]);
    }

    /**
     * Update the user's profile information.
     */
    public function update(ProfileUpdateRequest $request)
    {
        $user = $request->user('customer');
        $validData = $request->validated();
        $user->fill($validData);

        if ($user->isDirty('email')) {
            $user->email_verified_at = null;
        }
        $avatar = false;
        if ($request->hasFile('avatar')) {
            $avatar = $this->saveAvatar($request);
        }

        $user->save();
        return response()->json(['success' => true, 'avatar' => $avatar]);
    }

    /**
     * Delete the user's account.
     */
    public function destroy(Request $request): RedirectResponse
    {
        $request->validateWithBag('userDeletion', [
            'password' => ['required', 'current_password'],
        ]);

        $user = $request->user('customer');

        Auth::guard('customer')->logout();

        $user->delete();

        $request->session()->regenerateToken();

        return Redirect::to('/');
    }

    private function saveAvatar(ProfileUpdateRequest $request)
    {

        $user = $request->user('customer');
        $file = $request->file('avatar');

        $fileName = $user->id . uniqid() . '.' . $file->getClientOriginalExtension();

        $avatarPath = $file->storeAs('avatars', $fileName, 'public');

        $user->avatar = $avatarPath;
        if ($avatarPath){
            return asset('storage/' . $avatarPath);
        }else {
            return null;
        }

    }
}
