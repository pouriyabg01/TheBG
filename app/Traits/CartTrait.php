<?php

namespace App\Traits;

use App\Models\Customer;
use App\Models\Products\Product;
use Illuminate\Support\Facades\Auth;
use function Livewire\revert;
use function Sodium\add;

trait CartTrait
{
    /**
     *
     *
     * @param Product $product
     * @var Customer $customer
     */
    public function addToCart($product , $quantity = null)
    {
        /**
        * @var Customer $customer
         */

        $customer = Auth::guard('customer')->user();


        if (!$customer)
            return response()->json(['success' => false] , 403);

        $quantity = $quantity ? $quantity : '1';



        $productInCart = $customer->cart->contains($product);

        if ($productInCart){
            $customer->cart()->updateExistingPivot($product, ['quantity' => $quantity + $product->pivot_quantity]);
            $added = true;
            $inCart = true;
        } else {
            $customer->cart()->attach($product , ['quantity' => $quantity]);
            $added = true;
            $inCart = false;
        }
        $customer->load('cart' );

        return response()->json([
            'inCar' => $inCart ,
            'added' => $added ,
            'cartItemCount' => $customer->cartItemCount(),
            'cartItemSubTotal' => $customer->cartItemSubTotal()
        ]);

    }

    public function removeFromCart($product)
    {
        $customer = Auth::guard('customer')->user();

        if (!$customer)
            return response()->json(['success' => false] , 403);

        $removed = false;
        if ($customer->cart()->detach($product)) {
            $removed = true;
        }
        $customer->load('cart');
        return response()->json([
            'removed' => $removed ,
            'cartItemCount' => $customer->cartItemCount(),
            'cartItemSubTotal' => $customer->cartItemSubTotal()
        ]);

    }
}
