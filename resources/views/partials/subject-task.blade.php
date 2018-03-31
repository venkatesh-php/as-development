<?php


        $subjects = DB::table('subjects')
                    ->where('subjects.user_id',Auth::user()->id)
                    ->select('subjects.*')->get();
?>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12 col-xs-12 col-md-12 col-lg-12">
            <div class="pull-left">
                <h4 style="color:green">Add New Subject
                <p>
                    <a href="{{ route('Subject.index') }}" class="btn btn-success btn-xs">Add</a>
                </p>
                </h4>          
            </div>
            <div class="pull-right">
                <a class="btn btn-success" href="{{ url('/home') }}">Back</a>
                <a class="btn btn-success" href="{{ route('AdminTasks.create') }}"> Create New Task</a>
            </div>
        </div>

        <div class="col-sm-12 col-xs-12 col-md-12 col-lg-12">
            <div class="pull-left">
                <h1>
                @foreach ($subjects as $subject)            
                    <a class="btn btn btn-lg" href="{{ route('AdminTasks.show',$subject->subject)}}">{{$subject->subject}}</a>
                @endforeach
               </h1>
            </div>
        </div>
    </div>
</div>