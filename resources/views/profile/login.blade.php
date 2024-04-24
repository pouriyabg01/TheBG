@extends('shop-layout.main')
@section('main-content')
    @if (session('status')) {{ session('status') }} @endif
<div class="container pt-1 pb-1">
    <div class="row justify-content-center pt-1 pt-lg-3 text-center">
        <div class="col-md-6 pt-4 mt-3 mt-md-0">
            <div class="card border-0 shadow">
                <div class="card-body">
                    <a href="{{ route('home') }}">
                    <img src="{{ asset('img/TheBG.png') }}" alt="" class="pb-3" style="max-width: 200px; height: auto;">
                    </a>
                    <h2 class="h4 mb-1">Log In</h2>
                    <div class="py-3">
                        <h3 class="d-inline-block align-middle fs-base fw-medium mb-2 me-2">With social account:</h3>
                        <div class="d-inline-block align-middle"><a class="btn-social bs-google me-2 mb-2" href="#" data-bs-toggle="tooltip" title="Sign in with Google"><i class="ci-google"></i></a><a class="btn-social bs-facebook me-2 mb-2" href="#" data-bs-toggle="tooltip" title="Sign in with Facebook"><i class="ci-facebook"></i></a><a class="btn-social bs-twitter me-2 mb-2" href="#" data-bs-toggle="tooltip" title="Sign in with Twitter"><i class="ci-twitter"></i></a></div>
                    </div>
                    <hr>
                    <h3 class="fs-base pt-4 pb-2">Or using form below</h3>
                        <form method="POST" class="needs-validation" action="{{ route('login') }}" novalidate>
                            @csrf
                        <div class="input-group mb-3"><i class="ci-mail position-absolute top-50 translate-middle-y text-muted fs-base ms-3"></i>
                            <input class="form-control rounded-start" id="email" name="email" type="email" placeholder="Email" required>
                            @error('email')
                            <div class="alert alert-danger">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>
                        <div class="input-group mb-3"><i class="ci-locked position-absolute top-50 translate-middle-y text-muted fs-base ms-3"></i>
                            <div class="password-toggle w-100">
                                <input id="password" name="password" class="form-control" type="password" placeholder="Password" required>
                                <label class="password-toggle-btn" aria-label="Show/hide password">
                                    <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                                </label>
                                @error('password')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                        </div>
                        <div class="d-flex flex-wrap justify-content-between">
                            <div class="form-check">
                                <input class="form-check-input" name="remember" type="checkbox" checked id="remember_me">
                                <label class="form-check-label" for="remember_me">{{ __('Remember me') }}</label>
{{--                            </div><a class="nav-link-inline fs-sm" href="{{ route('password-recovery') }}">Forgot password?</a>--}}
                            </div>
                            @if (Route::has('password.request'))
                                <a class="nav-link-inline fs-sm" href="{{ route('password.request') }}">{{ __('Forgot your password?') }}</a>
                            @endif
                        </div>
                        <hr class="mt-4">
                        <div class="text-end pt-4">
                            <button class="btn btn-primary" type="submit"><i class="ci-sign-in me-2 ms-n21"></i>{{ __('Log in') }}</button>
                        </div>
                        </form>
                </div>
            </div>
        </div>
{{--<h2 class="h4 mb-3">No account? Sign up</h2>--}}

@endsection
