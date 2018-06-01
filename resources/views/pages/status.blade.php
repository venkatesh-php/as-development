@extends('layouts.app')

@section('template_title')
	See Message
@endsection

@section('head')
@endsection

@section('content')
<div style="margin-top: 50px;"></div>

 <div class="container">
	<div class="row">
	    <div class="col-md-12">
			 @include('partials.form-status')
        </div>
    </div>
</div>

@endsection