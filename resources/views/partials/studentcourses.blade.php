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

    <div class="container">
    @if(!count($studentData->enrollment)>0)
    <div class="row text-center">
    <h1>You have not enrolled any course yet.</h1>
    <h2> Please enroll from library </h2>
   
    </div>
    @else
    <h1 class="text-center">Current courses</h1>
    @endif
    <div class="row">
            @foreach($studentData->enrollment as $enrollment)
                @if($enrollment->status == 1)
                    
                        <a href="{{route('viewCourse',['id'=>he($enrollment->course->id)])}}" role="button">
                        <div class="col-sm-4 col-sm-offset-1 panel" >
                            <div class="course_header">
                                
                                    <h3>{{ $enrollment->course->name}} </h3>
                               @if($enrollment->ch_completed>0)
                                 <span href="#" class="label btn-ongoing">In Progress</span>
                                @else
                               
                                <span href="#" class="label btn-danger">Enrolled</span>
                                @endif

                            </div>
                            <hr>
                            <h4>{{$enrollment->creds_earned}} credits earned</h4>
                            <div class="extStatus">
                            <div id="intStatus{{he($enrollment->course->id)}}">
                            </div>
                            </div>
                            <p>{{ $enrollment->course->description}}</p>
                        </div>
                         </a>
                    
                @else
                
                    {{--  <h1 class="text-center">Past courses</h1>  --}}
                     <a href="{{route('viewCourse',['id'=>he($enrollment->course->id)])}}" role="button">
                    <div class="col-sm-4 col-sm-offset-1 panel past-courses">
                        <div class="course_header">
                            <h3>{{ $enrollment->course->name}}</h3>
                            <span href="#" class="label btn-failed">Completed</span>
                        </div>
                        <hr>
                        <h4>{{$enrollment->creds_earned}} credits earned</h4>
                        <div class="extStatus">
                            <div class="hunded">100%
                            </div>
                        </div>
                        {{--  <p>{{ $enrollment->course->description}}</p>   --}}
                    </div>
                    </a>
                
                @endif

                <script>statusBar('intStatus{{he($enrollment->course->id)}}',
                 {{$enrollment->ch_completed/$enrollment->ch_outof}})
                </script>

            @endforeach
            </div>
    </div>

    

