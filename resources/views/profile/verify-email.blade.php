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
                    <h2 class="h3 mb-4">Email Verification</h2>
                    {{ __('Thanks for signing up! Before getting started, could you verify your email address by clicking on the link we just emailed to you? If you didn\'t receive the email, we will gladly send you another.') }}
                    @if (session('status') == 'verification-link-sent')
                        <div class="mb-4 font-medium text-sm text-green-600 dark:text-green-400">
                            {{ __('A new verification link has been sent to the email address you provided during registration.') }}
                        </div>
                    @endif
                    <ol class="list-unstyled fs-md">
                        <li><span class="text-primary me-2">.</span>
                            {{--                        {{ __('Forgot your password? No problem. Just let us know your email address and we will email you a password reset link that will allow you to choose a new one.') }}--}}
                        </li>
                    </ol>
                    <div class="card py-2 mt-4">
                        <form class="card-body needs-validation" method="POST" action="{{ route('verification.send') }}" novalidate>
                            @csrf

                            <button class="btn btn-primary" type="submit">
                                {{ __('Resend Verification Email') }}
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
