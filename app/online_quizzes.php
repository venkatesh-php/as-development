<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class online_quizzes extends Model
{
    protected $fillable = ['subject_name','quiz_name','user_id','created_at','updated_at'];
}
