<?php

namespace App\Http\Controllers\Account;

use App\Http\Controllers\Controller;
use App\Http\Requests\AddressFormRequest;
use App\Models\Address;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Redirect;
use function Sodium\add;

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
        $addresses = $customer->addresses;
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

        $data = $request->validated();

        $address = $customer->addresses()->create($data);

        $this->changePrimary($request , $address);


        if (!$address) {
            return response()->json(['success' => false]);
        }

        if ($request->has('shipping')){
            session(['order-address' => $address]);
            session()->save();
        }

        return response()->json(['success' => true , 'address' => $address]);

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
    public function edit(Address $address)
    {
        if ($address) {
            return response()->json(['data' => $address]);
        }else{
            return response()->json(['data' => false] , 404);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Address $address)
    {
        $address->update($request->all());

        $this->changePrimary($request , $address);

        return response()->json(['success' => true , 'address' => $address]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Address $address)
    {
        $address->delete();

        return response()->json(['deleted' => true]);
    }

    private function changePrimary($request , $address)
    {
        if ($request->primary){
            $this->customer()->addresses()->where('primary' , true)->update(['primary' => false]);
            $address->primary = true;
        }
        return $address->save();
    }
}
