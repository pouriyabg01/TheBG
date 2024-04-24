<?php

namespace App\Models\Products;

use App\Models\Customer;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class ProductComment extends Model
{
    use HasFactory;

    protected $fillable = ['body' , 'like' , 'dislike' , 'product_id' , 'customer_id'];

    public function customer(): belongsTo
    {
        return $this->belongsTo(Customer::class);
    }

    public function product(): belongsTo
    {
        return $this->belongsTo(Product::class);
    }

}
