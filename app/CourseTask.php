<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CourseTask extends Model
{
    public function  chapter(){
       return $this->belongsTo('App\chapter');
    }


    protected $fillable = [
        'chapter_id','task_id','priority_guide_id','priority_reviewer_id'
    ];
    
    
}
