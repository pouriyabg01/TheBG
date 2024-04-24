@extends('shop-layout.app')
@section('address1' , 'Account')
@section('address2' , 'Orders')
@section('address3' , 'My Order')
@section('address-bar' , View::make('shop-layout.address-bar'))
@section('sidebar-before')
    @include('profile.layout.sidebar' , ['customer' => $customer])
@endsection
@section('section-content')
<!-- Toolbar-->
<div class="d-flex justify-content-between align-items-center pt-lg-2 pb-4 pb-lg-5 mb-lg-3">
    <div class="d-flex align-items-center">
        <label class="d-none d-lg-block fs-sm text-light text-nowrap opacity-75 me-2" for="order-sort">Sort orders:</label>
        <label class="d-lg-none fs-sm text-nowrap opacity-75 me-2" for="order-sort">Sort orders:</label>
        <select class="form-select" id="order-sort">
            <option>All</option>
            <option>Delivered</option>
            <option>In Progress</option>
            <option>Delayed</option>
            <option>Canceled</option>
        </select>
    </div>
    <form action="{{ route('logout') }}" method="POST" style="display: inline;">
        @csrf
        <button type="submit" class="btn btn-primary btn-sm">
            <i class="ci-sign-out me-2"></i>{{ __('Log Out') }}
        </button>
    </form>
</div>
<!-- Orders list-->
<div class="table-responsive fs-md mb-4">
    <table class="table table-hover mb-0">
        <thead>
        <tr>
            <th>Order #</th>
            <th>Date Purchased</th>
            <th>Status</th>
            <th>Total</th>
        </tr>
        </thead>
        <tbody>
        @foreach($orders as $order)
            <tr>
                <td class="py-3"><a class="nav-link-style fw-medium fs-sm" href="#order-details" data-bs-toggle="modal">{{ $order->number }}</a></td>
                <td class="py-3">{{ date_format($order->created_at , 'M d, Y') }}</td>
                <td class="py-3">
                    @if($order->status == 'pending')<span class="badge bg-info m-0">@endif
                    @if($order->status == 'canceled')<span class="badge bg-danger m-0">@endif
                    @if($order->status == 'completed')<span class="badge bg-success m-0">@endif
                    @if($order->status == 'in-process')<span class="badge bg-warning m-0">@endif

                        {{ $order->status }}
                    </span>
                </td>
                <td class="py-3">${{ $order->total_price }}</td>
            </tr>
        @endforeach
        <tr>
            <td class="py-3"><a class="nav-link-style fw-medium fs-sm" href="#order-details" data-bs-toggle="modal">78A643CD409</a></td>
            <td class="py-3">December 09, 2018</td>
            <td class="py-3"><span class="badge bg-danger m-0">Canceled</span></td>
            <td class="py-3"><span>$760.50</span></td>
        </tr>
        </tbody>
    </table>
</div>
<!-- Pagination-->
<nav class="d-flex justify-content-between pt-2" aria-label="Page navigation">
            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="#"><i class="ci-arrow-left me-2"></i>Prev</a></li>
            </ul>
            <ul class="pagination">
                <li class="page-item d-sm-none"><span class="page-link page-link-static">1 / 5</span></li>
                <li class="page-item active d-none d-sm-block" aria-current="page"><span class="page-link">1<span class="visually-hidden">(current)</span></span></li>
                <li class="page-item d-none d-sm-block"><a class="page-link" href="#">2</a></li>
                <li class="page-item d-none d-sm-block"><a class="page-link" href="#">3</a></li>
                <li class="page-item d-none d-sm-block"><a class="page-link" href="#">4</a></li>
                <li class="page-item d-none d-sm-block"><a class="page-link" href="#">5</a></li>
            </ul>
            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="#" aria-label="Next">Next<i class="ci-arrow-right ms-2"></i></a></li>
            </ul>
        </nav>
@endsection
