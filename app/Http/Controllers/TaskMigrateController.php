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
use Carbon\Carbon;

class TaskMigrateController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        
            $assign_tasks = AssignTasks::orderBy('id','DESC')
            ->join('admin_tasks','assign_tasks.task_id', '=', 'admin_tasks.id')
            ->where('assign_tasks.assigned_by_userid',Auth::user()->id)  

            ->join('users as users_u','users_u.id','assign_tasks.user_id')
            ->join('users as users_s','users_s.id','assign_tasks.assigned_by_userid')
            ->join('users as users_g','users_g.id','assign_tasks.guide_id')
            ->join('users as users_r','users_r.id','assign_tasks.reviewer_id')
            // ->select('users_u.name','users_g.name as gname','users_r.name as rname')


            ->select('assign_tasks.*','admin_tasks.worktitle','admin_tasks.workdescription','admin_tasks.whatinitforme','admin_tasks.usercredits','admin_tasks.uploads','users_u.name','users_s.name as sname','users_g.name as gname','users_r.name as rname')
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
        $reserved_credits=0;
        $this->validate($request, [
            'assigntask_id' => 'required',
            'request_for' => 'required',
            'request_by' => 'required',
            'rating_to_user' => 'nullable',
            'message' => 'required',
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

            
            $requestData['uploads'] = $file;

        }
        else
        {
            $requestData = $request->all();
        }

        if($requestData['request_for']=='approved'){
            $reserved_credits=DB::table('assign_tasks')->where('assign_tasks.id', $requestData['assigntask_id']) 
            ->join('admin_tasks','assign_tasks.task_id','admin_tasks.id')
            ->select('admin_tasks.usercredits')->get()->pluck('usercredits')[0];
        }

       

        DB::table('assign_tasks')->where('id', $requestData['assigntask_id'])  
        ->update(['user_credits' => $requestData['rating_to_user']*$reserved_credits/10,
        'status' => $requestData['request_for'],'completed_at' => Carbon::now('Asia/Kolkata')]);
        
        unset($requestData['rating_to_user']);//removed as there is no column of obtained marks 
       
        UserTasks::create($requestData);

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
            $assign_tasks = AssignTasks::orderBy('id','DESC')
            ->join('admin_tasks','assign_tasks.task_id', '=', 'admin_tasks.id')

            ->join('users as users_u','users_u.id','assign_tasks.user_id')
            ->join('users as users_s','users_s.id','assign_tasks.assigned_by_userid')
            ->join('users as users_g','users_g.id','assign_tasks.guide_id')
            ->join('users as users_r','users_r.id','assign_tasks.reviewer_id')


            ->where('assign_tasks.status',$cop_str)
            ->where('assign_tasks.assigned_by_userid',Auth::user()->id)
            ->select('assign_tasks.*','admin_tasks.worktitle','admin_tasks.workdescription','admin_tasks.whatinitforme','admin_tasks.usercredits','admin_tasks.uploads','users_u.name','users_s.name as sname','users_g.name as gname','users_r.name as rname')
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
        $user_tasks = UserTasks::orderBy('id','ASC')
        
        ->join('assign_tasks','user_tasks.assigntask_id', '=', 'assign_tasks.id')

        ->join('users as users_u','users_u.id','user_tasks.request_by')

        ->where( 'assign_tasks.id',$id)
        ->select('user_tasks.*','users_u.name')->get();
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
