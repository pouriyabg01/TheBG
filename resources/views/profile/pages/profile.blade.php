@extends('shop-layout.app')
@section('address1' , 'Account')
@section('address2' , 'Profile')
@section('address3' , 'Profile Info')
@section('address-bar' , View::make('shop-layout.address-bar'))
@section('sidebar-before')
    @include('profile.layout.sidebar' , ['customer' => $customer])
@endsection
@section('section-content')
<!-- Toolbar-->
<div class="d-none d-lg-flex justify-content-between align-items-center pt-lg-3 pb-4 pb-lg-5 mb-lg-3">
    <h6 class="fs-base text-light mb-0">List of your registered addresses:</h6>
    <form action="{{ route('logout') }}" method="POST" style="display: inline;">
        @csrf
        <button type="submit" class="btn btn-primary btn-sm">
            <i class="ci-sign-out me-2"></i>{{ __('Log Out') }}
        </button>
    </form>
</div>
<form id="send-verification" method="post" action="{{ route('verification.send') }}">
    @csrf
</form>

@if (session('status'))
    <div x-data="{ show: true }" x-show="show" x-init="setTimeout(() => show = false, 2000)">
{{--    <p class="alert-success alert text-sm text-gray-600 dark:text-gray-400">{{ session('status') }}</p>--}}

    @if(session('status') === 'profile-updated')
            <p class="alert-success alert text-sm text-gray-600 dark:text-gray-400">{{ __('Saved.') }}</p>
        @elseif(session('status') === 'password-updated')
            <p class="alert-success alert text-sm text-gray-600 dark:text-gray-400">Password Saved!</p>
        @endif
    </div>
@endif


<!-- Profile form-->
<form enctype="multipart/form-data" action="{{ route('profile.update') }}" method="POST">
    @csrf
    @method('patch')
    <div class="bg-secondary rounded-3 p-4 mb-4">
            <div class="d-flex align-items-center">
                <img id="avatarPreview" class="rounded" src="{{ $customer->avatar ? asset('storage/' .$customer->avatar) : asset('img/shop/account/banner2.jpg')}}" width="90" alt="Customer Avatar">
                        <div class="ps-3">
                            <button class="btn btn-light btn-shadow btn-sm mb-2" type="button" id="uploadButton">
                                <i class="ci-loading me-2"></i>Change avatar
                            </button>
                            <button class="btn btn-danger btn-shadow btn-sm mb-2" type="button" id="cancelButton" style="display: none">
                                <i class="ci-close me-2"></i>Cancel
                            </button>
                            <input type="file" id="fileInput" name="avatar" accept="image/*" style="display: none;" />
                            <script>
                                const avatarPreview = document.getElementById('avatarPreview');
                                const uploadButton = document.getElementById('uploadButton');
                                const fileInput = document.getElementById('fileInput');
                                const cancelButton = document.getElementById('cancelButton');
                                const originalSrc = avatarPreview.src;

                                uploadButton.addEventListener('click', function() {
                                    fileInput.click();
                                });

                                fileInput.addEventListener('change', function(event) {
                                    const files = event.target.files;
                                    if (files.length > 0) {
                                        var fileReader = new FileReader();
                                        fileReader.onload = function(e) {
                                            avatarPreview.src = e.target.result;
                                            cancelButton.style.display = 'inline-block';
                                        };
                                        fileReader.readAsDataURL(files[0]);
                                    }
                                });

                                cancelButton.addEventListener('click', function() {
                                    // Reset the file input and revert to the original image
                                    fileInput.value = ''; // Clear the file input
                                    avatarPreview.src = originalSrc; // Restore the original image
                                    cancelButton.style.display = 'none'; // Hide the cancel button
                                });
                            </script>

