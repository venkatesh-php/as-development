<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Raleway', sans-serif;
                font-weight: 100;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .title small {
                font-size: 60px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
    </head>
    <body>




        <nav class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="{{ url('/') }}">

                    <b>{{ config('app.name', 'Laravel') }}</b>

                    </a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        
                    </ul>
                    <ul class="nav navbar-nav navbar-right">

                        @if (Route::has('login'))
               
                            @if (Auth::check())
                                <li><a href="{{ url('/home') }}">Home</a></li>
                                <li><a href="{{ url('/logout') }}">logout</a></li>
                            @else                            
                                <li><a href="{{ url('/login') }}"><span class="glyphicon glyphicon-log-in"></span><b> Login</b></a></li>
                                <li><a href="{{ url('/register') }}"><span class="glyphicon glyphicon-user"></span><b> Sign Up</b></a></li>
                            @endif
                       
                    @endif
                   
                    </ul>
                </div>
            </div>
        </nav>
  

        <div class="container">
            <div class="flex-center position-ref full-height">
                <div class="content">
                    <div class="title m-b-xs">
                        @lang('titles.app')<br />
                        <small>@lang('titles.app2')</small>
                    </div>
                    <div class="links">
                        <a href="http://skills.ameyem.com">Ameyem Skill Labs</a>
                        <a href="http://skills.ameyem.com/quiz">Ameyem Quiz</a>
                        <a href="http://skills.ameyem.com/apps_games">Ameyem Apps and Games</a>
                        <a href="http://skills.ameyem.com/book_seminar">Ameyem Seminar Booking</a>
                        <a href="http://sthali.in/">Sthali</a>
                    
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
