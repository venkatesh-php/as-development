<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('email');
            $table->string('password');
            $table->string('remember_token')->nullable();
            $table->integer('institutes_id')->nullable();
            $table->integer('role_id')->nullable();
            $table->integer('branch_id')->nullable();
            $table->integer('batch_id')->nullable();
            $table->string('phone_number')->nullable();
            $table->date('dob')->nullable();  
            $table->string('qualification')->nullable();  
            $table->string('specialization')->nullable();  
            $table->float('marks');
            $table->date('passout')->nullable();  
            $table->text('collegeaddress')->nullable();  
            $table->text('homeaddress')->nullable();
            $table->string('profilepic')->nullable();  
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
        Schema::dropIfExists('users');
    }
}
