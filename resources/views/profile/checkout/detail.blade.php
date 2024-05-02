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
    <input class="form-check-input" name="primary" type="checkbox" id="same-address" onchange="toggleShippingAddress()" checked>
    <label class="form-check-label" for="same-address">Use my primary address</label>
</div><br>
<script>
    function newAddressFrom(){
        const checkboxFormAddress = document.getElementById('checkbox-form-address');
        const addressForm = document.getElementById('address-from');

        if (checkboxFormAddress.checked) {
            document.getElementById('exists-address').style.display = 'none';
            addressForm.style.display = 'block';
        } else {
            document.getElementById('exists-address').style.display = 'block';
            addressForm.style.display = 'none';
        }
    }
    function toggleShippingAddress() {
        const processBTN = document.querySelectorAll('.processBTN');
        const sameAddress = document.getElementById('same-address');
        const shippingAddress = document.getElementById('new-address');

        if (sameAddress.checked) {
            processBTN.forEach(item => {
                item.style.display = 'block';
            });
            shippingAddress.style.display = 'none';
        } else {
            processBTN.forEach(item => {
                item.style.display = 'none';
            });
            shippingAddress.style.display = 'block';
        }
    }
    document.addEventListener('DOMContentLoaded' , function () {
        const addressForm = document.getElementById('address-from');
        const route = addressForm.getAttribute('data-route');
        const redirect =  addressForm.getAttribute('data-redirect');
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        addressForm.addEventListener('submit', function (e) {
            e.preventDefault();
            const formData = new FormData(addressForm);

            $.ajax({
                url: route,
                type: 'POST',
                data: formData,
                processData: false,
                contentType: false,
                dataType: 'json',
                success: function (data) {
                    window.location.href = redirect;
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    if (jqXHR.status === 404) {
                        Swal.fire({
                            position: "top-end",
                            icon: "error",
                            title: "address not find",
                            showConfirmButton: false,
                            timer: 1500
                        });
                    }
                    if (jqXHR.status === 422) {
                        $('.alert-danger').remove();
                        const errors = jqXHR.responseJSON.error;
                        Object.keys(errors).forEach(function (field) {
                            var errorText = errors[field][0];
                            var inputElement = $('input[name="' + field + '"]');
                            inputElement.after('<div class="alert alert-danger">' + errorText + '</div>');
                        });
                    }
                }
            })
        });
    });
</script>
<div id="new-address" style="display: none">
    <div class="form-check">
        <input class="form-check-input" name="primary" type="checkbox" id="checkbox-form-address" onchange="newAddressFrom()">
        <label class="form-check-label" for="same-address">Add new address</label>
    </div><br>
    <form data-route="{{ route('address.store') }}" data-redirect="{{ route('checkout-shipping') }}" method="POST" id="address-from" style="display: none">
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
    </form >
    <form id="exists-address" action="{{ route('order-address') }}" method="POST" style="display: block">
        <h2 class="h6 pt-1 pb-3 mb-3">Or use existence address</h2>
        @csrf
        <table class="table table-hover fs-sm border-top">
            <thead>
            <tr>
                <th class="align-middle"></th>
                <th class="align-middle">Info</th>
                <th class="align-middle">Phone</th>
            </tr>
            </thead>
            <tbody>
            @foreach(auth('customer')->user()->addresses as $address)
                <tr>
                    <td>
                        <div class="form-check mb-4">
                            <input class="form-check-input" name="exists_address" value="{{ $address->id }}" type="radio" id="{{ $address->id }}">
                            <label class="form-check-label" for="{{$address->id}}"></label>
                        </div>
                    </td>
                    <td class="align-middle"><span class="text-dark fw-medium">{{ $address->name }}</span><br><span class="text-muted">{{ $address->address }}</span></td>
                    <td class="align-middle">{{ $address->phone }}</td>
                </tr>
            @endforeach
            </tbody>
        </table>
        <div class="col-sm-6 text-start pb-2">
            <button type="submit" class="btn btn-info jus form-control-lg">submit and proceed</button>
        </div>
    </form>
</div>
@endsection

@section('sidebar-after' , View::make('profile.checkout.layout.checkout-sidebar-product'))
@section('back-or-proceed' , View::make('profile.checkout.layout.back-or-proceed'))
@section('mobile' , View::make('profile.checkout.layout.mobile-B-or-P'))
