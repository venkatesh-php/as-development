@extends('layouts.app')

@section('template_title')
	{!! trans('titles.exceeded') !!}
@endsection

@section('content')
<div style="margin-top: 50px;"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="panel panel-danger">
					<div class="panel-heading">
						{!! trans('titles.exceeded') !!}
					</div>
					<div class="panel-body">
						<p>
							{!! trans('auth.tooManyEmails', ['email' => $email, 'hours' => $hours]) !!}
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
@endsection