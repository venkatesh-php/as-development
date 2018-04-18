<?php

namespace App\Http\Controllers\student;
use DB;
use App\quiz;
use App\User;
use App\Constants;
use App\course;
use App\chapter;
use App\questions;
use App\enrollment;
use App\CourseTask;
use App\AssignTasks;
use App\quizstatuses;
use App\chapterstatuses;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Carbon\Carbon;


class studentController extends Controller
{
    public function showDashboard()
    {
        $current_student = Auth::user();
        dd($current_student);
    }
/*##############################################################################################*/ 
    /*enroll a student to a particular course*/
    public function enroll($id)
    {
        $course_id = hd($id);
        if (Auth::user()->enrollment()->count() <= 2)
        {
            $enrollment = Auth::user()->enrollment()->where('course_id', $course_id)->get()->count();
            $chapters = DB::table('chapters')->where('course_id',$course_id)->get();
            
            foreach($chapters as $chapter)
            {
                $chapterstatuses = DB::table('chapterstatuses')->where('chapter_id',$chapter->id)->where('user_id',Auth::user()->id)->get()->count();
            }

            if (($enrollment ==0) && ($chapterstatuses == 0)) 
            {
                $enrollment = new  enrollment();
                $enrollment->student_id = Auth::user()->id;
                $enrollment->course_id = $course_id;
                $enrollment->status = 1;
                $enrollment->save();


                return redirect()->route('public.home')->with([
                    'title' => 'Enrollment success',
                    'message' => 'You have been enrolled to the course',
                    'type' => 'success',
                ]);
            } 
            else
            {
                return redirect()->back()->with([
                    'title' => 'Enrollment failed',
                    'message' => 'You have already enrolled for this course',
                    'type' => 'warning',
                ]);
            }
        } 
        else 
        {
            return redirect()->back()->with([
                'title' => 'Enrollment failed',
                'message' => 'You have already enrolled for three courses,Please complete one to open another slot!!!',
                'type' => 'error',
            ]);
        }
    }

/*##############################################################################################*/ 
    /*show course library */
    public function courseLibrary()
    {
        $courses = course::all();
        $enrollments = enrollment::where('student_id',Auth::user()->id)->get();
        foreach($courses as $course){
            foreach($enrollments as $enrollment){
                if($course->id==$enrollment->course_id){
                    $course->enrolled=true;
                }
                
            }
        }
        return view('course.library')->with('courses', $courses);
    }

/*##############################################################################################*/ 
    /*show current students enrollments*/
    public function showEnrollments()
    {

    }
/*##############################################################################################*/ 
    /*show the contents of the courses associated with the student */
    public function studentCourses()
    {
        $studentData = Auth::user()->load('enrollment.course');
        /*return $studentData;*/
        return view('student.courses')->with('studentData',$studentData);
    }
/*##############################################################################################*/ 
  /*view a particular course*/
    public function viewCourse($id)
    {
        $id = hd($id);
        
        $course =  course::withCount('chapter')->with('chapter')->where('id',$id)->first();         
        // return
         $chids=array_column($course->chapter->toArray(),'id');
        $tasks=coursetask::whereIn('chapter_id',$chids)->get();
        $quizs = quiz::whereIn('chapter_id',$chids)->get();
        // return
        $chpterstatuses=DB::table('chapterstatuses')->whereIn('chapter_id',$chids)->get();
        // return $chpterstatuses;
        $task_statustable=[];
        $zerostatus=false;
        if (count($chpterstatuses)>0){
            // $status_chid=array_column($chpterstatuses,'status');
            foreach($chpterstatuses as $chpterstatus)
            {
                
                if($chpterstatus->status==0)
                {   $zerostatus=true;
                        $task_statustable=AssignTasks::where('course_chapter_id',$chpterstatus->chapter_id)
                        ->where('user_id',Auth::user()->id)
                        ->select('status','course_chapter_id','user_credits')->get();
                        break;
                }
                
               
             //    else{
             //         $task_statustable=AssignTasks::where( 'course_chapter_id',$chpterstatus->chapter_id)->select('status','course_chapter_id')->get();
             //     }
            }
            // return (int)$zerostatus;
            if(!$zerostatus ){
                // return (int)$zerostatus;
                // DB::table('chapterstatuses')->where('chapter_id',$chids[count($chpterstatuses)] )->where('user_id',Auth::user()->id)
                // ->update(['status' => '0']); 
                if(count($chpterstatuses)<count($chids)){
                    chapterstatuses::create(['status' => '0','chapter_id'=>$chids[count($chpterstatuses)],'user_id'=>Auth::user()->id]); 
            
                }
            }

        }else{
           chapterstatuses::create(['status' => '0','chapter_id'=>$chids[0],'user_id'=>Auth::user()->id]); 
        }
        // return $task_statustable;
        foreach ($course->chapter as $cch )
        {
            $cch->quiz=getTaskIds($cch->id,$quizs);
            $cch->tasks=getTaskIds($cch->id,$tasks);
            $cch->status= getChapterStatus($cch->id,$chpterstatuses);
            // $cch->status[2]= $cch->status[2]*Constants::max_credits_each_chapter;
            //quiz_score multiplied with credits assigned for chapter
        }

        // return $course->chapter;
        $user_credits=0;
       if(count($task_statustable)>0){
            $quiztobeopened=true;
            
            foreach($task_statustable as $task_status)
            {
                if($task_status->status!='approved')
                {
                    $quiztobeopened=false;
                }else{
                    $user_credits += $task_status->user_credits;
                }
            }
       }else{
            $quiztobeopened=false;
       }
    //    return $user_credits;

        return view('student.course')->with('course',$course)
        ->with('quiztobeopened',$quiztobeopened)
        ->with('user_credits',$user_credits);

    }

/*##############################################################################################*/ 
    /*view Chapter by student*/
    public function  viewChapter($course_id,$id)
    {
        $id = hd($id);
        $course_id = hd($course_id);
        $chapter = chapter::where('id',$id)->with('course')->where('course_id',$course_id)->first();
        $tasks = coursetask::where('chapter_id',$id)
        ->join('admin_tasks','admin_tasks.id','coursetasks.task_id')
        ->join('users as users_g','users_g.id','coursetasks.priority_guide_id')
        ->join('users as users_r','users_r.id','coursetasks.priority_reviewer_id')
        ->select('admin_tasks.*','coursetasks.id as coursetask_id','users_g.first_name as gname','users_r.first_name as rname')
        ->get();
// return
       $taskstatuses = AssignTasks::where('user_id',Auth::user()->id)
       ->where('course_chapter_id',$id)
       ->select('id','task_id','status','user_credits') 
       ->get();
         
       foreach($taskstatuses as $taskstatus)
       {
           foreach($tasks as $task)
           {
                if($taskstatus->task_id==$task->id)
                {
                    $task->status=$taskstatus->status;
                    $task->earned_credits=$taskstatus->user_credits;
                    $task->assigntask_id=$taskstatus->id;
                    $task->task_id=$taskstatus->task_id;

                } 
                
            }
       }
    // return $tasks;
        return view('course.viewChapter')->with('chapter',$chapter)->with('tasks',$tasks);
    }


/*##############################################################################################*/ 
    /* Assign task by student himself*/
    public function assignTask($coursetask_id)
    {
        $coursetask_id=hd($coursetask_id); 
        $ctaskdetails=coursetask::where('id',$coursetask_id)
        ->select('*')->first();
        
        try 
            {
                $record = [
                    'task_id' => $ctaskdetails->task_id,
                    'assigned_by_userid' => Auth::user()->id,
                    'user_id' =>Auth::user()->id,
                    'guide_id' => $ctaskdetails->priority_guide_id,
                    'reviewer_id' => $ctaskdetails->priority_guide_id,
                    'course_chapter_id'=>$ctaskdetails->chapter_id,
                    'status'=>'',
                    'target_at' => Carbon::now('Asia/Kolkata')->addDays($ctaskdetails->time_required),

                ];    
                AssignTasks::create( $record );
                // return $record;
                
            }
            catch (Exception $e)
            {
                render($e);

                return false;
            }

           $assign_task_id= AssignTasks::where( 'task_id', $record['task_id'])->where( 'user_id', $record['user_id'])->select('id')->first();

            // return ["Successfully assigned",   $record];
           return redirect()-> route('UserTasks.edit',$assign_task_id);
    }

  
/*##############################################################################################*/ 
    /*handle submitted quiz data*/
    /**
     * @param Request $request
     * @return mixed
     */
    public function postQuiz(Request $request){
        
        $score = null;
        $total = null;
        // return $request;
        $quiz_data = $request->except('_token','chapter_id');
        $chapter_id = hd($request->chapter_id);
        // return
        $questions = chapter::find($chapter_id)->quiz->question()->get();
        // return [$quiz_data, $questions ];
        /*
            Evaluate each question attended
            Check whether the answer is correct
        */
        // return count($quiz_data);
        // $qids=;
         $quizstatuses = quizstatuses::whereIn('question_id',array_column($questions->toArray(),'id'))
        ->where('user_id',Auth::user()->id)->get();
        // return $quizstatuses;
        //  if(count($quizstatuses)==0)    {
            foreach ($questions as $question)
            {
                foreach ($quiz_data as $key => $value)
                {
                    if($question->id == hd($key))
                    {
                        $total = $total+10; 
                        $quizstatuses = new quizstatuses();
                        $quizstatuses->question_id = $question->id;
                        $quizstatuses->user_id = Auth::user()->id;
                        $quizstatuses->answer = $value;    
                                    

                        if($question->answer == $value)
                        {
                            $score+=10;
                            $question->answerd = true;
                            $quizstatuses->result = 'true';
                        }
                        else
                        {
                            $question->answerd = false;
                            $quizstatuses->result = 'false';
                        }
                        
                        $quizstatuses->save();

                    }
                }
            }
            /*checking wether the score is above 80%*/
            $quizscore=($score/$total)*100;
                if( $quizscore>= Constants::min_score_for_pass ){$status ='passed'; }
                else{ $status = 'failed'; }

            /*quiz results*/
            $results = [
                'total' => $total,
                'score' =>$score,
                'status'=>$status
            ];
            // // return
            $task_credits = AssignTasks::where('user_id',Auth::user()->id)
            ->where('course_chapter_id',$chapter_id)            
            ->sum('user_credits');
            // ->select('user_credits')
            // ->get();
            /* inserting results into quizstatuses table */
            DB::table('chapterstatuses')->where('chapter_id',$chapter_id)->where('user_id',Auth::user()->id)
            ->update(['status' => '1','quiz_score'=>$quizscore,'task_credits'=>$task_credits]); 
            // return
            $course_id=chapter::where('id',$chapter_id)
            ->select('course_id')->first();
            $chids=chapter::where('course_id',$course_id->course_id)
            ->select('id')->get()->toArray();
            // return $chids;
            //  [$chapter_id,$course_id,$chids ];
            $ch_statuses=chapterstatuses::whereIn('chapter_id',$chids)
            ->select('*')->get();
            // return $ch_statuses;
            if(count($chids)==count($ch_statuses)){
                $course_credits=$ch_statuses->sum('task_credits')+Constants::max_credits_each_chapter*($ch_statuses->sum('quiz_score')/100);
                // return $bonus_credits =array_column($ch_statuses->toArray(),'created_at');
                // 
                $hours4completion = (new Carbon($ch_statuses->first()->created_at))
                ->diffInHours(new Carbon($ch_statuses->last()->created_at));

                $bonus_credits= $course_credits*Constants::perc_cred_bonus_on_coursecompletion/($hours4completion/24.0);
                

    
                enrollment::where('course_id',$course_id->course_id)
                ->where('student_id',Auth::user()->id)
                ->update(['status'=>2,'course_credits'=>$course_credits,'bonus_credits'=>$bonus_credits]);
            }
        
        //  }   else{

        //     return "You have already submitted quiz...";
        //  }   

        

        
        return view('quiz.review')->with(['questions'=>$questions,'results'=>collect($results)]);
    }



/*##############################################################################################*/ 
  /*view quiz*/
    public function viewQuiz($id)
    {
        $id = hd($id);
        $quiz_data = chapter::find($id)
        // ->select('chapters.*')
        ->quiz
        ->where('chapter_id',$id)
        ->with('question')
        ->first()
        ;
        
        // return $time4quiz=count($quiz_data)*45; //secons

        // return $course_id;
        return view('quiz.viewQuiz')->with('quiz_data',$quiz_data);
    }

/*##############################################################################################*/  

    public function viewQuizResult(Request $request ){
        $score = null;
        $total = null;
        
        $chapter_id = hd($request->id);
        $questions = chapter::find($chapter_id)->quiz->question()->get();
        // return $questions;
        /*
            Evaluate each question attended
            Check whether the answer is correct
        */
        foreach ($questions as $question){
            $quiz_data = quizstatuses::where('question_id',$question->id)->get();
            // return $quiz_data;
            foreach ($quiz_data as $result){
                if($question->id == $result->question_id){
                    $total = $total+10;
                    if($question->answer == $result->answer){
                        $score+=10;
                        $question->answerd = true;
                    }
                    else{
                        $question->answerd = false;
                    }
                }
            }
        }
        /* inserting results into quizstatuses table */

        /*checking wether the score is above 80%*/
        if(($score/$total)*100 >= Constants::min_score_for_pass ){
            $status ='passed';
        }
        else{
            $status = 'failed';
        }

        /*quiz results*/
        $results = [
            'total' => $total, 
            'score' =>$score,
            'status'=>$status
        ];

        
        return view('quiz.viewQuizResult')->with(['questions'=>$questions,'results'=>collect($results)]);
    }


}

