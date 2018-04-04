@extends('layouts.auth')

@section('template_title')
	{{ Lang::get('titles.activation') }}
@endsection

@section('content')
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="panel panel-default">
					<div class="panel-heading">{{ Lang::get('titles.activation') }}</div>
					<div class="panel-body">
						<p>{{ Lang::get('auth.regThanks') }}</p>
						<h2>{{ Lang::get('auth.anEmailWasSent',['email' => $email, 'date' => $date ] ) }}</h2>
						<p>{{ Lang::get('auth.clickInEmail') }}</p>
						<p>{{ Lang::get('auth.clickHereResend') }}</p>
						<p>Please check your mail inbox before clicking this link... <a href='/activation'>Resend</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
@endsection