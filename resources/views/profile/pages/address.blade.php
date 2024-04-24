@extends('shop-layout.app')
@section('address1' , 'Account')
@section('address2' , 'address')
@section('address3' , 'My Address')
@section('address-bar' , View::make('shop-layout.address-bar'))
@section('sidebar-before')
    @include('profile.layout.sidebar' , ['customer' => $customer])
@endsection
@section('section-content')
<!-- Toolbar-->
<div class="d-none d-lg-flex justify-content-between align-items-center pt-lg-3 pb-4 pb-lg-5 mb-lg-3">
    <h6 class="fs-base text-light mb-0">List of your registered addresses:</h6>
    <form action="{{ route('logout') }}" method="POST" style="display: inline;">
        @csrf
        <button type="submit" class="btn btn-primary btn-sm">
            <i class="ci-sign-out me-2"></i>{{ __('Log Out') }}
        </button>
    </form>
</div>

@if (session('status') === 'address-delete')
    <div x-data="{ show: true }" x-show="show" x-init="setTimeout(() => show = false, 2000)">
        <p class="alert-success alert text-sm text-gray-600 dark:text-gray-400">Address Delete Successfully!</p>
    </div>
@endif
<!-- Addresses list-->
<div class="table-responsive fs-md">
    <table class="table table-hover mb-0">
        <thead>
        <tr>
            <th>Address</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        @foreach($addresses as $address)
            <tr>
                <td class="py-3 align-middle">{{ $address->address }}<span class="align-middle badge bg-info ms-2">Primary</span></td>
                <td class="py-3 align-middle">
                    <a class="nav-link-style me-2" href="#edit-address" data-bs-toggle="modal" title="Edit">
                        <i class="ci-edit"></i>
                    </a>
                    <form action="{{ route('address.destroy' , $address) }}" method="post">
                        @csrf
                        @method('delete')
                        <button class="nav-link-style text-danger" type="submit" data-bs-toggle="tooltip">
{{--                            TODO change class --}}
                            <div class="ci-trash"></div>
                        </button>
                    </form>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>
<div class="text-sm-end pt-4"><a class="btn btn-primary" href="#add-address" data-bs-toggle="modal">Add new address</a></div>
<form action="{{ route('address.store') }}" class="needs-validation modal fade" method="post" id="add-address" tabindex="-1" >
    @csrf
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Add a new address</h5>
                <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row gx-4 gy-3">
                    <div class="col-sm-6">
                        <label class="form-label" for="state">State</label>
                        <input class="form-control" type="text" id="state" name="state">
                        @if($errors->has('state'))
                            <p class="alert-danger alert">{{ $errors->first('state') }}</p>
                        @endif
                    </div>
                    <div class="col-sm-6">
                        <label class="form-label" for="city">City</label>
                        <input class="form-control" type="text" id="city" name="city">
                        @if($errors->has('city'))
                            <p class="alert-danger alert">{{ $errors->first('city') }}</p>
                        @endif
                    </div>
                    <div class="col-sm-6">
                        <label class="form-label" for="postal_code">Postal-Code</label>
                        <input class="form-control" type="number" id="postal_code" name="postal_code">
                        @if($errors->has('postal_code'))
                            <p class="alert-danger alert">{{ $errors->first('postal_code') }}</p>
                        @endif
                    </div>
                    <div class="col-sm-6">
                        <label class="form-label" for="address">Address</label>
                        <input class="form-control" type="text" id="address" name="address">
                        @if($errors->has('address'))
                            <p class="alert-danger alert">{{ $errors->first('address') }}</p>
                        @endif
                    </div>
                    <div class="col-12">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="address-primary">
{{--                            TODO: add status to address table--}}
                            <label class="form-check-label" for="address-primary">Make this address primary</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-bs-dismiss="modal">Close</button>
                <button class="btn btn-primary btn-shadow" type="submit">Add address</button>
            </div>
        </div>
    </div>
</form>

<form action="{{ route('address.store') }}" class="needs-validation modal fade" method="post" id="edit-address" tabindex="-1" >
    @csrf
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Add a new address</h5>
                <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row gx-4 gy-3">
                    <div class="col-sm-6">
                        <label class="form-label" for="state">State</label>
                        <input class="form-control" type="text" id="state" name="state">
                        @if($errors->has('state'))
                            <p class="alert-danger alert">{{ $errors->first('state') }}</p>
                        @endif
                    </div>
                    <div class="col-sm-6">
                        <label class="form-label" for="city">City</label>
                        <input class="form-control" type="text" id="city" name="city">
                        @if($errors->has('city'))
                            <p class="alert-danger alert">{{ $errors->first('city') }}</p>
                        @endif
                    </div>
                    <div class="col-sm-6">
                        <label class="form-label" for="postal_code">Postal-Code</label>
                        <input class="form-control" type="number" id="postal_code" name="postal_code">
                        @if($errors->has('postal_code'))
                            <p class="alert-danger alert">{{ $errors->first('postal_code') }}</p>
                        @endif
                    </div>
                    <div class="col-sm-6">
                        <label class="form-label" for="address">Address</label>
                        <input class="form-control" type="text" id="address" name="address">
                        @if($errors->has('address'))
                            <p class="alert-danger alert">{{ $errors->first('address') }}</p>
                        @endif
                    </div>
                    <div class="col-12">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="address-primary">
                            {{--                            TODO: add status to address table--}}
                            <label class="form-check-label" for="address-primary">Make this address primary</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-bs-dismiss="modal">Close</button>
                <button class="btn btn-primary btn-shadow" type="submit">Add address</button>
            </div>
        </div>
    </div>
</form>

@endsection
