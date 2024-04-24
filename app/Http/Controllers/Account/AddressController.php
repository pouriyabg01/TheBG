<?php

namespace App\Http\Controllers\Account;

use App\Http\Controllers\Controller;
use App\Http\Requests\AddressFormRequest;
use App\Models\Address;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Redirect;

class AddressController extends Controller
{
    private function customer(){
        return Auth::guard('customer')->user();
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $customer = $this->customer();
        $addresses = $customer->addresses()->latest()->get();
        return view('profile.pages.address' , [
            'customer' => $customer,
            'addresses' => $addresses
        ]);
    }


    /**
     * Store a newly created resource in storage.
     */
    public function store(AddressFormRequest $request)
    {
        $customer = $this->customer();

        $address = $request->validated();

        $status = $customer->addresses()->create($address);
Log::info($status);
        if ($status) {
            if ($request->has('shipping')) {
                $customer->addresses()->where('primary' , 1)->update(['primary' => 0]);

                $status->update(['primary' => 1]);

                return Redirect::route('checkout-shipping');
            }else{
                return Redirect::route('account-address');
            }
        }

    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Address $address)
    {
        $address->delete();

        return Redirect::route('account-address')->with('status' , 'address-delete');
    }
}
