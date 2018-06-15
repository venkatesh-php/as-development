@extends('layouts.app')
@section('content')

<style>
.mytext{
    border:0;padding:10px;background:whitesmoke;
}
.upload{
    padding-left:18px;
}
.text{
    width:75%;display:flex;flex-direction:column;
}
.text > p:first-of-type{
    width:100%;margin-top:0;margin-bottom:auto;line-height: 13px;font-size: 12px;
}
.text > p:last-of-type{
    width:100%;text-align:right;color:silver;margin-bottom:-7px;margin-top:auto;
}
.text-l{
    float:left;padding-right:10px;
}        
.text-r{
    float:right;padding-left:10px;
}
.avatar{
    display:flex;
    justify-content:center;
    align-items:center;
    width:25%;
    float:left;
    padding-right:10px;
    background:whitesmoke;
    border-radius: 30%
}
.macro{
    margin-top:5px;width:85%;border-radius:5px;padding:5px;display:flex;
}
.msj-rta{
    float:right;background:whitesmoke;
}
.msj{
    float:left;background:white;
}
.frame{
    background:#e0e0de;
    height:300px;
    overflow:hidden;
    padding:0;
}
.frame > div:last-of-type{
    position:absolute;bottom:0;width:100%;display:flex;
}
body > div > div > div:nth-child(2) > span{
    background: whitesmoke;padding: 10px;font-size: 21px;border-radius: 50%;
}
body > div > div > div.msj-rta.macro{
    margin:auto;margin-left:1%;
}
.ul {
    width:100%;
    list-style-type: none;
    padding:18px;
    position:absolute;
    bottom:107px;
    display:flex;
    flex-direction: column;
    top:0;
    overflow-y:scroll;
}
.msj:before{
    width: 0;
    height: 0;
    content:"";
    top:-5px;
    left:-14px;
    position:relative;
    border-style: solid;
    border-width: 0 13px 13px 0;
    border-color: transparent #ffffff transparent transparent;            
}
.msj-rta:after{
    width: 0;
    height: 0;
    content:"";
    top:-5px;
    left:14px;
    position:relative;
    border-style: solid;
    border-width: 13px 13px 0 0;
    border-color: whitesmoke transparent transparent transparent;           
}  
input:focus{
    outline: none;
}        
::-webkit-input-placeholder { /* Chrome/Opera/Safari */
    color: #d4d4d4;
}
::-moz-placeholder { /* Firefox 19+ */
    color: #d4d4d4;
}
:-ms-input-placeholder { /* IE 10+ */
    color: #d4d4d4;
}
:-moz-placeholder { /* Firefox 18- */
    color: #d4d4d4;
}  
</style>
<div class="app">
    <div class="container-fluid">
        <div class="pull-right">
            <a  class="btn btn-success" href="{{ URL::previous()}}">Back</a> 
        </div>

        <div class="row">
        <div class="col-sm-4 col-xs-4 col-md-4 col-lg-4">

        </div>
            <div class="card card-hover bg-success  col-xs-12 col-sm-6 col-md-4">
                
                <div class="card-body">
                    <div class="table-responsive">
           
                    <h3 class="card-title"><center><b>{{ucfirst($task_details->worknature)}}</b></center></h3>
                        <b>Subject</b> : {{$task_details->subject}}
                                <p><b>Title</b> : {{$task_details->worktitle}}</p>
                                <p><b>Description</b> : {{$task_details->workdescription}}</p>
                                @if ($task_details->uploads)
                            <b>Files to download</b>
                                <label><a class="btn btn-info btn-xs" href="/download/{{ $task_details->uploads}}" download="{{ $task_details->uploads}}">Download</a></label>
                            @endif
                            <div>
                            <p class="btn btn-primary"> User Credits: {{$task_details->usercredits}}</p>
                                {{--  <p class="btn btn-primary"> Guide Credits: {{$task_details->guidecredits}}</p>
                                <p class="btn btn-primary"> Reviewer Credits: {{$task_details->reviewercredits}}</p>  --}}
                       </div>
                        {{--  <table class="table table-dark table-hover ">
                            <tr>
                                <td>
                                
                                </td>
                            <tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr>
                            
                            </tr>
                        </table>  --}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<div class="row">
    <div class="col-lg-12 margin-tb">
        <div style="text-align:center">
            <h2>Send Your Work</h2>
        </div>
        <div class="pull-right">
              
        </div>
    </div>
</div>
{{--  <div class="table-responsive">  --}}
    {{--  <table class="table table-striped">
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
            <td>{{ $task->first_name}}</td>
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
         
    </table>  --}}
<div class="col-sm-4 col-sm-offset-4 frame">
        <ul class="ul">
            @foreach ($user_tasks as $task)
                @if($task->first_name==Auth::user()->first_name)
                        <li style="width:100%">
                            <div class="msj macro">  
                            <div class="avatar">
                            {{--  <img class="img-circle" style="width:100%;" src=" + me.avatar + " />  --}}
                            <p>{{$task->first_name}}</p>
                            
                            @if ($task->uploads)

                              <small><a class="btn btn-info btn-xs" href="/download/{{ $task->uploads}}" 
                              download="{{ $task->uploads}}">File</a></small>
                               @endif        
                            </div>
                                <div class="text text-l"> 
                                <p>{{$task->request_for}}</p>
                                    <p> {{ $task->message }} </p> 
                                    
                                    {{--  <div class="col-sm-4"> 
                                        
                                      
                                    </div>  --}}
                                     
                                    {{--  <div class="col-sm-4 col-sm-offset-4">  --}}
                                    <p><small>{{$task->created_at}}</small></p>
                                    {{--  </div>   --}}
                                </div>  
                            </div>  
                        </li> 

                @else
                        <li style="width:100%;">   
                            <div class="msj-rta macro">   
                                <div class="text text-r">   
                                <p style="color:red">{{$task->request_for}}</p>
                                    <p> {{ $task->message }} </p>  
                                    <p><small>{{$task->created_at}}</small></p>    
                                </div>   
                            <div class="avatar" style="padding:0px 0px 0px 10px !important">
                            {{--  <img class="img-circle" style="width:100%;" src="  you.avatar  " />  --}}
                            <p> {{$task->first_name}} </p>
                            @if ($task->uploads)

                              <small><a class="btn btn-info btn-xs" href="/download/{{ $task->uploads}}" 
                              download="{{ $task->uploads}}">File</a></small>
                               @endif 
                            </div>                                   
                    </li> 
                    @endif
                @endforeach
        </ul>

            @if($assign_tasks->status === 'drop' || $assign_tasks->status === 'approved')
            <div style="padding:0px 20px 30px 20px !important; color:green"> <h3> Completed </h3><br></div>
            @else

            <div>
                {!! Form::open(array('route' => 'UserTasks.store','method' => 'POST','files' => true)) !!}
                                            {{--  <div class="form-group">  --}}
                                                {{--  <strong>Message :</strong>
                                                {!! Form::textarea('message', null, array('placeholder' => 'Message ','class' => 'form-control')) !!}
                                              --}}      
                                              
                                                {{--  <button  type="button" class="btn btn-default btn-sm">
                                                    <span for = "file-upload" class="glyphicon glyphicon-upload"></span> Upload
                                                    </button>
                                                    <input id="file-upload"  name="uploads"  type="file" style="visibility:hidden">                                       --}}
                                                    {{--                                         --}}
                                                    
                                                    <div>
                                                        <div class="upload">
                                                        <input   name="uploads"  type="file" >
                                                        </div>
                                                        <div class="msj-rta macro" >  
                                                            <div class="text text-r" style="background:whitesmoke !important">
                                                                <input class="mytext" name='message' placeholder="Type a message"/>
                                                            </div>  
                                                            <div style="padding:10px;" >
                                                            <button class="btn btn-primary" type="submit">
                                                            <span class="glyphicon glyphicon-share-alt"></span>
                                                            </button>
                                                            </div>  
                                                        </div>
                                                        
                                                        
                                                     
                                                    </div>
                                                    {{--  <i for = "file-upload" class="fas fa-upload"></i>  --}}
                                                    {{--  <span for = "file-upload" class="glyphicon glyphicon-share-alt"></span>  --}}
                                                     {{--  <span for = "file-upload" class="glyphicon glyphicon-upload"></span>  --}}
                                                    
       

                                                    
                                                        {{--  <button class="btn btn-primary" type="submit">
                                                            <span class="glyphicon glyphicon-share-alt"></span>
                                                        Send
                                                        </button>  --}}
                                                    
                                                    

                                                    

                                            {{--  </div>  --}}


                                    @if(isset($course_id))
                                    <div class="col-xs-12 col-sm-12 col-md-12" style="display:none">
                                            <div class="form-group">
                                                       {!! Form::text('course_id', $course_id) !!}
                                                
                                            </div>
                                    </div>
                                    @endif

                                    <div class="col-xs-12 col-sm-12 col-md-12" style="display:none">
                                            <div class="form-group">
                                                <strong>Assigned Task Id:</strong>
                                                {!! Form::text('assigntask_id', $assign_tasks->id) !!}
                                                
                                            </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-12" style="display:none">
                                            <div class="form-group">
                                                <strong>Request For::</strong>
                                                {!! Form::text('request_for', 'review') !!}
                                                
                                            </div>
                                    </div>

                                    {{--  <div class="col-xs-12 col-sm-12 col-md-12">
                                        <div class="form-group">
                                            <strong>Request For:</strong>
                                                {!! Form::select('request_for', [
                                                    '1' => ['review' => 'review']],
                                                    array('class' => 'form-control')) !!}
                                            </div>
                                    </div>  --}}
                                    

                                    <div class="col-xs-12 col-sm-12 col-md-12" style="display:none">
                                            <div class="form-group">
                                                <strong>Request By :</strong>
                                                {!! Form::text('request_by', Auth::user()->id) !!}
                                            </div>
                                    </div>

                                    {{--  <div class="col-xs-12 col-sm-12 col-md-12">  --}}
                                           
                                    {{--  </div>  --}}
                                    {{--  <div class="col-xs-12 col-sm-12 col-md-12">  --}}

                                    {{--  </div>  --}}

                                    {{--  <div class="col-xs-12 col-sm-12 col-md-12 text-center">  --}}
                                    
                                            
                                    {{--  </div>  --}}
                                    {!! Form::close() !!}

            </div>
            @endif
</div>
<div class="col-sm-4 col-sm-offset-4"> 
@if($assign_tasks->status === 'drop')
                        <h1>Task Dropped</h1>

    @elseif($assign_tasks->status === 'approved')
                        <h1>Task Approved</h1>

                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <tr>
                                        <th>User Marks</th>
                                        <th>Guide Marks</th>
                                        <th>Reviewer Marks</th>                
                                    </tr>
                               
                                    <tr> 
                                        <td>{{ $assign_tasks->user_credits }}</td>
                                        <td>{{ $assign_tasks->guide_credits }}</td>
                                        <td>{{ $assign_tasks->reviewer_credits }}</td>
                                    </tr>

                                </table>
                            </div>


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

{{--  
                            <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-sm-4"></div>
                                    <div class="col-sm-4" style="background-color:lavender;">

                                    

                                </div>  --}}
                               
@endif
                            
</div>





@endsection
