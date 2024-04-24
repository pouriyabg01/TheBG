<?php

namespace App\Models;

use App\Models\Products\Product;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Cart extends Model
{
    use HasFactory;

//    public function products(): belongsToMany
//    {
//        return $this->belongsToMany(Product::class , 'shopping_carts')->withPivot('quantity');
//    }


}
