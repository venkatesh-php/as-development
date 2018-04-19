<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;
use Image;

use DB;
use Auth;

use App\constants;
use App\course;

use App\User;
use App\coinsinout;
use App\enrollment;
use App\chapter;
use App\chapterstatuses;
use App\coursetask;
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
       $coins = coinsinout::where('user_id',
        Auth::user()->id)->sum('coins');
        if(!$coins){
            // DB::table('coinsinouts')->insert(['user_id'=>
            // Auth::user()->id,'nature_id'=>1,'coins'=>100]); 
            $coins =100;

            $coinsinout = new  coinsinout();
            $coinsinout->user_id = Auth::user()->id;
            $coinsinout->nature_id = 1;
            $coinsinout->coins = $coins;
            // return $coinsinout;
            $coinsinout->save();
        }
       
        if(isMentor()){
            // return  
        $courses = Auth::user()->course()->get();
        /*render course list page*/

            return view('home')->with('courses', $courses)->with('coins',$coins);

        }
        elseif(isAdmin()){
            return view('home')->with('coins',$coins);
        }
        elseif(isStudent()){
            $courses = course::all();
            // return
            $studentData = Auth::user()->load('enrollment.course');
            // return $studentData->enrollment;
            foreach($studentData->enrollment as $course ){
                $chapters=chapter::where('course_id',$course->course_id)
                ->select('id')->get();
            $coursestatuses=
            chapterstatuses::whereIn('chapter_id',$chapters->toArray())
            ->select('*')->get();
            $course->ch_completed=$coursestatuses->sum('status');
            $course->ch_outof=count($chapters);
            $course->creds_earned=$coursestatuses->sum('task_credits')
            +$coursestatuses->sum('quiz_score')*constants::max_credits_each_chapter/100;
            // $course->creds_outof=40;
            // $course->bonus_creds=20;
            }
            // return $studentData;
            $enrollments = enrollment::where('student_id',Auth::user()->id)->get();
            // $constants=new constants;
            // return constants::perc_cred_bonus_on_coursecompletion;
            foreach($courses as $course){
                $chapters_ids = chapter::where('course_id',$course->id)->select('id')->get();
                // foreach($chapters_ids as $chapters_id){
                   $chapter_tasks= coursetask::whereIn('chapter_id',$chapters_ids)
                   ->join('admin_tasks','admin_tasks.id','coursetasks.task_id')
                   ->select('usercredits')->get();
                   $course->no_tasks=count($chapter_tasks);
                //    return
                   $course->max_credits=$chapter_tasks->sum('usercredits')+count($chapters_ids)*constants::max_credits_each_chapter;
                   $course->bonus_credits=
                   $course->max_credits*constants::perc_cred_bonus_on_coursecompletion/constants::ndays_assumed_4course_completion;
                // } 
                foreach($enrollments as $enrollment){
                    if($course->id==$enrollment->course_id){
                        $course->enrolled=true;
                        }
                    
                }
            }
            // return $courses;

        return view('home')->with('studentData',$studentData)
        ->with('coins',$coins)
        ->with('courses', $courses);

        }
       

        
    }


}
