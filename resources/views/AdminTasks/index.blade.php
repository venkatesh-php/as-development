@extends('layouts.app')
 @section('content')

@include('partials.subject-task')

@if ($message = Session::get('success'))
    <div class="alert alert-success">
        <p>{{ $message }}</p>
    </div>
@endif


@include('partials.tasks')

@endsection