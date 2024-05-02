@extends('shop-layout.app')
@section('address-bar' , View::make('shop-layout.address-bar'))
@section('address1' , 'Shop')
@section('address2' , 'Checkout')
@section('address3' , 'review')
@section('checkout-prev-route' , 'shipping')
@section('checkout-next-route' , 'review')
@section('checkout-steps')
    @include('profile.checkout.layout.step')
@endsection
@section('section-content')
    <!-- Order details-->
    <h2 class="h6 pb-3 mb-2">Choose payment method</h2>
    <div class="accordion mb-2" id="payment-method">
        <div class="accordion-item">
            <h3 class="accordion-header"><a class="accordion-button" href="#card" data-bs-toggle="collapse"><i class="ci-card fs-lg me-2 mt-n1 align-middle"></i>Pay with zarinpal</a></h3>
            <div class="accordion-collapse collapse show" id="card" data-bs-parent="#payment-method">
                <div class="accordion-body">
                    <form method="POST" class="credit-card-form row" action="{{ route('zarin-pay') }}">
                        @csrf
                        <div class="col-sm-6">
                            <button class="btn btn-outline-primary d-block w-100 mt-0" type="submit">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h3 class="accordion-header"><a class="accordion-button collapsed" href="#paypal" data-bs-toggle="collapse"><i class="ci-paypal me-2 align-middle"></i>Pay with PayPal</a></h3>
            <div class="accordion-collapse collapse" id="paypal" data-bs-parent="#payment-method">
                <div class="accordion-body fs-sm">
                    <p><span class='fw-medium'>PayPal</span> - the safer, easier way to pay</p>
                    <form class="row needs-validation" method="post" novalidate>
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <input class="form-control" type="email" placeholder="E-mail" required>
                                <div class="invalid-feedback">Please enter valid email address</div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <input class="form-control" type="password" placeholder="Password" required>
                                <div class="invalid-feedback">Please enter your password</div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="d-flex flex-wrap justify-content-between align-items-center"><a class="nav-link-style" href="#">Forgot password?</a>
                                <button class="btn btn-primary" type="submit">Log In</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h3 class="accordion-header"><a class="accordion-button collapsed" href="#points" data-bs-toggle="collapse"><i class="ci-gift me-2"></i>Redeem Reward Points</a></h3>
            <div class="accordion-collapse collapse" id="points" data-bs-parent="#payment-method">
                <div class="accordion-body">
                    <p>You currently have<span class="fw-medium">&nbsp;384</span>&nbsp;Reward Points to spend.</p>
                    <div class="form-check d-block">
                        <input class="form-check-input" type="checkbox" id="use_points">
                        <label class="form-check-label" for="use_points">Use my Reward Points to pay for this order.</label>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('sidebar-after')
    @include('profile.checkout.layout.checkout-sidebar-product')
@endsection
@section('back-or-proceed')
    @include('profile.checkout.layout.back-or-proceed')
@endsection
