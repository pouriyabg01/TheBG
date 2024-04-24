<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProfileUpdateRequest;
use App\Models\Customer;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Storage;
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
    public function update(ProfileUpdateRequest $request): RedirectResponse
    {
        $user = $request->user('customer');
        $user->fill($request->validated());

        if ($user->isDirty('email')) {
            $user->email_verified_at = null;
        }

        if ($request->hasFile('avatar')) {
            $this->saveAvatar($request);
        }

        $user->save();

        return Redirect::route('profile.edit')->with('status', 'profile-updated');
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

        $file = $request->file('avatar');

        $fileName = $request->user('customer')->id . uniqid() . '.' . $file->getClientOriginalExtension();

        $avatarPath = $file->storeAs('avatars', $fileName, 'public');

        if ($request->user('customer')->avatar) {
            $existingAvatarPath = $request->user('customer')->avatar;
            if (Storage::disk('public')->exists($existingAvatarPath)) {
                Storage::disk('public')->delete($existingAvatarPath);
            }
        }

        $request->user('customer')->avatar = $avatarPath;

    }
}
