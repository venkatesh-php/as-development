<?php

namespace App\Http\Controllers;

namespace App\Http\Controllers;
use App\UserTasks;
use App\AdminTasks;
use App\AssignTasks;
use DB;
use Auth;
use App\User;
use App\Http\Kernel;
use Illuminate\Http\UploadedFile;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithoutMiddleware;
use App\TaskMigrate;
use Illuminate\Http\Request;
use App\Http\Controllers\View;

class UserTasksController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $assign_tasks = DB::table('assign_tasks')
        ->join('admin_tasks','assign_tasks.task_id', '=', 'admin_tasks.id')
        ->where('assign_tasks.user_id',Auth::user()->id)
        ->whereNull('assign_tasks.status')
        ->select('assign_tasks.*','admin_tasks.worktitle','admin_tasks.workdescription','admin_tasks.whatinitforme','admin_tasks.usercredits','admin_tasks.uploads')
        ->orderBy('assign_tasks.task_id','desc')->get();

        return view('UserTasks.index',compact('assign_tasks'));
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'assigntask_id' => 'required',
            'request_for' => 'required',
            'request_by' => 'required',
            'message' => '',
            'uploads' => '',
            'created_at' => '',

        ]);

        $product = new UserTasks($request->file());
     
        if($file = $request->hasFile('uploads')) {
           
           $file = $request->file('uploads');           
           $fileName = $file->getClientOriginalName();
           $destinationPath = public_path().'/uploads/';
           $file->move($destinationPath,$fileName);

           $file = $fileName;

            $requestData = $request->all();
            $requestData['uploads'] = $file;
            // $product->uploads = $file;
      
         
        }
        else
        {
            $requestData = $request->all();
        }

        DB::table('assign_tasks')->where('id', $requestData['assigntask_id'])
        ->update(['status' => $requestData['request_for']]);
 
        UserTasks::create($requestData);
      
        // return $requestData;
        return redirect()->route('UserTasks.index');
                        
    }


    /**
     * Display the specified resource.
     *
     * @param  \App\institutes  $institutes
     * @return \Illuminate\Http\Response
     */
    public function show($cop_str)
    {
        $assign_tasks = DB::table('assign_tasks')
            ->join('admin_tasks','assign_tasks.task_id', '=', 'admin_tasks.id')
            ->where('assign_tasks.user_id',Auth::user()->id)
            ->where('assign_tasks.status',$cop_str)
            ->select('assign_tasks.*','admin_tasks.worktitle','admin_tasks.workdescription','admin_tasks.whatinitforme','admin_tasks.usercredits','admin_tasks.uploads')
            ->orderBy('assign_tasks.task_id','desc')->get();
             
        
        return view('UserTasks.index',compact('assign_tasks'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\institutes  $institutes
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user_tasks = DB::table('user_tasks')
        ->join('assign_tasks','user_tasks.assigntask_id', '=', 'assign_tasks.id')
        ->where( 'assign_tasks.id',$id)
        ->select('user_tasks.*')->get();
        $assign_tasks = AssignTasks::find($id);

        return view('UserTasks.edit',compact('user_tasks','assign_tasks',$id));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\institutes  $institutes
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'assigntask_id' => '',
            'rating_to_guide' => '',
            'rating_to_reviewer' => '',
        ]);
            $requestData = $request->all();

            $g_c1 = DB::table('assign_tasks')->where('assign_tasks.id', $requestData['assigntask_id']) 
            ->join('admin_tasks','assign_tasks.task_id','admin_tasks.id')
            ->select('admin_tasks.guidecredits')->get()->pluck('guidecredits')[0];

            $r_c2 = DB::table('assign_tasks')->where('assign_tasks.id', $requestData['assigntask_id']) 
            ->join('admin_tasks','assign_tasks.task_id','admin_tasks.id')
            ->select('admin_tasks.reviewercredits')->get()->pluck('reviewercredits')[0];

            DB::table('assign_tasks')->where('id', $requestData['assigntask_id'])  
            ->update(['guide_credits' => $requestData['rating_to_guide']*$g_c1/10,'reviewer_credits' => $requestData['rating_to_reviewer']*$r_c2/10]);

            $assign_tasks = DB::table('assign_tasks')
            ->join('admin_tasks','assign_tasks.task_id', '=', 'admin_tasks.id')
            ->where('assign_tasks.user_id',Auth::user()->id)
            ->where('assign_tasks.status','approved')
            ->select('assign_tasks.*','admin_tasks.worktitle','admin_tasks.workdescription','admin_tasks.whatinitforme','admin_tasks.usercredits','admin_tasks.uploads')
            ->orderBy('assign_tasks.task_id','desc')->get();

            return view('UserTasks.index',compact('assign_tasks'));

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\institutes  $institutes
     * @return \Illuminate\Http\Response
     */
    public function destroy(institutes $institutes)
    {
        //
    }
}
