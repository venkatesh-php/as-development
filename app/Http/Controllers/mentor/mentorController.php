<?php

namespace App\Http\Controllers\mentor;

use App\chapter;
use App\course;
use App\cv;
use App\question;
use App\questions;
use App\quiz;
use App\coursetask;
use Auth;
use DB;
use App\AdminTasks;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Storage;
use phpDocumentor\Reflection\Types\Array_;
use Symfony\Component\DomCrawler\Image;
use Vinkla\Hashids\Facades\Hashids;
use Illuminate\Support\Facades\Input;

class mentorController extends Controller
{
    public function taskMaker($chapter_id)
    {
        $chapter_id = hd($chapter_id);
        $admin_tasks = AdminTasks::orderBy('id','DESC')
                        ->where('admin_tasks.institutes_id',Auth::user()->institutes_id)
                        
                        ->where('admin_tasks.user_id',Auth::user()->id) 
                        // ->orWhere('admin_tasks.institutes_id',1)
                        ->paginate(15);
        $subjects = DB::table('subjects')
                    ->where('subjects.user_id',Auth::user()->id)
                    ->select('subjects.*')->get();

        $teachers = DB::table('users')
                    ->where('institutes_id',Auth::User()->institutes_id)        
                    ->where('role_id','<=',5) 
                    ->select('id','first_name','last_name')
                    ->get();

        // return compact('admin_tasks','subjects');
        return view('coursetasks.index')->with('admin_tasks',$admin_tasks)
        ->with('subjects',$subjects)->with('chapter_id',$chapter_id)
        ->with('teachers',$teachers);
    }
    /*Render Quiz creation form*/
    public function pinTask(Request $request){

        $input = Input::except('_method', '_token');
        $task = coursetask::firstOrCreate($input);
      $c=chapter::where('id',$request->chapter_id)
       -> select('course_id')->first();
       return redirect()->route('manageCourse',['id'=>he($c->course_id)]) ;

    }

    public function show(Request $request)
    {

        $subject= $request->subject;
        $admin_tasks = AdminTasks::orderBy('id','DESC')
                        ->where('admin_tasks.subject',$subject)
                        ->where('admin_tasks.user_id',Auth::user()->id)
                        ->paginate(15);

        $subjects = DB::table('subjects')
                    ->where('subjects.user_id',Auth::user()->id)
                    ->select('subjects.*')->get();

        $teachers = DB::table('users')
                    ->where('institutes_id',Auth::User()->institutes_id)        
                    ->where('role_id','<=',5) 
                    ->select('id','first_name','last_name')
                    ->get();

        // return compact('admin_tasks','subjects');
        return view('coursetasks.index')->with('admin_tasks',$admin_tasks)
        ->with('subjects',$subjects)->with('chapter_id',$request->chapter_id)
        ->with('teachers',$teachers);

        // return view('AdminTasks.index',compact('subjects','admin_tasks'))
        //     ->with('i', ($request->input('page', 1) - 1) * 15);
           
    }
    /*show mentors dashboard*/
    public function showDashboard()
    {
        $current_mentor = Auth::user();
        dd($current_mentor);
    }


    /*show mentors CV upload area */
    public function showCVupload(){
        return view('mentor.CVupload');
    }


    /*Upload CV from the POST request to the db */
    public function uploadCV(Request $request){
        if($request->file('cv')->isValid() &&  $request->hasFile('cv')){
            if($extension = $request->cv->extension() == 'pdf'){
                $path = $request->cv->store('/','cv');
                $cv = new cv();
                $cv->path = $path;
                Auth::user()->status = 1;
                Auth::user()->cv()->save($cv);
                return redirect('/home');
            }
            else{
                 return "<h1>The CV must be in PDF format. please upload again ".
                 "<a href='/mentor/uploadCV'>".
                 " Go back".
                 "</a></h1>";
            }
        }

    }


    /*render course creation page*/
    public  function createCourse(){
        return view('mentor.course');
    }
    /*render course edit page*/
    public  function editCourse($id){
        $id=hd($id);
        // return 
        $course=course::where('id',$id)->first();
        return view('mentor.course')->with('course',$course);
    }

