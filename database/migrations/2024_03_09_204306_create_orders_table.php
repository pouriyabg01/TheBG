<?php

use App\Models\Address;
use App\Models\Customer;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(Customer::class)->constrained()->cascadeOnDelete();
            $table->foreignIdFor(Address::class)->constrained()->cascadeOnDelete();
            $table->unique(['customer_id' , 'address_id']);
            $table->longText('note')->nullable();
            $table->bigInteger('number');
            $table->enum('status' , ['completed' , 'pending' , 'delivered' , 'canceled' , 'in-process']);
            $table->decimal('total_price');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};
