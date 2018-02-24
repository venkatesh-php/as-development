<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AssignTasks extends Model
{
    protected $fillable = ['assign_user_id','task_id', 'user_id', 'guide_id', 'reviewer_id', 'status','obtained_marks'];
}
