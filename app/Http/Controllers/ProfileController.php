<?php

namespace App\Http\Controllers;

use App\profile;
use Image;

use DB;
use Auth;
use Charts;
use App\Role;
use App\User;
use App\Chart;
use App\UserTasks;
use App\AdminTasks;
use App\AssignTasks;
use App\Institutes;
use App\Http\Requests;
use Illuminate\Http\Request;
use App\Http\Controllers\DateTime;



class ProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $users = User::orderBy('id','asc')
        ->where('users.institutes_id',Auth::user()->institutes_id)
        ->paginate(15);

        return view('Profile.index',compact('users'))
            ->with('i', ($request->input('page', 1) - 1) * 15);
            
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
            'name' => '',
            'email' => '',
            'phone_number' => '',
            'dob' => '',
            'qualification' => '',
            'specialization' => '',
            'marks' => '',
            'passout' => '',
            'collegeaddress' => '',
            'homeaddress' => '',
        ]);


        User::create($request->all());
        return redirect()->route('Profile.index')
                        ->with('success','Profile created successfully');
    }
   

    /**
     * Display the specified resource.
     *
     * @param  \App\profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $users = User::find($id);

        //Student Total Assigned Tasks of all Users
           
        $assign_tasks = DB::table('assign_tasks')
        ->where('assign_tasks.user_id',$id)
        ->orderBy('assign_tasks.updated_at')->get();

        $assign_chart = Charts::database($assign_tasks, 'line', 'highcharts')
        ->title('Assigned Tasks')
        ->elementLabel("Tasks")
        ->dimensions(0, 300)
        ->responsive(false)
        ->lastByMonth(10, true);

// Student Total Completed Tasks of all Users

        $completedtasks = DB::table('assign_tasks')
        ->where('assign_tasks.user_id',$id)
        ->where('assign_tasks.status','approved')
        ->orderBy('assign_tasks.updated_at')->get();
        
        $completed_chart = Charts::database($completedtasks, 'line', 'highcharts')
        ->title('Completed Tasks')
        ->elementLabel("Tasks")
        ->dimensions(0, 300)
        ->responsive(false)
        ->lastByMonth(10, true);


// Student Pregress Line graph all tasks

        $progress = DB::table('assign_tasks')
        ->where('assign_tasks.user_id',$id)
        ->where('assign_tasks.status','approved')
        ->orderBy('assign_tasks.updated_at','desc')->select('assign_tasks.updated_at','assign_tasks.user_credits')->get()->toArray();

        if (empty($progress)) 
            {
            $progress_chart =  Charts::create('line', 'highcharts')
            ->title('Example Progress Chart')
            ->elementLabel('date')
            ->labels(['First', 'Second', 'Third'])
            ->values([5,10,20])
            ->dimensions(0,300)
            ->responsive(false);
            }

        else
        {

        
            $datearray = array_column($progress,'updated_at');
            for($i=0;$i<count($datearray);$i++)
            {
                $date = new \DateTime($datearray[$i]);
                $dt[$i] = $date->format('d M y'); 
            }
        

            $marksarray = array_column($progress,'user_credits');

            $count_array[0] = $marksarray[0];
            for($i=1;$i<count($marksarray);$i++)
            {
                $count_array[$i] = $count_array[$i-1] + $marksarray[$i];
            }
        
            $progress_chart = Charts::create('line', 'highcharts')
            ->title('Progress Chart')
            ->elementLabel('Date')
            ->labels(array_reverse($dt))
            ->values($count_array)
            ->dimensions(0,300)
            ->responsive(false);
        } 

                    //Student total droped tasks
                    $droptasks = DB::table('assign_tasks')
                    ->where('assign_tasks.user_id',$id)
                    ->where('assign_tasks.status','drop')
                    ->orderBy('assign_tasks.updated_at','desc')->get();

                    $created_at = DB::table('users')->where('users.id',$id)
                    ->select('users.created_at')->get();
                    $totaltasks = $assign_tasks->count();
                    $totalcredits = $completedtasks->sum('user_credits');
                    $completedtasks = $completedtasks->count();
                    $droptasks = $droptasks->count();


                    $fdate =  User::find($id)->created_at;
                    $tdate = date('Y-m-d H:s:i');
                    $datetime1 = new \DateTime($fdate);
                    $datetime2 = new \DateTime($tdate);
                    $interval = $datetime1->diff($datetime2);
                    $days = $interval->format('%a');//Its counts all days

                    // $role = DB::table('roles')->where('roles.id',Auth::User()->role_id)->select('roles.name')->get();
                    // $institute_name = DB::table('institutes')->where('institutes.id',Auth::User()->institutes_id)->select('institutes.name')->get();


                    return view('Profile.show', ['assign_chart' => $assign_chart,'completed_chart' => $completed_chart,'progress_chart' => $progress_chart])->with(compact('users','totaltasks','totalcredits','days','completedtasks','droptasks','created_at'));
                            // return view('Profile.show',compact('users'));
}

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $users = User::find($id);
        return view('Profile.edit',compact('users'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'first_name' => '',
            'last_name' => '',
            'email' => '',
            'phone_number' => '',
            'dob' => '',
            'qualification' => '',
            'specialization' => '',
            'marks' => '',
            'passout' => '',
            'collegeaddress' => '',
            'homeaddress' => '',
        ]);


        User::find($id)->update($request->all());
        return redirect()->route('Profile.index')
                        ->with('success','Profile updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        User::find($id)->delete();
        return redirect()->route('Profile.index')
                        ->with('success','Profile deleted successfully');
    }
}
