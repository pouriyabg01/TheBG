@extends('shop-layout.app')
@section('address-bar' , View::make('shop-layout.address-bar'))
@section('address1' , 'Shop')
@section('address2' , 'Checkout')
@section('address3' , 'Detail')
@section('checkout-prev-route' , 'cart')
@section('checkout-next-route' , 'shipping')
@section('checkout-steps')
    @include('profile.checkout.layout.step')
@endsection
@section('checkout-profile-info')
    @include('profile.checkout.layout.profile-info')
@endsection
@section('section-content')

<h6 class="mb-3 py-3 border-bottom">Billing address</h6>
<div class="form-check">
    <input class="form-check-input" type="checkbox" id="same-address" onchange="toggleShippingAddress()">
    <label class="form-check-label" for="same-address">Use my primary address</label>
</div><br>
<script>
    function toggleShippingAddress() {
        const sameAddress = document.getElementById('same-address');
        const shippingAddress = document.getElementById('new-address');

        if (sameAddress.checked) {

            shippingAddress.style.display = 'none';
        } else {
            shippingAddress.style.display = 'block';
        }
    }
</script>
<div id="new-address">
<form action="{{ route('address.store') }}" method="POST">
    @csrf
    <h2 class="h6 pt-1 pb-3 mb-3 border-bottom">Shipping address</h2>
    <input type="hidden" name="shipping" value="true">
        <div class="row gx-4 gy-3">
            <div class="col-sm-6">
                <label class="form-label" for="name">Name</label>
                <input class="form-control" type="text" name="name" id="name">
                @if($errors->has('name'))
                    <p class="alert-danger alert">{{ $errors->first('name') }}</p>
                @endif
            </div>

            <div class="col-sm-6">
                <label class="form-label" for="phone">Phone number</label>
                <input class="form-control" type="number" name="phone" id="phone">
                @if($errors->has('phone'))
                    <p class="alert-danger alert">{{ $errors->first('phone') }}</p>
                @endif
            </div>

            <div class="col-sm-6">
                <label class="form-label" for="state">State</label>
                <input class="form-control" type="text" name="state" id="state">
                @if($errors->has('state'))
                    <p class="alert-danger alert">{{ $errors->first('state') }}</p>
                @endif
            </div>

            <div class="col-sm-6">
                <label class="form-label" for="city">City</label>
                <input class="form-control" type="text" name="city" id="city">
                @if($errors->has('city'))
                    <p class="alert-danger alert">{{ $errors->first('city') }}</p>
                @endif
            </div>

            <div class="col-sm-6">
                <label class="form-label" for="address">No. address</label>
                <input class="form-control" type="text" name="address" id="address">
                @if($errors->has('address'))
                    <p class="alert-danger alert">{{ $errors->first('address') }}</p>
                @endif
            </div>

            <div class="col-sm-6">
                <label class="form-label" for="postal_code">postal-code</label>
                <input class="form-control" type="number" name="postal_code" id="postal_code">
                @if($errors->has('postal_code'))
                    <p class="alert-danger alert">{{ $errors->first('postal_code') }}</p>
                @endif
            </div>

            <div class="col-sm-6 text-end"></div>
            <div class="col-sm-6 text-end">
                <button type="submit" class="btn btn-info form-control-lg">submit and proceed</button>
            </div>
        </div>
</form>
</div>
@endsection

@section('sidebar-after')
    @include('profile.checkout.layout.checkout-sidebar-product')
@endsection
@section('back-or-proceed')
    @include('profile.checkout.layout.back-or-proceed')
@endsection

