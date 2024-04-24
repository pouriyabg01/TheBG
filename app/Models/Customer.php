<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use App\Models\Products\Product;
use App\Models\Products\ProductComment;
use App\Models\Products\ProductRate;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Storage;
use Laravel\Sanctum\HasApiTokens;

class Customer extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'last_name',
        'avatar',
        'phone',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    protected static function boot()
    {
        parent::boot();

        static::updated(function ($customer){
            if ($customer->isDirty('avatar')){
                Storage::delete('storage/' .$customer->avatar);
            }
        });
    }

    public function orders(): hasMany
    {
        return $this->hasMany(Order::class);
    }

    public function addresses(): hasMany
    {
        return $this->hasMany(Address::class);
    }

    public function wishlist(): belongsToMany
    {
        return $this->belongsToMany(Product::class , 'product_wishlists');
    }

    public function cart(): belongsToMany
    {
        return $this->belongsToMany(Product::class , 'shopping_carts')->withPivot('quantity');
    }

    public function cartItemCount(): int
    {
        return $this->cart->sum('pivot.quantity');
    }

    public function cartItemSubTotal(): string
    {
        $products = $this->cart;
        $subtotal = 0;
        foreach ($products as $product){
            $subtotal += $product->price * $product->pivot->quantity;
        }
        return number_format($subtotal , false , false , ',');
//        return $subtotal;
    }

    public function rates(): hasMany
    {
        return $this->hasMany(ProductRate::class);
    }

    public function comments(): hasMany
    {
        return $this->hasMany(ProductComment::class);
    }

}