    /*Handle course creation post request */
    /**
     * @param Request $request
     */
    public function postCourse(Request $request,$id){

        /*form validation rules */
        $id= hd($id);
        $course = new course();
        if($id==0){
            $this->validate($request, [
                'name' => 'required|max:100',
                'description' => 'required|max:1020',
                'cost' => 'required|max:100',
                'cover' =>'required|image|file|max:2048'
            ]);
            /*creating a new course instance */
            
            $course
            ->name = $request->name;
            $course->cost = $request->cost;
            $course->description = $request->description;
            $course->cover = storeFile($request->cover,'cover');
            /*$request->cover->store('cover','public');*/
            Auth::user()->course()->save($course);
            $message = Array(
                "subject"=>"Course created!",
                "type"=>"success"
            );
        }else{
            $this->validate($request, [
                'name' => 'required|max:100',
                'description' => 'required|max:1020',
                'cost' => 'required|max:100',
            ]);
           
            // return 
            $course = Auth::user()->course()->findOrFail($id);
            $course->name = $request->name;
            $course->cost = $request->cost;
            $course->description = $request->description;
            $course->update($request->except("_token"));


            /*$request->cover->store('cover','public');*/
            // Auth::user()->course()->save($course);
            $message = Array(
                "subject"=>"Course Updated!",
                "type"=>"success"
            );
        }


        
        
        return redirect()->route("public.home")->with('message',json_encode($message));
    }

    /*show courses list view */
    public function  courses(){
        // return  
        $courses = Auth::user()->course()->get();
        /*render course list page*/
        return view('mentor.courses')->with('courses',$courses);
    }

    /*delete a particular course*/
    public  function  deleteCourse($course_id){
        $course_id = hd($course_id);
        $course = Auth::user()->course()->find($course_id);
       if(count($course)!=0){
          course::destroy($course_id);
           return redirect()->route('courses')->with([
               'message' =>true,
               'type' =>'success',
               'subject'=>'Course deleted'
           ]);
       }
       else{
          return redirect()->route('courses')->withErrors(['perm_error','You dont have  permission to delete that course']);
       }
    }

    /*Manage a course */
    public  function manageCourse($course_id){
        $id = hd($course_id);
        
        // $course = course::with('chapter')->get()->all();
        // return $course;
        // if(count($course)!=0){
            // return 
            $course = course::with('chapter')->where('id',$id)->get()->first();             
            $chids=array_column($course->chapter->toArray(),'id');
            
            
          $tasks=coursetask::whereIn('chapter_id',$chids)->get();
        //   $tids=array_column($tasks,'task_id');
        //   $tchids=array_column($tasks,'chapter_id');
        //   var_dump($tids,$tchids);
          foreach ($course->chapter as $cch ){
            $cch->tasks=getTaskIds($cch->id,$tasks);
          }
          
        //   return             $course;

            return view('course.manage')->with('course',$course); 
        // }
    }

    /*create a new chapter*/
    public  function createChapter($id){
        $id = hd($id);
        // return $id;
        $course = course::select('id','name')->where('id',$id)->get()->first();
        return view('course.newChapter')->with('course',$course);
    }

    /*handle a new chapter request*/
    public  function postChapter($id,Request $request){
        $id = hd($id);
        
        $course = course::findOrFail($id);
    //    ;
        /*create a new chapter instance*/
        $chapter = new chapter();
        $chapter->name = $request->name;
        $chapter->instructions = $request->instructions;
        $chapter->notes = $request->notes;
        
        /*upload files to disk*/
        if(isset($request->video_tutorial)){
            $video = storeFile($request->video_tutorial,'videos');
            /*update chapter instance*/
            $chapter->video = $video;
        }
        if(isset($request->pdfMaterial)){
            
        $pdf = storeFile($request->pdfMaterial,'pdf');
 
        $chapter->pdf = $pdf;
        }
        // 
        $chapter->course()->associate($course);
        /*dd($chapter);*/
        // return $chapter;
        $chapter->save();
        // return $chapter;

        //TODO: redirect to course view instead of courses view
        // return redirect()->route('courses');
        $tasks=coursetask::where('chapter_id',$chapter->id)
        ->join('admin_tasks','admin_tasks.id','coursetasks.task_id')
        ->select('admin_tasks.*','coursetasks.id as coursetask_id')
        ->get();
        return view('course.viewChapter')->with('chapter',$chapter)->with('tasks',$tasks);
        // return view('course.viewChapter')->with('chapter',$chapter);
    }

