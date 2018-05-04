<!-- @inject('request', 'Illuminate\Http\Request') -->
{{--  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>  --}}
@extends('layouts.app')

@section('content')
<div class="container">

    <div class="row">
        <div class="col-md-8 col-md-offset-2">
        <h3 class="text-center">How to complete a course? : <a class="btn btn-primary" href="/download/Course-Guide.pdf" >Download</a></h3>
        
        </div>
        
    </div>
</div>



<div class="container-fluid">
<div class="row">
    <h2 class="text-center">Ameyem Coins Stock : <span style="color:red">{{$coins}} coins</span></h2>
    <div id="social-links">

            <div class="col-md-8 col-md-offset-2">
            <ul>        
            <label style="font-size:2em">Share with friends to get more coins...</label>        
                <a href="https://www.facebook.com/sharer/sharer.php?u=http://www.asdp.ameyem.com" img="/public/share.png" class="social-button " id=""><span class="fa fa-facebook-official" style="font-size:24px"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="https://twitter.com/intent/tweet?text=Excellent portal I found for learning new courses. Want to share with you. &amp;url=http://www.asdp.ameyem.com" class="social-button " id=""><span class="fa fa-twitter" style="font-size:24px"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="https://plus.google.com/share?url=http://www.asdp.ameyem.com" class="social-button " id=""><span class="fa fa-google-plus" style="font-size:24px"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="http://www.linkedin.com/shareArticle?mini=true&amp;url=http://www.asdp.ameyem.com&amp;title=Excellent portal I found for learning new courses. Want to share with you. &amp;summary=dit is de linkedin summary" class="social-button " id=""><span class="fa fa-linkedin" style="font-size:24px"></span></a>
            </ul>
            </div>
        </div>
</div>
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
            <h1 style="color:green">Total Users :<span style="color:#347ab7">{{$users->count()}}</span></h1>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <tr style="color:#2471A3">
                                
                                    <th>User Name</th>
                                    <th>Institute</th> 
                                    <th>Role</th>
                                    <th>Created At</th>
                                    
                                    
                                    
                                </tr>
                                @foreach ($users as $key => $user)
                                
                                <tr style="color:454545">
                                
                                    <td>{{ $user->name}}</td>
                                    <td>{{ $user->iname }}</td> 
                                    <td>{{ $user->rname }}</td>
                                    <td>{{ $user->created_at }}</td>
                                </tr>
                                @endforeach
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- <h1>Total Users : {{$users}}</h1> -->
            
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

