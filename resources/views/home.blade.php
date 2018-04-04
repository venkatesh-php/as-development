<!-- @inject('request', 'Illuminate\Http\Request') -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
@extends('layouts.app')
@section('content')
<div class="container-fluid">
            @if(isMentor())    
             <div class="row">
                  @include('partials.mentorcourses')
                 </div>
                <div class="row">
                 @include('partials.mentorcourse')
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
                 @include('partials.studentcources')
                 </div>
                <div class="row">
                 @include('partials.couse-library')
                 </div>
                 
            
            
            @endif

</div>
@endsection

