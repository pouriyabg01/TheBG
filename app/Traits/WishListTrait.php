<?php

namespace App\Traits;

use App\Models\Customer;
use App\Models\Products\Product;
use Illuminate\Support\Facades\Auth;

trait WishListTrait
{

    /**
     * toggle wishlist icon
     * @param Product $product
     * @var Customer $customer
     */
    public function addOrRemoveWishlist(Product $product)
    {
        if (!Auth::guard('customer')->check())
            return response()->json(['redirectUrl' => route('login')] , 403);

        $customer = Auth::guard('customer')->user();

        if ($customer->wishlist->contains($product)) {
            $customer->wishlist()->detach($product);
            $isInWishlist = false;
        } else {
            $customer->wishlist()->attach($product);
            $isInWishlist = true;
        }
        return response()->json(['isInWishlist' => $isInWishlist , 'wishlistCount' => $customer->wishlist()->count()]);
    }


    /**
     * remove product from customer's wishlist
     * @param Product $product
     * @param Customer $customer
     */
    public function removeWishlist(Product $product)
    {
        $customer = Auth::guard('customer')->user();

        if ($customer->wishlist()->detach($product)) {
            return response()->json(['deletedWishlist' => true , 'wishlistCount' => $customer->wishlist()->count()]);
        }else {
            return response()->json(['deletedWishlist' => false]);
        }
    }

}
