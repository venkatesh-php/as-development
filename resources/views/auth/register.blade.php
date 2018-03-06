@extends('layouts.auth')


@section('content')

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#role").change(function () {
            if ($(this).val() == "6") {
                $("#bb").show();
            } else {
                $("#bb").hide();
            }
        });
    });
</script>


<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-primary">
                <div class="panel-heading"><center><h2>Ameyem Skills Registration</h2></center></div>
                <div class="panel-body" style="color:#006699">

                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/register') }}">
                        {{ csrf_field() }}

                        
                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            <label for="name" class="col-md-4 control-label"> Institute Name</label>

                            <div class="col-md-6">
                            
                            <select name="institutes_id" class="form-control">
                            <?php 
                            use App\institute;
                            $institutes = institute::all(); ?>
                            <option value="" disabled="disabled" selected="selected">Select Your Institute</option>
                                @foreach ($institutes as $institute)
                                    <option value="{{$institute->id}}">{{$institute->name}} </option>                
                                @endforeach
                                
                            </select>
                            <!-- <h6>Don't have in this list </h6> -->
                            <a href="{{ route('institutes.index') }}" class="btn btn-success btn-xs">Add New</a> 
                            <!-- Here We are adding New Institute deatails, Controller is going to -->
                            
                           
                            </div>
                            
                        </div>

                        
                        <div class="form-group">
                            <label for="role_name" class="col-md-4 control-label">Role</label>

                            <div id="role_id" class="col-md-6">

                            <select name="role_id" id="role" class="form-control">
                            <?php 
                            use Spatie\Permission\Models\Role;
                            
                            $roles = Role::all(); ?>
                            <option value="" disabled="disabled" selected="selected">Select Your Role </option>
                                @foreach ($roles as $role)

                                    @if($role->id >= 3)
                                    
                                    <option value="{{$role->id}}">{{$role->name}} </option>   
                                    @endif             
                                @endforeach
                                
                            </select>
                            </div>
                        </div>
                        

                        <div id="bb" style="display:none">
                        <div class="form-group{{ $errors->has('branch_id') ? ' has-error' : '' }}">
                            <label for="branch_id" class="col-md-4 control-label">Branch Name</label>

                            <div class="col-md-6">
                            
                            <select id='branch_id' name="branch_id" class="form-control">
                            <?php 
                            use App\Branch;
                            $branch = Branch::all(); ?>
                            <option value="" disabled="disabled" selected="selected">Select Your Branch</option>
                                @foreach ($branch as $branches)
                                    <option value="{{$branches->id}}">{{$branches->name}} </option>                
                                @endforeach
                            </select>
                            @if ($errors->has('branch_id'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('branch_id') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            <label for="batch_id" class="col-md-4 control-label">Batch Starting Year</label>

                            <div class="col-md-6">
                            
                            <select id='batch_id' name="batch_id" class="form-control">
                            <?php 
                            use App\batch;
                            $batch = batch::all(); ?>
                            <option value="" disabled="disabled" selected="selected">Select Your Batch</option>
                                @foreach ($batch as $batches)
                                    <option value="{{$batches->id}}">{{$batches->name}} </option>                
                                @endforeach
                            </select>
                            @if ($errors->has('batch_id'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('batch_id') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        </div>

                        
                        <div class="form-group{{ $errors->has('first_name') ? ' has-error' : '' }}">
                            <label for="first_name" class="col-md-4 control-label"> First Name</label>

                            <div class="col-md-6">
                                <input id="first_name" type="text" class="form-control" name="first_name" placeholder="Enter Your First name" required>

                                @if ($errors->has('name'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('first_name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group{{ $errors->has('last_name') ? ' has-error' : '' }}">
                            <label for="last_name" class="col-md-4 control-label"> Last Name</label>

                            <div class="col-md-6">
                                <input id="last_name" type="text" class="form-control" name="last_name" placeholder="Enter Your Last name" required>

                                 @if ($errors->has('name'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('last_name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>



                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            <label for="name" class="col-md-4 control-label"> User Name </label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control" name="name" value="{{ old('name') }}" placeholder="User Name Should be Unique" required autofocus>

                                @if ($errors->has('name'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="password-confirm" class="col-md-4 control-label">Mobile Number</label>

                            <div class="col-md-6">
                                <input id="phone_number" type="text" class="form-control" name="phone_number" placeholder="Enter Your Mobile Number" required>
                            </div>
                        </div>


                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email" class="col-md-4 control-label">E-Mail Address</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" placeholder="Enter Your Email Addredd" required>

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
                                <input id="password" type="password" class="form-control" name="password" placeholder="Enter Your Password" required>

                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
 
                        <div class="form-group">
                            <label for="password-confirm" class="col-md-4 control-label">Confirm Password*</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" placeholder="Enter Your Password Conformation"required>
                            </div>
                        </div>




                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    Register
                                </button>
                                <h4>Note : All Fields are required</h4>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
