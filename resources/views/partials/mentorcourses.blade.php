
<style>
    #course_list{
        background: white;
    }
</style>

    <div class="container" id="course_list">


        <h1 class="text-center">Courses by You</h1>
        <br>
            @if(!count($courses)>0)
            <div class="row text-center">
            <h1>You don't have any course Created</h1>
            <h2> Please Create one below</h2>
        
            </div>
            @endif
        {{--print errors--}}
        @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
        @endforeach

        {{--print messages after form submit--}}
        {{--  @if(Session::has('message'))
            <br>
            <div class="row">
                <div class="col-md-8 col-md-offset-2" id="flash_message">
                    <div class="alert alert-{{Session::get('type')}} alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <p class="text-center">
                            <span class="text-center">{{Session::get('subject')}}</span>
                            click
                            <a href="{{route('courses')}}"><strong>here</strong></a>
                            to add chapters</span>
                        </p>
                    </div>
                </div>
            </div>
        @endif  --}}
        <table class="table table-hover">
            @foreach($courses as $course)
            <tr>
                <td>
                   <b>{{$course['name']}}</b>
                </td>
                <td>
                    {{$course['description']}}
                </td>
                <td>
                    <a  class="btn btn-primary"
                        href="{{ route('manageCourse',['id'=>he($course->id)]) }}">Manage</a>
                </td>
                <td>
                    <a  class="btn btn-primary"
                        href="{{ route('editCourse',['id'=>he($course->id)]) }}">Edit</a>
                </td>
                <td>
                    <a  id = "FormDeleteTime" class="btn btn-danger"
                       href="{{ route('deleteCourse',['id' =>he($course->id)]) }}">Delete</a>
                </td>
            </tr>
            @endforeach
        </table>
    </div>
    <br>
    
    <script>
        $("#flash_message").delay(2000).slideUp();

     $("#FormDeleteTime").click(function (event) {
                 var x = confirm("Are you sure you want to delete?");
                    if (x) {
                        return true;
                    }
                    else {

                        event.preventDefault();
                        return false;
                    }

                });

    </script>



