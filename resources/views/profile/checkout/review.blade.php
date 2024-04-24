@extends('shop-layout.app')
@section('address-bar' , View::make('shop-layout.address-bar'))
@section('address1' , 'Shop')
@section('address2' , 'Checkout')
@section('address3' , 'review')
@section('checkout-prev-route' , 'shipping')
@section('checkout-next-route' , 'complete')
@section('checkout-steps')
    @include('profile.checkout.layout.step')
@endsection
@section('section-content')
<!-- Order details-->
<h2 class="h6 pt-1 pb-3 mb-3 border-bottom">Review your order</h2>
@foreach($cartItem as $product)
    <!-- Item-->
    <div class="d-sm-flex justify-content-between my-4 pb-3 border-bottom">
        <div class="d-sm-flex text-center text-sm-start"><a class="d-inline-block flex-shrink-0 mx-auto me-sm-4" href="{{ $product->title }}"><img src="{{ asset('img/shop/cart/02.jpg') }}" width="160" alt="Product"></a>
            <div class="pt-2">
                <h3 class="product-title fs-base mb-2"><a href="shop-single-v1.html">{{ $product->title }}</a></h3>
                <div class="fs-sm"><span class="text-muted me-2">Size:</span>8.5</div>
                <div class="fs-sm"><span class="text-muted me-2">Color:</span>White &amp; Blue</div>
                <div class="fs-lg text-accent pt-2">{{ $product->price }}</div>
            </div>
        </div>
        <div class="pt-2 pt-sm-0 ps-sm-3 mx-auto mx-sm-0 text-center text-sm-end" style="max-width: 9rem;">
            <p class="mb-0"><span class="text-muted fs-sm">Quantity:</span><span>{{ $product->pivot->quantity }}</span></p>
            <button class="btn btn-link px-0" type="button"><i class="ci-edit me-2"></i><span class="fs-sm">Edit</span></button>
        </div>
    </div>
@endforeach

<!-- Client details-->
<div class="bg-secondary rounded-3 px-4 pt-4 pb-2">
    <div class="row">
        <div class="col-sm-6">
            <h4 class="h6">Shipping to:</h4>
            <ul class="list-unstyled fs-sm">
                <li><span class="text-muted">Client:&nbsp;</span>Susan Gardner</li>
                <li><span class="text-muted">Address:&nbsp;</span>44 Shirley Ave. West Chicago, IL 60185, USA</li>
                <li><span class="text-muted">Phone:&nbsp;</span>+1 (808) 764 554 330</li>
            </ul>
        </div>
        <div class="col-sm-6">
            <h4 class="h6">Payment method:</h4>
            <ul class="list-unstyled fs-sm">
                <li><span class="text-muted">Credit Card:&nbsp;</span>**** **** **** 5300</li>
            </ul>
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
