@extends('layouts.app')
@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12 margin-tb">
            
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('Profile.index') }}"> Back</a>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-10">
            <div class="panel panel-primary">
                <div style="color:white" class="panel-heading"><center>Welcome to User Profile </center></div>

                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6 col-xs-12 col-md-6 col-lg-6">
                            <div class="table-responsive">

                                <table class="table table-striped" style="color:#2471A3">
                                <tr>
                                    <th>Full Name</th><td>{{ $users->first_name }}{{ $users->last_name }}</td>
                                </tr>
                                <tr>
                                    <th>Email</th><td>{{ $users->email  }}</td>
                                </tr>
                                <tr>
                                    <th>Mobile Number</th><td>{{ $users->phone_number  }}</td>
                                </tr>
                                <tr>
                                    <th>Date Of Birth</th><td>{{ $users->dob  }}</td>
                                </tr>
                                <tr>
                                    <th>Qualification</th><td>{{ $users->qualification  }}</td>
                                </tr>
                                <tr>
                                    <th>Specialization</th><td>{{ $users->specialization  }}</td>
                                </tr>
                                <tr>
                                    <th>Marks</th><td>{{ $users->marks  }}</td>
                                </tr>
                                <tr>
                                    <th>Passed Out</th><td>{{ $users->passout }}</td>
                                </tr>
                                <tr>
                                    <th>College Address</th><td>{{ $users->collegeaddress }}</td>
                                </tr>
                                <tr>
                                    <th>Home Address</th><td>{{ $users->homeaddress }}</td>
                                </tr>
                                </table>
                            </div>
                        </div>   
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


    <div class="row">
       
</div>


<div class="container-fluid">
    <div class="row">
        <div class="col-md-10">
            <div class="panel panel-primary">
                <div style="color:white" class="panel-heading"><center>User ASDP Data and Proress Charts </center></div>

                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-5">
                        @foreach($created_at as $create)
                            <h3>ASDP Start date : {{ $create->created_at}}</h3> 
                        @endforeach 

                            <h3>Association with ASDP : {{ $days }} days </h3> 
                            <h3>Completed tasks : {{ $completedtasks}}</h3>
                            <h3>Total Credits : {{ $totalcredits}}</h3>
                            <h3>Dropped Tasks : {{ $droptasks }}</h3>
                        </div>
                        <div class="col-lg-5">
                            {!! $progress_chart->html() !!}
                                
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

{!! Charts::assets() !!}
<div class="app">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10">
                <div class="panel panel-primary">
                    <div style="color:white" class="panel-heading">
                        <center>Welcome to Progress Chats</center>
                    </div>
                    <div class="panel-body">
                           
                        <div class="col-md-4">
                            {!! $assign_chart->html() !!}
                        </div>
                        <div class="col-md-4">
                            {!! $completed_chart->html() !!}
                        </div> 
                            
                            
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>

<!-- End Of Main Application -->
{!! Charts::scripts() !!}
{!! $assign_chart->script() !!}
{!! $completed_chart->script() !!}
{!! $progress_chart->script() !!}

@endsection
