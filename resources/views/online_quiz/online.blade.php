@extends('layouts.app')
@section('content')

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12 col-xs-12 col-md-12 col-lg-12">
            <div class="pull-right">
                <a class="btn btn-success" href="{{ url('/home') }}">Back</a>
            </div>
        </div>
    </div>
</div>


<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12 col-xs-12 col-md-12 col-lg-12">
            <div class="panel panel-primary">
                <div style="color:white" class="panel-heading">
                    <center>List Of Available Quizzes in this Portal</center>
                </div>
          

                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <tr style="color:#660033">
                                <th>Quiz ID</th>
                                <th>Subject Name</th>
                                <th>Quiz Name</th>
                                <th>Total Questions</th>
                                <th>Options</th>
                            
                                
                            </tr>
                            @foreach ($quizzes as $key => $quiz)
                            <tr style="color:#2471A3">
                                <td>{{ $quiz->id }}</td>
                                <td>{{ $quiz->subject_name }}</td>
                                <td>{{ $quiz->quiz_name }}</td>
                                <td>
                                    <?php $questions = DB::table('online_quiz_questions')
                                    ->where('online_quiz_questions.online_quiz_id',$quiz->id)->count();
                                    ?>
                                    {{ $questions }}
                                </td>
                                <td>
                                <?php 
                                $quiz_status = DB::table('online_quiz_statuses')
                                ->join('online_quiz_questions','online_quiz_statuses.online_quiz_question_id','=','online_quiz_questions.id')
                                ->where('online_quiz_questions.online_quiz_id',$quiz->id)
                                ->where('online_quiz_statuses.user_id', Auth::user()->id)
                                ->select('online_quiz_statuses.*')->count();
                                $questions = DB::table('online_quiz_questions')
                                ->where('online_quiz_questions.online_quiz_id',$quiz->id)->count();

                                ?>
                                @if($quiz_status >= 1)
                                <a class="btn btn-success btn-xs" href="{{ route('viewResult',[$quiz->id]) }}">View Result</a>
                                @else
                                <a class="btn btn-primary btn-xs" href="{{ route('quizAttempt',[$quiz->id]) }}">Attempt</a>
                                @endif
                        
                                </td>
                            
                                
                                
                            </tr>
                            @endforeach
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



@endsection




