
@extends('layouts.auth')

@section('content')
    <div class="container-fluid">
        <nav class="navbar navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="{{ url('/') }}">

                        <b style="color:white">{{ config('app.name', 'Laravel') }}</b>

                    </a>
                </div>
                
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        
                    </ul>
                    <ul class="nav navbar-nav navbar-right">

                        @if (Route::has('login'))
               
                            @if (Auth::check())
                                <li><a href="{{ url('/home') }}"><b style="color:white">Home</b></a></li>
                                <!-- <li><a href="{{ url('/logout') }}"><b>logout</b></a></li> -->
                            @else          
                                <!-- <li><a href="{{ url('/login') }}"><span style="color:white" class="glyphicon glyphicon-log-in"></span><b style="color:white"> Login</b></a></li> -->
                                <li><a href="{{ url('/register') }}"><span style="color:white" class="glyphicon glyphicon-user"></span><b style="color:white"> Registration</b></a></li>
                            @endif
                       
                        @endif
                   
                    </ul>
                </div>
            </div>
        </nav>
    </div>
  

    <div class="container">

                <div class="content"> 
                    <center>
                    <br>
                        <div class="title m-b-xs">
                    
                        <h1>@lang('titles.app') </h1>
                            <h2>@lang('titles.app2')</h2>                            
                        </div>
                        </center
                 </div>

                 <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                     <h3 class="text-center">Welcome Note : <a class="btn btn-primary" href="/download/ASDP-Welcome-Guide.pdf" >Download</a></h3>

                    </div>
                  </div>

      </div>


        
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading"><center><h2>Ameyem Skills Login</h2></center></div>
                
                    <div class="panel-body">
                        <form class="form-horizontal" role="form" method="POST" action="{{ route('login') }}">
                            {{ csrf_field() }}

                            <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                                <label for="email" class="col-md-4 control-label">E-Mail Address</label>

                                <div class="col-md-6">
                                    <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required autofocus>

                                    @if ($errors->has('email'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('email') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                                <label for="password" class="col-md-4 control-label">Password</label>

                                <div class="col-md-6">
                                    <input id="password" type="password" class="form-control" name="password" required>

                                    @if ($errors->has('password'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('password') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-6 col-md-offset-4">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> Remember Me
                                        </label>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-group margin-bottom-3">
                                <div class="col-md-8 col-md-offset-4">
                                    <button type="submit" class="btn btn-primary">
                                        Login
                                    </button>
                                    <span><b>Or</b></span>
                                    {{--  <button  class="btn btn-success">  --}}
                                        <a class="btn btn-success" href="{{ route('register') }}"><b style="color:white">Register</b></a>   
                                    {{--  </button>  --}}
                                
                                </div>

                                <div class="col-md-8 col-md-offset-4">
                                    
                                   <a class="btn btn-link" href="{{ route('password.request') }}">
                                        Forgot Your Password?
                                    </a>
                                </div>
                            </div>
                        </form> 

                      
                    </div>
            </div>
        </div>
    </div>
</div>
@include("partials.footer")
@endsection
  
