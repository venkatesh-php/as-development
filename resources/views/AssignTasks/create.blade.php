@extends('layouts.app')
@section('content')

<script>
    $('#myDatepicker').datepicker({
        'formatDate': 'Y-m-d H:i:s'
    });
    $('#myDatepicker2').datepicker({
        'formatDate': 'Y-m-d H:i:s'
    });
</script>
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('AdminTasks.index') }}"> Back</a>
            </div>
        </div>
    </div>

    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif


<div class="app">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10">
                <div class="panel panel-primary">
                    <div style="color:white" class="panel-heading">
                        <center>Task Details</center>
                    </div>
                    <div class="panel-body" style="color:green">

                    <table class="table table-striped">
                    <tr>
                        <th>Task Id</th>
                        <th>Work Nature </th>
                        <th>Work Title</th>
                        <th>Work Description</th>
                    </tr>
                    
                    <tr>
                        <td>{{ $works->id }}</td>
                        <td>{{ $works->worknature }}</td>
                        <td>{{ $works->worktitle }}</td>
                        <td>{{ $works->workdescription }}</td>
                            
                    </tr>
                   
                </table>
                    

                    </div>
                    
                 </div>
            </div>
        </div>
    </div>
</div>




<div class="app">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10">
                <div class="panel panel-primary">
                    <div style="color:white" class="panel-heading">
                        <center>Welcome to New Assign Task Environment</center>
                    </div>
                        <div class="panel-body">

                            {!! Form::open(array('route' => 'AssignTasks.store','method'=>'POST')) !!}
                            <div class="row">


                                <div class="col-xs-12 col-sm-12 col-md-12" style="display:none">
                                    <div class="form-group">
                                        <strong>Task Name:</strong>
                                        {!! Form::text('task_id', $works->id,array('class' => 'form-control')) !!}
                        
                                    </div>
                                </div>

                                <div class="col-xs-12 col-sm-12 col-md-12" style="display:none">
                                    <div class="form-group">
                                        <strong>Assign Task Teacher ID :</strong>
                                        {!! Form::text('assign_user_id',Auth::user()->id ,array('class' => 'form-control')) !!}
                        
                                    </div>
                                </div>

                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="form-group">
                                        <strong>Target Date :</strong>

                                        {!! Form::date('target_at', $targetdate ) !!}

                                    </div>
                                </div>


                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="form-group">
                                        <strong style="color:green">User Name</strong><br>
                                        <!-- <select name="user_id" class="form-control"> -->
                                            @foreach ($users as $key => $user)
                                                <input type ="checkbox" name='user_id[]' value = "{{ $user->id}}">{{ $user->id}} . {{$user->name}} , {{$user->email}}<br>                                                <!-- <option value="{{$user->id}}">{{$user->name}} , {{$user->email}}</option>                 -->
                                            @endforeach
                                        <!-- </select> -->
                                
                                    </div>
                                </div>
                                
                                <div class="col-xs-12 col-sm-12 col-md-12" style="color:green">
                                    <div class="form-group">
                                        <strong>Guide Name</strong>
                                        <select name="guide_id" class="form-control">
                                            @foreach ($teachers as $teacher)
                                                <option value="{{$teacher->id}}">{{$teacher->name}} , {{$teacher->email}}</option>                
                                            @endforeach
                                        </select>    
                                    </div>
                                </div>

                                <div class="col-xs-12 col-sm-12 col-md-12" style="color:green">
                                    <div class="form-group">
                                        <strong>Reviewer Name</strong>
                                        <select name="reviewer_id" class="form-control">
                                            @foreach ($teachers as $teacher)
                                                <option value="{{$teacher->id}}">{{$teacher->name}} , {{$teacher->email}}</option>                
                                            @endforeach
                                        </select>              
                                    </div>
                                </div>

                                <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                </div>


                            </div>
                            {!! Form::close() !!}

                        </div>
                    
                    </div>
                </div>
            </div>
        </div>
    </div>




@endsection