<!-- @inject('request', 'Illuminate\Http\Request') -->
{{--  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>  --}}
@extends('layouts.app')

@section('content')
<div class="container">

<div class="row">
        <div class="col-md-8 col-md-offset-2">
       <h3 class="text-center">Welcome Note : <a class="btn btn-primary" href="/download/ASDP-Welcome-Guide.pdf" >Download</a></h3>
</div>
</div>
</div>



<div class="container-fluid">
            @if(isMentor())    
             <div class="row">
                  @include('partials.mentorcourses')
                  
                 </div>
                <div class="row">
               
                 @include('partials.mentorcourse')
                 
                 {{--  @include('mentor.course')  --}}
                 </div>

            <!-- <li><a href="#">Students</a></li>   -->
            @elseif(isAdmin())
            <li>
                <a href="{{ route('ReviewCV') }}">
    
                    <i class="fa fa-male"></i>
                    <span class="title">Mentors</span>
                </a>
            </li>
            <li>
                <a href="{{ route('Allcourses') }}">
          
                    <i class="	fa fa-folder"></i>
                    <span class="title">Courses</span>
                </a>
            </li>
            <li>
                <a href="{{ route('Allstudents') }}">
              
                    <i class="fa fa-users"></i>
                    <span class="title">Students</span>
                </a>
            </li>
            @elseif(isStudent())
            
                <div class="row">
                 @include('partials.studentcourses')
                 </div>
                <div class="row">
                 @include('partials.couse-library')
                 </div>
                 
            
            
            @endif

</div>
@endsection

