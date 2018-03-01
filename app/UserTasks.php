<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserTasks extends Model
{
    protected $fillable = ['assigntask_id','request_for','request_by','message','uploads','obtained_marks'];
}
