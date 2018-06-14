@extends('layouts.app')
@section('content')
<div style="margin-top: 50px;"></div>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12 col-xs-12 col-md-12 col-lg-12">
            <div class="pull-left">
                <h2 style="color:#2471A3">Upload New Profile Picture</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ URL::previous() }}"> Back</a>
            </div>
        </div>
    </div>
</div>


    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

   {!! Form::open(array('route' => 'UserProfile.store','method' => 'POST','files' => true)) !!}
   <form action="{{ route('UserProfile.store') }}" method="post" enctype="multipart/form-data" class="form-horizontal">
    <div class="row">

        <div class="col-xs-12 col-sm-12 col-md-12" style='display:none'>
                <div class="form-group">
                    <strong>Assign Task Teacher ID:</strong>
                        {!! Form::text('user_id', Auth::user()->id) !!}
                
                </div>
            </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                    
            <!-- <strong>  Select file to Upload:</strong> (Image should be less than 500 kb)
                {!! Form::file('profilepic') !!} -->
           
                        <label for="name">Profile image</label>
                        <input type="file" class="form-control" name="profilepic" id="profilepic" required>
                    
                
            </div>
        </div>

    <div class="col-xs-12 col-sm-12 col-md-12 text-center">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>


    </div>
    {!! Form::close() !!}


@endsection

