<?php

use App\Http\Controllers\Account\AddressController;
use Illuminate\Support\Facades\Route;




Route::middleware('auth:customer')->resource('account/address' , AddressController::class)->name('index' ,'account-address');

