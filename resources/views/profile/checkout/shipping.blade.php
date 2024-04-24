@extends('shop-layout.app')
@section('address-bar' , View::make('shop-layout.address-bar'))
@section('address1' , 'Shop')
@section('address2' , 'Checkout')
@section('address3' , 'shipping')
@section('checkout-prev-route' , 'detail')
@section('checkout-next-route' , 'review')
@section('checkout-steps')
    @include('profile.checkout.layout.step')
@endsection

@section('section-content')
    <h2 class="h6 pb-3 mb-2">Choose shipping method</h2>
    <div class="table-responsive">
        <table class="table table-hover fs-sm border-top">
            <thead>
            <tr>
                <th class="align-middle"></th>
                <th class="align-middle">Shipping method</th>
                <th class="align-middle">Delivery time</th>
                <th class="align-middle">Handling fee</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    <div class="form-check mb-4">
                        <input class="form-check-input" type="radio" id="courier" name="shipping-method" checked>
                        <label class="form-check-label" for="courier"></label>
                    </div>
                </td>
                <td class="align-middle"><span class="text-dark fw-medium">Courier</span><br><span class="text-muted">All addresses (default zone), United States &amp; Canada</span></td>
                <td class="align-middle">2 - 4 days</td>
                <td class="align-middle">$26.50</td>
            </tr>
            <tr>
                <td>
                    <div class="form-check mb-4">
                        <input class="form-check-input" type="radio" id="local" name="shipping-method">
                        <label class="form-check-label" for="local"></label>
                    </div>
                </td>
                <td class="align-middle"><span class="text-dark fw-medium">Local Shipping</span><br><span class="text-muted">All addresses (default zone), United States &amp; Canada</span></td>
                <td class="align-middle">up to one week</td>
                <td class="align-middle">$10.00</td>
            </tr>
            <tr>
                <td>
                    <div class="form-check mb-4">
                        <input class="form-check-input" type="radio" id="flat" name="shipping-method">
                        <label class="form-check-label" for="flat"></label>
                    </div>
                </td>
                <td class="align-middle"><span class="text-dark fw-medium">Flat Rate</span><br><span class="text-muted">All addresses (default zone)</span></td>
                <td class="align-middle">5 - 7 days</td>
                <td class="align-middle">$33.85</td>
            </tr>
            <tr>
                <td>
                    <div class="form-check mb-4">
                        <input class="form-check-input" type="radio" id="ups" name="shipping-method">
                        <label class="form-check-label" for="ups"></label>
                    </div>
                </td>
                <td class="align-middle"><span class="text-dark fw-medium">UPS Ground Shipping</span><br><span class="text-muted">All addresses (default zone)</span></td>
                <td class="align-middle">4 - 6 days</td>
                <td class="align-middle">$18.00</td>
            </tr>
            <tr>
                <td>
                    <div class="form-check mb-4">
                        <input class="form-check-input" type="radio" id="pickup" name="shipping-method">
                        <label class="form-check-label" for="pickup"></label>
                    </div>
                </td>
                <td class="align-middle"><span class="text-dark fw-medium">Local Pickup from store</span><br><span class="text-muted">All addresses (default zone)</span></td>
                <td class="align-middle">&mdash;</td>
                <td class="align-middle">$0.00</td>
            </tr>
            <tr>
                <td>
                    <div class="form-check mb-4">
                        <input class="form-check-input" type="radio" id="locker" name="shipping-method">
                        <label class="form-check-label" for="locker"></label>
                    </div>
                </td>
                <td class="align-middle"><span class="text-dark fw-medium">Pick Up at Cartzilla Locker</span><br><span class="text-muted">All addresses (default zone), United States &amp; Canada</span></td>
                <td class="align-middle">&mdash;</td>
                <td class="align-middle">$9.99</td>
            </tr>
            <tr>
                <td>
                    <div class="form-check mb-4">
                        <input class="form-check-input" type="radio" id="global-export" name="shipping-method">
                        <label class="form-check-label" for="global-export"></label>
                    </div>
                </td>
                <td class="align-middle"><span class="text-dark fw-medium">Cartzilla Global Export</span><br><span class="text-muted fs-sm">All addresses (default zone), outside United States</span></td>
                <td class="align-middle">3 - 4 days</td>
                <td class="align-middle">$25.00</td>
            </tr>
            <tr>
                <td>
                    <div class="form-check mb-4">
                        <input class="form-check-input" type="radio" id="same-day" name="shipping-method">
                        <label class="form-check-label" for="same-day"></label>
                    </div>
                </td>
                <td class="align-middle"><span class="text-dark fw-medium">Same-Day Delivery</span><br><span class="text-muted">Only United States</span></td>
                <td class="align-middle">&mdash;</td>
                <td class="align-middle">$34.00</td>
            </tr>
            <tr>
                <td>
                    <div class="form-check mb-4">
                        <input class="form-check-input" type="radio" id="international" name="shipping-method">
                        <label class="form-check-label" for="international"></label>
                    </div>
                </td>
                <td class="align-middle"><span class="text-dark fw-medium">International Shipping</span><br><span class="text-muted">All addresses (default zone)</span></td>
                <td class="align-middle">up to 15 days</td>
                <td class="align-middle">$27.00</td>
            </tr>
            </tbody>
        </table>
    </div>
@endsection
@section('sidebar-after')
    @include('profile.checkout.layout.checkout-sidebar-product')
@endsection
@section('back-or-proceed')
    @include('profile.checkout.layout.back-or-proceed')
@endsection
