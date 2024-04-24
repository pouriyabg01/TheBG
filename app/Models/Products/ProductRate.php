<?php

namespace App\Models\Products;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductRate extends Model
{
    use HasFactory;
    protected $table = 'product_rates';
    protected $fillable = ['product_id' , 'customer_id' , 'rate'];
}
