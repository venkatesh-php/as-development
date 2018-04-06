<?php

namespace App\Http\Controllers\student;

use App\chapter;
use App\course;
use App\enrollment;
use App\quiz;
use App\User;
use App\CourseTask;
use App\AssignTasks;
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

    /*enroll a student to a particular course*/
    public function enroll($id)
    {
        $course_id = hd($id);
        if (Auth::user()->enrollment()->count() <= 2) {
            $enrollment = Auth::user()->enrollment()->where('course_id', $course_id)->get()->count();
            if ($enrollment ==0) {
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
            } else {
                return redirect()->back()->with([
                    'title' => 'Enrollment failed',
                    'message' => 'You have already enrolled for this course',
                    'type' => 'warning',
                ]);
            }
        } else {
            return redirect()->back()->with([
                'title' => 'Enrollment failed',
                'message' => 'You have already enrolled for three courses,Please complete one to open another slot!!!',
                'type' => 'error',
            ]);
        }
    }

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


    /*show current students enrollments*/
    public function showEnrollments()
    {

    }

    /*show the contents of the courses associated with the student */
    public function studentCourses()
    {
        $studentData = Auth::user()->load('enrollment.course');
        /*return $studentData;*/
        return view('student.courses')->with('studentData',$studentData);
    }

    /*view a particular course*/
    public function viewCourse($id){
        $id = hd($id);

        $course =  course::withCount('chapter')->with('chapter')->where('id',$id)->first();         
        // return $course; 
        $chids=array_column($course->chapter->toArray(),'id');
        $tasks=coursetask::whereIn('chapter_id',$chids)->get();
        $quizs = quiz::whereIn('chapter_id',$chids)->get();
        foreach ($course->chapter as $cch ){
            $cch->tasks=getTaskIds($cch->id,$tasks);
        }
        foreach ($course->chapter as $cch ){
            $cch->quiz=getTaskIds($cch->id,$quizs);
          }
        /*dd($course);*/

        // return $course;
        return view('student.course')->with('course',$course);

    }


    /*view quiz*/
    public function viewQuiz($id){
        $id = hd($id);
        $quiz_data = chapter::find($id)->quiz->where('chapter_id',$id)->with('question')->first();

        // return $quiz_data;
        return view('quiz.viewQuiz')->with('quiz_data',$quiz_data);
    }

    
    /*view Chapter by student*/
    public function  viewChapter($course_id,$id){
        $id = hd($id);
        $course_id = hd($course_id);


        $chapter  = chapter::where('id',$id)->with('course')->where('course_id',$course_id)->first();

        $tasks=coursetask::where('chapter_id',$id)
        ->join('admin_tasks','admin_tasks.id','coursetasks.task_id')
        ->join('users as users_g','users_g.id','coursetasks.priority_guide_id')
        ->join('users as users_r','users_r.id','coursetasks.priority_reviewer_id')
        // ->where('assign_tasks.course_chapter_id',$tasks->chapter_id)
        ->select('admin_tasks.*','coursetasks.id as coursetask_id','users_g.first_name as gname','users_r.first_name as rname')
        ->get();
        // ->paginate(15);
        // return [Auth::user()->id,$id];
       $taskstatuses= AssignTasks::where('user_id',Auth::user()->id)
       ->where('course_chapter_id',$id)
    //    ->select('task_id','status')
       ->select('id','task_id','status') 
       ->get();

        // $statuses=array_column($taskstatus,'status') ;
         
       foreach($taskstatuses as $taskstatus){
           foreach($tasks as $task){
            if($taskstatus->task_id==$task->id){
                $task->status=$taskstatus->status;
                $task->assigntask_id=$taskstatus->id;
                $task->task_id=$taskstatus->task_id;
            }
           }
       }
    //    return [$taskstatuses,$tasks];
        return view('course.viewChapter')->with('chapter',$chapter)->with('tasks',$tasks);
    }

    public function assignTask($coursetask_id){
        $coursetask_id=hd($coursetask_id);
        // return 
        
        $ctaskdetails=coursetask::where('id',$coursetask_id)
        ->select('*')
        ->first();
        
        try 
            {
                $record = [
                    'task_id' => $ctaskdetails->task_id,
                    'assigned_by_userid' => Auth::user()->id,
                    'user_id' =>Auth::user()->id,
                    'guide_id' => $ctaskdetails->priority_guide_id,
                    'reviewer_id' => $ctaskdetails->priority_guide_id,
                    'course_chapter_id'=>$ctaskdetails->chapter_id,
                    'status'=>'initiated',
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


    /*handle submitted quiz data*/
    /**
     * @param Request $request
     * @return mixed
     */
    public function postQuiz(Request $request){
        $score = null;
        $total = null;
        $quiz_data = $request->except('_token','chapter_id');
        $chapter_id = hd($request->chapter_id);
        $questions = chapter::find($chapter_id)->quiz->question()->get();
        /*
            Evaluate each question attended
            Check whether the answer is correct
        */
        foreach ($questions as $question){
            foreach ($quiz_data as $key => $value){
                if($question->id == hd($key)){
                    $total = $total+10;
                    if($question->answer == $value){
                        $score+=10;
                        $question->answerd = true;
                    }
                    else{
                        $question->answerd = false;
                    }
                }
            }
        }

        /*checking wether the score is above 80%*/
        if(($score/$total)*100 >= 80 ){
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

        
        return view('quiz.review')->with(['questions'=>$questions,'results'=>collect($results)]);
    }

}

