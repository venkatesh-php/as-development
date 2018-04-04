<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;
use Image;

use DB;
use Auth;
use Charts;
use App\course;
use App\User;

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

        }
        elseif(isStudent()){
            $courses = course::all();
            $studentData = Auth::user()->load('enrollment.course');

        return view('home')->with('courses', $courses)->with('studentData',$studentData);

        }
       

        
    }


}
