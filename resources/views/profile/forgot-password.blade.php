@extends('shop-layout.main')
@section('main-content')
<div class="container pt-1 pb-1">
    <div class="row justify-content-center pt-1 pt-lg-3 text-center">
        <div class="col-md-6 pt-4 mt-3 mt-md-0">
            <div class="card border-0 shadow">
                <div class="card-body">
                    <a href="{{ route('home') }}">
                        <img src="{{ asset('img/TheBG.png') }}" alt="" class="pb-3" style="max-width: 200px; height: auto;">
                    </a>
                    <h2 class="h3 mb-4">Forgot your password?</h2>
        {{--            <p class="fs-md">Change your password in three easy steps. This helps to keep your new password secure.</p>--}}
                    <ol class="list-unstyled fs-md">
                        <li><span class="text-primary me-2">.</span>
                            {{ __('Forgot your password? No problem. Just let us know your email address and we will email you a password reset link that will allow you to choose a new one.') }}
                        </li>
                    </ol>
                    <div class="card py-2 mt-4">
                        <form class="card-body needs-validation" method="POST" action="{{ route('password.email') }}" novalidate>
                            @csrf
                            <div class="mb-3">
                                <label class="form-label" for="email">Enter your email address</label>
                                <input class="form-control" type="email" id="email" name="email" required>
                                <div class="invalid-feedback">Please provide valid email address.</div>
                            </div>
                            <button class="btn btn-primary" type="submit">
                                {{ __('Email Password Reset Link') }}
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