{{--                <div class="p mb-0 fs-ms text-muted">Upload JPG, GIF or PNG image. 300 x 300 required.</div>--}}
            </div>
        </div>
    </div>
    <div class="row gx-4 gy-3">
        <div class="col-sm-6">
            <label class="form-label" for="name">First Name</label>
            <input class="form-control" type="text" id="name" name="name" value="{{ $customer->name }}">
            @if($errors->has('name'))
                <p class="alert-danger alert">{{ $errors->first('name') }}</p>
            @endif
        </div>
        <div class="col-sm-6">
            <label class="form-label" for="last_name">Last Name</label>
            <input class="form-control" type="text" id="last_name" name="last_name" value="{{ $customer->last_name }}">
            @if($errors->has('last_name'))
                <p class="alert-danger alert">{{ $errors->first('last_name') }}</p>
            @endif
        </div>
        <div class="col-sm-6">
            <label class="form-label" for="email">Email Address</label>
            <input class="form-control" type="email" id="email" name="email" value="{{ $customer->email }}">
            @if($errors->has('email'))
                <p class="alert-danger alert">{{ $errors->first('email') }}</p>
            @endif
        </div>

        @if ($customer instanceof \Illuminate\Contracts\Auth\MustVerifyEmail && ! $customer->hasVerifiedEmail())
            <div class="col-sm-6">
                <p class="text-sm mt-2 text-gray-800 dark:text-gray-200">
                    {{ __('Your email address is unverified.') }}

                    <button form="send-verification" class="btn btn-primary mt-3 mt-sm-0">
                        {{ __('Click here to re-send the verification email.') }}
                    </button>
                </p>

                @if (session('status') === 'verification-link-sent')
                    <p class="mt-2 font-medium text-sm text-green-600 dark:text-green-400">
                        {{ __('A new verification link has been sent to your email address.') }}
                    </p>
                @endif
            </div>
        @endif
        <div class="col-sm-6">
            <label class="form-label" for="phone">Phone Number</label>
            <input class="form-control" type="text" id="phone" name="phone" value="{{ $customer->phone }}">
            @if($errors->has('phone'))
                <p class="alert-danger alert">{{ $errors->first('phone') }}</p>
            @endif
        </div>
    </div>
    <div class="col-12">
        <hr class="mt-2 mb-3">
        <div class="d-flex flex-wrap justify-content-between align-items-center">
            <div class="form-check">
            </div>
            <button class="btn btn-primary mt-3 mt-sm-0" type="submit" >Update profile</button>
        </div>
    </div>
</form>
<!-- Checkbox to toggle visibility of the form -->
<input type="checkbox" id="changePasswordCheckbox" value="change password!">
<label for="changePasswordCheckbox">Change Password</label><br>

<!-- Password change form initially hidden -->
<form action="{{ route('password.update') }}" method="POST" id="passwordForm" style="display: none;">
    @csrf
    @method('put')
    <div class="row gx-4 gy-3">

        <div class="col-sm-6">
            <label class="form-label" for="password">New Password</label>
            <div class="password-toggle">
                <input class="form-control" type="password" id="password" name="password">
                <label class="password-toggle-btn" aria-label="Show/hide password">
                    <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                </label>
                @if($errors->has('password'))
                    <p class="alert-danger alert">{{ $errors->first('password') }}</p>
                @endif
            </div>
        </div>

        <div class="col-sm-6">
            <label class="form-label" for="password_confirmation">Confirm Password</label>
            <div class="password-toggle">
                <input class="form-control" type="password" id="password_confirmation" name="password_confirmation">
                <label class="password-toggle-btn" aria-label="Show/hide password">
                    <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                </label>
                @if($errors->has('password_confirmation'))
                    <p class="alert-danger alert">{{ $errors->first('password_confirmation') }}</p>
                @endif
            </div>
        </div>

        <div class="col-sm-6">
            <label class="form-label" for="current_password">Current Password</label>
            <div class="password-toggle">
                <input class="form-control" type="password" id="current_password" name="current_password">
                <label class="password-toggle-btn" aria-label="Show/hide password">
                    <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                </label>
                @if($errors->has('current_password'))
                    <p class="alert-danger alert">{{ $errors->first('current_password') }}</p>
                @endif
            </div>
        </div>
        <div class="col-12">
            <hr class="mt-2 mb-3">
            <div class="d-flex flex-wrap justify-content-between align-items-center">
                <button class="btn btn-primary mt-3 mt-sm-0" type="submit">Change Password</button>
            </div>
        </div>
    </div>
</form>

<script>
    document.getElementById('changePasswordCheckbox').addEventListener('change', function() {
        var passwordForm = document.getElementById('passwordForm');
        if (this.checked) {
            passwordForm.style.display = 'block';
        } else {
            passwordForm.style.display = 'none';
        }
    });
</script>


@endsection
