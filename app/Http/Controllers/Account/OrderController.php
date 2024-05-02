<?php

namespace App\Http\Controllers\Account;

use App\Models\Address;
use App\Models\Order;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class OrderController extends Controller
{
    public function customer()
    {
        return Auth::guard('customer')->user();
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $user = Auth::guard('customer')->user();
        return view('profile.pages.orders' , compact('user'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store()
    {
        try {
            $order = $this->customer()->orders()->create([
                'address_id' => session()->get('order-address')->id,
                'note' => 'inm note',
                'number' => $this->generateUniqueOrderNumber(),
                'status' => 'pending',
                'total_price' => $this->customer()->cartItemSubTotal()
            ]);
            $cartItems = $this->customer()->cart;
            $attachData = [];
            foreach ($cartItems as $item) {
                $attachData[$item->id] = [
                    'quantity' => $item->pivot->quantity,
                    'total_price' => $item->pivot->quantity * $item->price
                ];
            }
            $order->products()->attach($attachData);
            $this->customer()->cart()->detach();
            $this->customer()->load('cart');
            session()->forget('order-address');
            return $order;
        }catch (\Exception $e){
                throw $e;
        }

    }

    public function address(Request $request)
    {
        if (session()->exists('order-address')){
            session()->forget('order-address');
        }
        if ($request->input('exists_address')){
            $address = Address::findOrFail($request->input('exists_address'));
            session(['order-address' => $address]);
        }
        session()->save();
        return view('profile.checkout.shipping');
    }

    /**
     * Display the specified resource.
     */
    public function show(Order $order)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Order $order)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Order $order)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Order $order)
    {
        //
    }

    private function generateUniqueOrderNumber() {
        do {
            $number = mt_rand(100000, 999999);
        } while (!$this->isUniqueOrderNumber($number));

        return $number;
    }

    private function isUniqueOrderNumber($number) {
        return !Order::where('number', $number)->exists();
    }
}
