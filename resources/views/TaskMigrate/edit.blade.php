@extends('layouts.app')
@section('content')

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#role").change(function () {
            if ($(this).val() == "drop" || "approved") {
                $("#bb").show();
            } else {
                $("#bb").hide();
            }
        });
    });
</script>


<div class="app">
    <div class="container-fluid">
        <div class="row">
        <div class="col-sm-4 col-xs-4 col-md-4 col-lg-4">

        </div>
            <div class="card card-hover bg-success  col-xs-12 col-sm-6 col-md-4">
                
                <div class="card-body">
                    <div class="table-responsive">
           
                    <h3 class="card-title"><center><b>{{$task_details->worknature}}</b></center></h3>
 
                        <table class="table table-dark table-hover ">
                            <tr>
                                <td>
                                <b>Subject</b> : {{$task_details->subject}}
                                <p><b>Title</b> : {{$task_details->worktitle}}</p>
                                </td>
                            <tr>
                            <tr>
                                <td><p><b>Description</b> : {{$task_details->workdescription}}</p></td>
                            </tr>
                            <tr>
                                <td><p class="btn btn-primary"> User Credits: {{$task_details->usercredits}}</p>
                                <p class="btn btn-primary"> Guide Credits: {{$task_details->guidecredits}}</p>
                                <p class="btn btn-primary"> Reviewer Credits: {{$task_details->reviewercredits}}</p></td>
                                
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<div class="row">
    <div class="col-lg-12 margin-tb">
        <div class="pull-left">
            <h2>Send Your Task</h2>
        </div>
        <div class="pull-right">
              
        </div>
    </div>
</div>
<div class="table-responsive">
    <table class="table table-striped">
        <tr>
            <th>Assign Task Id</th> 
            <th>Request By</th>
            <th>Request</th>
            <th>Message</th>
            <th>Files</th>
            <th>Date</th>
      
                        
        </tr>
        @foreach ($user_tasks as $task)
        <tr>
            <td>{{ $task->assigntask_id }}</td> 
            <td>{{ $task->name}}</td>
            <td>{{ $task->request_for }}</td>
            <td>{{ $task->message }}</td>
            @if ($task->uploads)
            <td><a class="btn btn-info btn-xs" href="/download/{{ $task->uploads}}" download="{{ $task->uploads}}">File Links</a></td>
            @else
            <td>Nill</td>
            @endif
            <td>{{ $task->created_at }}</td>
          
        </tr>
        
         @endforeach
         
    </table>

    
@if($assign_tasks->status === 'drop')
                        <h1>Task Dropped</h1>

                        @elseif($assign_tasks->status === 'approved')
                        <h1>Task Approved</h1>


                        @else

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
                            <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-sm-4"></div>
                                    <div class="col-sm-4" style="background-color:lavender;">

                                    {!! Form::open(array('route' => 'TaskMigrate.store','method' => 'POST','files' => true)) !!}


                                    <div class="col-xs-12 col-sm-12 col-md-12" style="display:none">
                                            <div class="form-group">
                                                <strong>Assigned Task Id:</strong>
                                                {!! Form::text('assigntask_id', $assign_tasks->id) !!}
                                                
                                        </div>
                                    </div>

                                    <div id="role">
                                        <div class="col-xs-12 col-sm-12 col-md-12">
                                            <div class="form-group">
                                                <strong>Request For:</strong>
                                                    {!! Form::select('request_for', [
                                                    '1' => ['redo' => 'redo'],
                                                    '2' => ['drop' => 'drop'],
                                                    '3' => ['approved' => 'approved']],
                                                    array('class' => 'form-control')) !!}
                                            </div>
                                        </div>
                                    </div>


                                        <div id="bb" style="display:none">
                                            <div class="col-xs-12 col-sm-12 col-md-12">
                                                <div class="form-group">
                                                <strong>Rate Your Student Work:</strong>
                                                    {{--  {!! Form::text('obtained_marks', null, array('placeholder' => 'Give the marks to Student','class' => 'form-control')) !!}  --}}
                                                    {!!  Form::input('number', 'rating_to_user', null, ['id' => 'weight', 'class' => 'form-control', 'min' => 1, 'max' => 10]) !!}
                                                </div>
                                            </div>
                                        </div>


                                    <div class="col-xs-12 col-sm-12 col-md-12" style="display:none">
                                            <div class="form-group">
                                                <strong>Request By :</strong>
                                                {!! Form::text('request_by', Auth::user()->id) !!}
                                            </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                            <div class="form-group">
                                                <strong>Message :</strong>
                                                {!! Form::textarea('message', null, array('placeholder' => 'Message ','class' => 'form-control')) !!}
                                            </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <div class="form-group">
                                            <strong>Upload:</strong>
                                                {!! Form::file('uploads') !!}
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>

                                </div>
                               
                            @endif
                            
</div>





@endsection
