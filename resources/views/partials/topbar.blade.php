
<header class="main-header">

    <a href="{{ url('/home') }}" class="logo"
       style="font-size: 16px;">
        <!-- mini logo for sidebar mini 50x50 pixels -->
    <span class="logo-mini">
        <i class="fa fa-adn"></i></span>
        <!-- logo for regular state and mobile devices -->
          <span class="logo-lg">
         <h3>AMEYEM</h3>
         </span>
    </a>
   
     <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                   
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                   
                    </a>
                    <a class="navbar-brand" href="{{ url('/home') }}">

                        <b style="color:white">{{ config('app.name', 'Laravel') }}</b>

                    </a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        
                    </ul>
                    <ul class="nav navbar-nav navbar-right">

                        <!-- @if (Route::has('login')) -->

                            <!-- @if (Auth::guest())
                            <li><a href="{{ url('/login') }}"><span style="color:white" class="glyphicon glyphicon-log-in"></span><b style="color:white"> Login</b></a></li>
                            <li><a href="{{ url('/register') }}"><span style="color:white" class="glyphicon glyphicon-user"></span><b style="color:white"> Sign Up</b></a></li>
                            @elseif(isMentor())
                            <li><a href="{{ route('createCourse') }}"><b>New course</b></a></li>
                            <li><a href="{{ route('courses') }}"><b>My courses</b></a></li>
                            <!-- <li><a href="#">Students</a></li>   -->
                            <!-- @elseif(isAdmin())
                            <li><a href="{{ route('ReviewCV') }}"><b>Mentors</b></a></li>
                            <li><a href="{{ route('Allcourses') }}"><b>Courses</b></a></li>
                            <li><a href="{{ route('Allstudents') }}"><b>Students</b></a></li>
                            @elseif(isStudent())
                            <li><a href="{{ route('courseLibrary') }}"><b>Library</b></a></li>
                            <li><a href="{{ route('studentCourses') }}"><b>My courses</b></a></li>
                            @endif --> 
               
                            @if (Auth::check())
                                <!-- <li><a href="{{ route('forumFeed') }}"><b>Forum</b></a></li> -->
                                <li><a href=""><b>Welcome {{Auth::user()->first_name}}</b></a></li>
                                <li>
                                    <a href="#logout" onclick="$('#logout').submit();">
                                        <span class="title"><b>Logout</b></span>
                                    </a>
                                </li>
                             
                            @endif          
                                <!-- <li><a href="{{ url('/login') }}"><span style="color:white" class="glyphicon glyphicon-log-in"></span><b style="color:white"> Login</b></a></li>
                                <li><a href="{{ url('/register') }}"><span style="color:white" class="glyphicon glyphicon-user"></span><b style="color:white"> Sign Up</b></a></li> -->
                            
                       
                        <!-- @endif -->
                   
                    </ul>
                </div>
            </div>
        </nav>



    



        
</header>


