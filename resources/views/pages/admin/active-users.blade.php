@extends('layouts.app')

@section('template_title')
    {{ trans('titles.activeUsers') }}
@endsection

@section('content')
<div style="margin-top: 50px;"></div>

    <users-count :registered={{ $users }} ></users-count>

@endsection
