<?php

namespace App\Models;

use App\Models\Products\Product;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Order extends Model
{
    use HasFactory;

    protected $fillable = ['customer_id' , 'address_id' , 'note' , 'number' , 'status'];

    public function products(): belongsToMany
    {
        return $this->belongsToMany(Product::class , 'order_products')->withPivot(['quantity' , 'total_price']);
    }
}
