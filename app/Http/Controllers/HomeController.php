<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;
use Image;

use DB;
use Auth;

use App\course;
use App\User;
use App\enrollment;

use App\Role;
use App\Institutes;
use App\Http\Controllers\DateTime;



class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
          
        if(isMentor()){
            // return  
        $courses = Auth::user()->course()->get();
        /*render course list page*/

            return view('home')->with('courses',$courses);

        }
        elseif(isAdmin()){
            return view('home');
        }
        elseif(isStudent()){
            $courses = course::all();
            $studentData = Auth::user()->load('enrollment.course');
            $enrollments = enrollment::where('student_id',Auth::user()->id)->get();
            foreach($courses as $course){
                foreach($enrollments as $enrollment){
                    if($course->id==$enrollment->course_id){
                        $course->enrolled=true;
                    }
                    
                }
            }


        return view('home')->with('courses', $courses)->with('studentData',$studentData)->with('courses', $courses);

        }
       

        
    }


}