    /*handle a new chapter request*/
    public  function updateChapter($id,Request $request){
        // $course = course::findOrFail($id);
        $chapter = chapter::findOrFail(hd($id));
        // $chapter = new chapter();
        $chapter->name = $request->name;
        $chapter->instructions = $request->instructions;
        $chapter->notes = $request->notes;
        
        /*upload files to disk*/
        if(isset($request->video_tutorial)){
            if(isset( $chapter->video )){
            Storage::disk('video')->delete($chapter->video);
            }
            $video = storeFile($request->video_tutorial,'videos');
            /*update chapter instance*/
            $request['video'] = $video;
            $chapter->video=$video;
        }
        // else{
        //     $request['video_tutorial']=null;
        // }
        // return storage_path('app\\public\\pdf\\'.$chapter->pdf);
        if(isset($request->pdfMaterial)){   
            if(isset( $chapter->pdf )){
                Storage::disk('pdf')->delete($chapter->pdf);
            }         
        
        // $oldpdf=$chapter->pdf;
        $pdf = storeFile($request->pdfMaterial,'pdf'); 
        $request['pdf'] = $pdf;
        $chapter->pdf=$pdf;
        }
        // else{
        //     $request['pdfMaterial']=null;
        // }
        // 
        // $chapter->course()->associate($course);
        /*dd($chapter);*/
        //
        chapter::where('id', hd($id))->update($request->except(['_token','pdfMaterial','video_tutorial','files']));
        // return [$chapter,$oldpdf];
        //TODO: redirect to course view instead of courses view
        // return redirect()->route('courses');
        $tasks=coursetask::where('chapter_id',$chapter->id)
        ->join('admin_tasks','admin_tasks.id','coursetasks.task_id')
        ->select('admin_tasks.*','coursetasks.id as coursetask_id')
        ->get();
        return view('course.viewChapter')->with('chapter',$chapter)->with('tasks',$tasks);
        // return view('course.viewChapter')->with('chapter',$chapter);
    }


    /*serve the course cover image */
    public function coverImage($id){
        $cover = Storage::disk('cover')->get($id);
        $response = Response::make($cover, 200);
        $response->header('Content-Type', 'image/png');
        return $response;
    }

    /*serve  a specified chapters video tutorial*/
    public function serveVideo($id){
        $video = Storage::disk('videos')->get($id);
        $response = Response::make($video, 200);
        $response->header('Content-Type', 'video/mp4');
        return $response;
    }

    /*Preview a particular chapter*/
    public function previewChapter($course_id,$id){
        $id = hd($id);
        $course_id = hd($course_id);
        $chapter  = chapter::where('id',$id)->with('course')->where('course_id',$course_id)->first();
    //    return $chapter;
    $tasks=coursetask::where('chapter_id',$id)
        ->join('admin_tasks','admin_tasks.id','coursetasks.task_id')
        ->select('admin_tasks.*','coursetasks.id as coursetask_id')
        ->get();

        return view('course.viewChapter')->with('chapter',$chapter)->with('tasks',$tasks);
    }

    /*Preview a particular chapter*/
    public function editChapter($course_id,$id){
        $id = hd($id);
        $course_id = hd($course_id);
        // $course_name = $course_name;
        $chapter  = chapter::where('id',$id)->with('course')->where('course_id',$course_id)->first();
    //    return $chapter;
        return view('course.editChapter')->with('chapter',$chapter);
    }

    /*preview pdf ebook */
    public function serveEbook($id){
        $ebook = Storage::disk('pdf')->get($id);
        $response = Response::make($ebook, 200);
        $response->header('Content-Type', 'application/pdf');
        return $response;
    }

    /*Render Quiz creation form*/
    public function quizMaker($chapter_id){
        $chapter_id = hd($chapter_id);
        $quiz = quiz::firstOrCreate(['chapter_id'=>$chapter_id]);
        $questions = $quiz->question()->get();
        $course = $quiz->chapter->course;
        /*return $quiz_data*/;
        // return [$course,$questions];
        return view('quiz.create')
            ->with('course',$course)
            ->with('questions',$questions)
            ->with('chapter_id',$chapter_id);
    }



    /*create a new question for the quiz*/
    public function createQuiz($chapter_id,Request $request){
        /*find the chapter*/
        $chapter_id = hd($chapter_id);
        $chapter = chapter::findOrFail($chapter_id);

        /*select the quiz associated with the chapter*/
        $quiz = quiz::firstOrCreate(['chapter_id'=>$chapter_id]);
        $question = new question();
        $question->question = $request->question;
        $question->optionA = $request->optionA;
        $question->optionB = $request->optionB;
        $question->optionC = $request->optionC;
        $question->optionD = $request->optionD;
        $question->answer = $request->answer;
        $question->quiz_id = $quiz->id;
        $question->save();
        return redirect()->route('createQuiz',['id'=>he($chapter_id)]);
    }
    public function qstnDelete($chapter_id,$question_id){
        // return [hd($chpter_id),hd($question_id)];
        question::where('id',  hd($question_id))
        ->delete();
        return redirect()->back();
    }
}
