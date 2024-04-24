@extends('shop-layout.main')
@section('main-content')
    @if($errors->any())
        @foreach($errors as $error)
            {{ $error }}
        @endforeach
    @endif
<div class="container pt-1 pb-1">
    <div class="row justify-content-center pt-1 pt-lg-3 text-center">
        <div class="col-md-6 pt-4 mt-3 mt-md-0">
            <div class="card border-0 shadow">
                <div class="card-body">
                    <a href="{{ route('home') }}">
                        <img src="{{ asset('img/TheBG.png') }}" alt="" class="pb-3" style="max-width: 200px; height: auto;">
                    </a>
                    <h2 class="h4 mb-3">Registration</h2>
                    <p class="fs-sm text-muted mb-4">Registration takes less than a minute but gives you full control over your orders.</p>
                    <form method="POST" class="needs-validation" action="{{ route('register') }}" >
                        @csrf
                        <div class="row gx-4 gy-3">
                            <div class="col-sm-6">
                                <label class="form-label" for="name">First Name</label>
                                <input class="form-control" type="text" id="name" name="name" value="{{ old('name') }}"  >
                                @if($errors->has('name'))
                                    <p class="alert-danger alert">{{ $errors->first('name') }}</p>
                                @endif
                            </div>
                            <div class="col-sm-6">
                                <label class="form-label" for="last_name">Last Name</label>
                                <input class="form-control" type="text" id="last_name" name="last_name" value="{{ old('last_name') }}"  >
                                    @if($errors->has('last_name'))
                                        <p class="alert-danger alert">{{ $errors->first('last_name') }}</p>
                                    @endif
                            </div>
                            <div class="col-sm-6">
                                <label class="form-label" for="email">E-mail Address</label>
                                <input class="form-control" type="email" id="email" name="email" value="{{ old('email') }}"  >
                                    @if($errors->has('email'))
                                        <p class="alert-danger alert">{{ $errors->first('email') }}</p>
                                    @endif
                            </div>
                            <div class="col-sm-6">
                                <label class="form-label" for="phone">Phone Number</label>
                                <input class="form-control" type="text" id="phone" name="phone"  >
                                @if($errors->has('phone'))
                                    <p class="alert-danger alert">{{ $errors->first('phone') }}</p>
                                @endif
                            </div>
                            <div class="col-sm-6">
                                <label class="form-label" for="password">Password</label>
                                <input class="form-control" type="password" id="password" name="password"  >
                                @if($errors->has('password'))
                                    <p class="alert-danger alert">{{ $errors->first('password') }}</p>
                                @endif
                            </div>
                            <div class="col-sm-6">
                                <label class="form-label" for="password_confirmation">Confirm Password</label>
                                <input class="form-control" type="password" id="password_confirmation" name="password_confirmation"  >                        <div class="invalid-feedback">Passwords do not match!</div>
                                @if($errors->has('password_confirmation'))
                                    <p class="alert-danger alert">{{ $errors->first('password_confirmation') }}</p>
                                @endif
                            </div>
                            <div class="col-12 text-end">
                                <button class="btn btn-primary" type="submit"><i class="ci-user me-2 ms-n1"></i>{{ __('Register') }}</button>
                            </div>
                        </div>
                    </form>
                    <a class="nav-link-inline fs-sm font-black" href="{{ route('login') }}" >{{ __('Already registered?') }}</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
