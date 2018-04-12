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
</style>

    <div class="container">
    @if(!count($studentData->enrollment)>0)
    <div class="row text-center">
    <h1>You have not enrolled ay course yet.</h1>
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
                                
                                    <h3>{{ $enrollment->course->name}}</h3>
                               
                                <span href="#" class="label btn-ongoing">Enrolled</span>
                            </div>
                            <hr>
                            <p>{{ $enrollment->course->description}}</p>
                        </div>
                         </a>
                    
                @else
                
                    <h1 class="text-center">past courses</h1>
                    <div class="col-sm-4 col-sm-offset-1 panel past-courses">
                        <div class="course_header">
                            <h3>{{ $enrollment->course->name}}</h3>
                            <span href="#" class="label btn-failed">Failed</span>
                        </div>
                        <hr>
                        <p>{{ $enrollment->course->description}}</p>
                    </div>
                
                @endif
            @endforeach
            </div>
    </div>

