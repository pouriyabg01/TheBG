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
        <tbody id="address-table">
        @foreach($addresses as $address)
            <tr class="address-item">
                <td class="py-3 align-middle address-table-{{ $address->id }}">{{ $address->address }}
                    @if($address->primary)
                        <span class="align-middle badge bg-info ms-2 primary-table">Primary</span>
                    @endif
                </td>
                <td class="py-3 align-middle">
                    <a class="nav-link-style me-2 editAddress" title="Edit"
                       data-route="{{ route('address.edit', $address) }}">
                        <i class="ci-edit"></i>
                    </a>
                    <a class="nav-link-style me-2 dellAddress" href="#" data-id="{{ $address->id }}" data-route="{{ route('address.destroy' , $address) }}" data-csrf="{{ csrf_token() }}" title="dell">
                        <i class="ci-trash"></i>
                    </a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>
<div class="text-sm-end pt-4"><a class="btn btn-primary" href="#add-address" data-bs-toggle="modal">Add new address</a></div>
<form data-route="{{ route('address.store') }}" data-csrf="{{ csrf_token() }}" class="modal fade" method="post" id="add-address" tabindex="-1" >
@csrf
    <input type="hidden" id="address-id" value="">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Add a new address</h5>
                <button class="btn-close" type="button" id="closeModal" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row gx-4 gy-3">
                    <div class="col-sm-6">
                        <label class="form-label" for="name">Name</label>
                        <input class="form-control" type="text" id="name" name="name">
                        @error('name')
                            <p class="alert-danger alert">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="col-sm-6">
                        <label class="form-label" for="phone">Phone</label>
                        <input class="form-control" type="text" id="phone" name="phone">
                        @error('phone')
                            <p class="alert-danger alert">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="col-sm-6">
                        <label class="form-label" for="state">State</label>
                        <input class="form-control" type="text" id="state" name="state">
                        @error('state')
                            <p class="alert-danger alert">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="col-sm-6">
                        <label class="form-label" for="city">City</label>
                        <input class="form-control" type="text" id="city" name="city">
                        @error('city')
                        <p class="alert-danger alert">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="col-sm-6">
                        <label class="form-label" for="postal_code">Postal-Code</label>
                        <input class="form-control" type="number" id="postal_code" name="postal_code">
                        @error('postal_code')
                        <p class="alert-danger alert">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="col-sm-6">
                        <label class="form-label" for="address">Address</label>
                        <input class="form-control" type="text" id="address" name="address">
                        @error('address')
                        <p class="alert-danger alert">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="col-12">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="1" name="primary" id="address-primary">
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
<form class="modal fade" method="post" id="edit-address" tabindex="-1">
    <input type="hidden" id="Uaddress-id">
    <input type="hidden" id="update-address-url" value="{{ route('address.update' , ['address' => 'id'])  }}">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Add a new address</h5>
                <button class="btn-close" type="button" id="UcloseModal" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row gx-4 gy-3">
                    <div class="col-sm-6">
                        <label class="form-label" for="name">Name</label>
                        <input class="form-control" type="text" id="Uname" name="name">
                        @error('name')
                            <p class="alert-danger alert">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="col-sm-6">
                        <label class="form-label" for="phone">Phone</label>
                        <input class="form-control" type="text" id="Uphone" name="phone">
                        @error('phone')
                            <p class="alert-danger alert">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="col-sm-6">
                        <label class="form-label" for="state">State</label>
                        <input class="form-control" type="text" id="Ustate" name="state">
                        @error('state')
                            <p class="alert-danger alert">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="col-sm-6">
                        <label class="form-label" for="city">City</label>
                        <input class="form-control" type="text" id="Ucity" name="city">
                        @error('city')
                        <p class="alert-danger alert">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="col-sm-6">
                        <label class="form-label" for="postal_code">Postal-Code</label>
                        <input class="form-control" type="number" id="Upostal_code" name="postal_code">
                        @error('postal_code')
                        <p class="alert-danger alert">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="col-sm-6">
                        <label class="form-label" for="address">Address</label>
                        <input class="form-control" type="text" id="Uaddress" name="address">
                        @error('address')
                        <p class="alert-danger alert">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="col-12">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="1" name="primary" id="Uaddress-primary">
                            <label class="form-check-label" for="address-primary">Toggle primary</label>
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

