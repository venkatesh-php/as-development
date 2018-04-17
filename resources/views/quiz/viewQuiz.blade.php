@extends('layouts.app')
@section('content')
    <?php  $questions = $quiz_data->question ?>
     <div id="wrapper">
        <div class="panel">
           <div class="panel-heading">
               <h1 class="text-center"><hr>Answer the questions<hr></h1>
               <h2>Time left for submission: <span id="timestamp"></span></h2>
           </div>
        </div>

         <div class="container">
         
             <form id="questions_container" action="" method="post">
                 {{ csrf_field() }}

                 <input type="hidden" value="{{ he($quiz_data->chapter_id) }}"
                        name="chapter_id">
                

                 @foreach($questions as $question)
                     <div class="panel  panel-default quiz_table">
                         <div class="panel-heading">
                             <span class="qbox">Q</span>
                             <h4 class="text-left">{{$question->question}}</h4>
                         </div>
                         <div class="">
                             <table class="table table-responsive">
                                 <tr>
                                     {{--options--}}
                                     <td>
                                         <input type="radio" name="{{ he($question->id) }}" class="button btn btn-default" value="A"  required > {{$question->optionA}}
                                     </td>
                                     <td>
                                         <input type="radio" name="{{ he($question->id) }}" class="button btn btn-default" value="B" required> {{$question->optionB}}
                                     </td>
                                     <td>
                                         <input type="radio" name="{{ he($question->id) }}" class="button btn btn-default" value="C" required> {{$question->optionC}}
                                     </td>
                                     <td>
                                         <input type="radio" name="{{ he($question->id) }}" class="button btn btn-default" value="D" required> {{$question->optionD}}
                                     </td>
                                     <td style="display:none">
                                         <input type="radio" name="{{ he($question->id) }}" class="button btn btn-default" value="timeout" checked="checked"> Other
                                     </td>
                                 </tr>
                             </table>
                         </div>
                     </div>
                 @endforeach
                     <input id="mySubmit" type="submit" class="button btn btn-primary pull-left" value="Submit answers">
             </form>
         </div>
     </div>
         <script>




var time4submission=<?php echo(count($questions)); ?>*45000;
window.setTimeout(()=>document.getElementById("mySubmit").click(),time4submission+1000) ;
var countDownDate = new Date().getTime() + time4submission;

// Update the count down every 1 second
var x = setInterval(function() {

    // Get todays date and time
    var now = new Date().getTime();
   // console.log(countDownDate)
    //var countDownDate =now+10000;
    
    // Find the distance between now an the count down date
    var distance = countDownDate - now;
    
    // Time calculations for days, hours, minutes and seconds
   // var days = Math.floor(distance / (1000 * 60 * 60 * 24));
   // var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
    // Output the result in an element with id="demo"
    document.getElementById("timestamp").innerHTML = 
   // days + "d " + hours + "h "    + 
    minutes + "m " + seconds + "s ";
    
    // If the count down is over, write some text 
    if (distance < 0) {
        clearInterval(x);
        document.getElementById("timestamp").innerHTML = "EXPIRED";
    }
}, 1000);
    </script>
@endsection




