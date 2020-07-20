<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePostComentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('post_coments', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('title');
            $table->text('message');
            $table->bigInteger('post_id');
            $table->bigInteger('user_id'); 
            $table->enum('approved', ['1', '0'])->default('0');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('post_coments');
    }
}
