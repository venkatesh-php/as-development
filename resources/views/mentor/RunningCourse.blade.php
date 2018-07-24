@extends('layouts.app')

@section('content')
<style>
    .course_header h3, .course_header .button{
        display: inline-block;
    }
    
    .course_header .label{
        float: right;
        padding: 10px;
    }
    
    .btn-ongoing {
        background: rgba(160, 222, 71, 1);
        color: whitesmoke;
        margin:10px;
        text-shadow: 1px 1px 1px rgba(59, 16, 16, 0.24);
    }

    .btn-failed{
        background: rgb(222, 91, 0);
        color: whitesmoke;
        margin:10px;
        text-shadow: 1px 1px 1px rgba(59, 16, 16, 0.24);
    }

    .past-courses{
        background: #dddddd !important;
    }
    .extStatus{
        background-color:rgb(200, 220, 220);
        height:20px;
        width:100%
    }
    .hunded{
        background-color:green;
        height:20px;
        width:100%;
        
    }

</style>
<script>
   function statusBar(id,width){
       var elem= document.getElementById(id);
            elem.style.height="20px";
            barwidth=Math.round(width*100)+"%"
                elem.style.width=barwidth;
                elem.innerHTML=barwidth;
                elem.style.backgroundColor="green";
   }
            
    </script>
    <div class="container-fluid">
  
    <h2 class="text-center">Current Running Courses</h2>
    <div class="row">
            @foreach($guideEnrolls as $enrollment)
                @if($enrollment->status == 1 && $enrollment->creds_earned > 0 )
                    
                        <a role="button">
                            <div class="col-sm-3 panel" >
                                <div class="course_header">
                                    <h4>{{ $enrollment->name}}</h4>
                                    <h5> {{ $enrollment->first_name}} {{ $enrollment->last_name }} </h5>
                                    @if($enrollment->ch_completed>0)
                                        <span class="label btn-ongoing">In Progress</span>
                                        @else
                                        <span class="label btn-danger">Enrolled</span>
                                    @endif
                                </div>
                                <!-- <hr> -->
                                <h4>{{$enrollment->creds_earned}} credits earned</h4>
                                <div class="extStatus">
                                    <div id="intStatus{{he($enrollment->course->id)}}">
                                    </div>
                                </div>
                            </div>
                           
                         </a>

                @else
                
                    {{--  <h1 class="text-center">Past courses</h1>  --}}
                     <!-- <a role="button">
                    <div class="col-sm-3 panel past-courses">
                        <div class="course_header">
                            <h4>{{ $enrollment->name}}</h4>
                            <h5> {{ $enrollment->first_name}} </h5>
                            <span href="#" class="label btn-failed">Completed</span>
                        </div>
                        <!-- <hr> -->
                       <!-- <h4>{{$enrollment->creds_earned}} credits earned</h4>
                        <div class="extStatus">
                            <div class="hunded">100%
                            </div>
                        </div>
                    </div>
                    </a> -->
                
                @endif

                @if($enrollment->ch_outof>0)
                <script>statusBar('intStatus{{he($enrollment->course_id)}}',
                 {{$enrollment->ch_completed/$enrollment->ch_outof}})
                </script>
               
                @endif

            @endforeach
            </div>
    </div>

 @endsection   

