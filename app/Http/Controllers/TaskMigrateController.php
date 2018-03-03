<?php

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

class TaskMigrateController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        
            $assign_tasks = DB::table('assign_tasks')
            ->join('admin_tasks','assign_tasks.task_id', '=', 'admin_tasks.id')
            ->where('assign_tasks.assigned_by_userid',Auth::user()->id)
            ->select('assign_tasks.*','admin_tasks.worktitle','admin_tasks.workdescription','admin_tasks.whatinitforme','admin_tasks.usercredits','admin_tasks.uploads')
            ->whereNull('assign_tasks.status')->orderBy('assign_tasks.task_id','desc')->get();    
        
       
        return view('TaskMigrate.index',compact('assign_tasks'));
            
        
    
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
                'user_credits' => 'nullable',
                'message' => '',
                'uploads' => '',
    
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
        ->update(['user_credits' => $requestData['obtained_marks'],'status' => $requestData['request_for']]);
        
        unset($requestData['obtained_marks']);//removed as there is no column of obtained marks 

        UserTasks::create($requestData);

        // return $requestData;
        return redirect()->route('TaskMigrate.index');
                       
    }
    
    /**
     * Display the specified resource.
     *
     * @param  \App\TaskMigrate  $taskMigrate
     * @return \Illuminate\Http\Response
     */
    public function show($cop_str)
    {
 
       
            $assign_tasks = DB::table('assign_tasks')
            ->join('admin_tasks','assign_tasks.task_id', '=', 'admin_tasks.id')
            ->where('assign_tasks.status',$cop_str)
            ->where('assign_tasks.assigned_by_userid',Auth::user()->id)
            ->select('assign_tasks.*','admin_tasks.worktitle','admin_tasks.workdescription','admin_tasks.whatinitforme','admin_tasks.usercredits','admin_tasks.uploads')
            ->orderBy('assign_tasks.task_id','desc')->get();
           
        return view('TaskMigrate.index',compact('assign_tasks'));
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\TaskMigrate  $taskMigrate
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user_tasks = DB::table('user_tasks')
        ->join('assign_tasks','user_tasks.assigntask_id', '=', 'assign_tasks.id')
        ->where( 'assign_tasks.id',$id)
        ->select('user_tasks.*')->get();
        $assign_tasks = AssignTasks::find($id);

        // echo($id);
        return view('TaskMigrate.edit',compact('user_tasks','assign_tasks',$id));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\TaskMigrate  $taskMigrate
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TaskMigrate $taskMigrate)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\TaskMigrate  $taskMigrate
     * @return \Illuminate\Http\Response
     */
    public function destroy(TaskMigrate $taskMigrate)
    {
        //
    }
}