<script>
document.addEventListener('DOMContentLoaded' , function () {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    const addressForm = document.getElementById('add-address');
    const route = addressForm.getAttribute('data-route');
    const csrf = addressForm.getAttribute('data-csrf');
    const closeModal = document.getElementById('closeModal');
    const modal = new bootstrap.Modal(addressForm);

    //reset form and remove validation error
    modal._element.addEventListener('hidden.bs.modal' , function (){
        addressForm.reset();
        const errorMessages = document.querySelectorAll('.alert-danger');
        errorMessages.forEach(function (errorMessage) {
            errorMessage.remove();
        });
    });

    addressForm.addEventListener('submit' , function (e) {
        e.preventDefault();
        const formData = new FormData(addressForm);

        $.ajax({
            url: route,
            type: 'POST',
            headers: {
                'X-CSRF-TOKEN': csrf
            },
            data: formData,
            processData: false,
            contentType: false,
            dataType: 'json',
            success: function (data){
                if (data.success && data.address){
                    addressForm.reset();
                    closeModal.click();
                    Swal.fire({
                        position: "top-end",
                        icon: "success",
                        title: "Address Added Successfully",
                        showConfirmButton: false,
                        timer: 1500
                    });
                    const newRow = `
                        <tr class="address-item">
                            <td class="py-3 align-middle">${data.address.address}${data.address.primary ? '<span class="align-middle badge bg-info ms-2">Primary</span>' : ''}</td>
                            <td class="py-3 align-middle">
                                <a class="nav-link-style me-2" href="#edit-address" data-bs-toggle="modal" title="Edit">
                                    <i class="ci-edit"></i>
                                </a>
                                <a class="nav-link-style me-2 dellAddress" href="#" data-id="${data.address.id}" data-route="/address/${data.address.id}" data-csrf="{{ csrf_token() }}" title="Delete">
                                    <i class="ci-trash"></i>
                                </a>
                            </td>
                        </tr>`;

                    $('#address-table').append(newRow);
                }
            },
            error: function(jqXHR, textStatus, errorThrown){
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
                    Object.keys(errors).forEach(function(field) {
                        var errorText = errors[field][0];
                        var inputElement = $('input[name="' + field + '"]');
                        inputElement.after('<div class="alert alert-danger">' + errorText + '</div>');
                    });
                }
            }
        })
    });


    const dell = document.querySelectorAll('.dellAddress');

    dell.forEach( link => {
        link.addEventListener('click' , function (event) {
            event.preventDefault();
            const delRoute = this.getAttribute('data-route');
            const dellCsrf = this.getAttribute('data-csrf');
            const linkElement = this;

            $.ajax({
                url: delRoute,
                type: 'DELETE',
                headers: {
                    'X-CSRF-TOKEN': dellCsrf
                },
                success: function (data) {
                    if (data.deleted) {
                        const addressItem = linkElement.closest('.address-item');
                        if (addressItem) {
                            addressItem.remove();
                        }
                        Swal.fire({
                            position: "top-end",
                            icon: "success",
                            title: "Address deleted Successfully",
                            showConfirmButton: false,
                            timer: 1500
                        });
                    }
                },
                error: function (){

                }
            });
        });
    });//TODO change to looks like wishlist item remove


    document.querySelectorAll('.editAddress').forEach(item => {
        item.addEventListener('click', function (e) {
            e.preventDefault();
            const route = $(this).data('route');
            $.ajax({
                url: route,
                type: 'GET',
                processData: false,
                contentType: false,
                dataType: 'json',
                success: function(data) {
                    if (data.data) {
                        $('#Uaddress').val(data.data.address);
                        $('#Uaddress-id').val(data.data.id);
                        $('#Uphone').val(data.data.phone);
                        $('#Ucity').val(data.data.city);
                        $('#Uname').val(data.data.name);
                        $('#Ustate').val(data.data.state);
                        $('#Upostal_code').val(data.data.postal_code);
                        $('#Uaddress-primary').prop('checked', data.data.primary === 1);

                        const baseUpdateUrl = $('#update-address-url').val();
                        $('#update-address-url').val(baseUpdateUrl.replace('id', data.data.id));


                        $('#edit-address').modal('show');
                    } else {
                        alert('Address data not found.');
                    }
                },
                error: function(xhr, status, error) {
                    console.error(error);
                }
            });
        });
    });

    document.getElementById('edit-address').addEventListener('submit' , function (e){
        e.preventDefault();

        const addressId = $('Uaddress-id').val();
        const data = {
            name: $('#Uname').val(),
            phone: $('#Uphone').val(),
            city: $('#Ucity').val(),
            state: $('#Ustate').val(),
            postal_code: $('#Upostal_code').val(),
            address: $('#Uaddress').val(),
            primary: $('#Uaddress-primary').is(':checked') ? 1 : 0,
        };
        const route = $('#update-address-url').val();

        $.ajax({
            url: route,
            type: 'PUT',
            data: JSON.stringify(data),
            processData: false,
            contentType: 'application/json',
            success: function(data) {
                if (data.success) {
                    $('#edit-address').modal('hide');
                    $('.address-table-' + data.address.id).html(data.address.address);
                    if (data.address.primary) {
                        $('.address-table-' + data.address.id).append('<span class="align-middle badge bg-info ms-2 primary-table">Primary</span>');
                    }//TODO change primary in table after new address got primary
                    Swal.fire({
                        position: "top-end",
                        icon: "success",
                        title: "Address Updated Successfully",
                        showConfirmButton: false,
                        timer: 1500
                    });
                }
            },
            error: function(xhr, status, error) {
                Swal.fire({
                    position: "top-end",
                    icon: "error",
                    title: "Failed to update address",
                    showConfirmButton: false,
                    timer: 1500
                });
            }
        })
    })

    $('#edit-address').on('hidden.bs.modal', function () {
        $(this).find("input[type='hidden'][name='_method']").remove();
        $(this).trigger('reset');
    });

});
</script>

@endsection
