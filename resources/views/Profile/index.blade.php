@extends('layouts.app')
@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12 col-xs-12 col-md-12 col-lg-12">
            <div class="pull-left">
                <h2 style="color:#2471A3">User Profile</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-success" href="{{ url('/dashboard') }}">Back</a>
            </div> 
        </div>
    </div>
</div>


@if ($message = Session::get('success'))
    <div class="alert alert-success">
        <p>{{ $message }}</p>
    </div>
@endif

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12 col-xs-12 col-md-12 col-lg-12">
            <div class="table-responsive">
                <table class="table table-striped" style="color:#2471A3">
                    <tr>
                        <th>Sr.No</th>
                        <th>ID</th>
                        <th>Name</th><br>
                        <th>College Name</th>
                        <th>No.of Tasks Assigned</th>
                        <th>No.of Tasks Completed</th>
                        <th>Total Credits</th>
                        <th width="280px">Action</th>
                    </tr>
                    @foreach ($users as $key => $details)
                        <tr>
                            <td>{{ ++$i }}</td>
                            <td>{{ $details->id }}</td> 
                            <td>{{ $details->name }}</td>
                            <td>
                                <?php
                                $institute_name = DB::table('institutes')
                                ->join('users','institutes.id','=','users.institutes_id')
                                ->where('users.id',$details->id)
                                ->select('institutes.*')->get();


                                ?>
                                 @foreach($institute_name as $ii)
                                    {{$ii->name}}
                                @endforeach


                            
                            
                            </td>
                            <td>
                                <?php

                                    $assign_tasks = DB::table('assign_tasks')
                                    ->where('assign_tasks.user_id',$details->id)
                                    ->orderBy('assign_tasks.updated_at')->count();

                                ?>
                                {{$assign_tasks}}
                            </td>

                            <td>
                                <?php

                                    $completedtasks = DB::table('assign_tasks')
                                    ->where('assign_tasks.user_id',$details->id)
                                    ->where('assign_tasks.status','approved')
                                    ->orderBy('assign_tasks.updated_at')->count();
                                ?>
                                {{$completedtasks}}
                            </td>

                            <td>

                                <?php

                                    $completedtasks = DB::table('assign_tasks')
                                    ->where('assign_tasks.user_id',$details->id)
                                    ->where('assign_tasks.status','approved')
                                    ->orderBy('assign_tasks.updated_at')->get();
                                                        
                                    $totalcredits = $completedtasks->sum('user_credits'); 
                                ?>
                                {{ $totalcredits }}
                            </td>
                            
                            <td>
                                <a class="btn btn-info" href="{{ route('Profile.show',$details->id) }}">Show</a>
                                <a class="btn btn-primary" href="{{ route('Profile.edit',$details->id) }}">Edit</a>

                                
                                <!-- {!! Form::open(['method' => 'DELETE','route' => ['Profile.destroy', $details->id],'style'=>'display:inline']) !!}
                                {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!} 
                                {!! Form::close() !!}  -->
                            </td>
                        </tr>
                    @endforeach
                </table>

                {!!$users->render()!!}

            </div>
        </div>
    </div>
</div>
@endsection