<?php
namespace App\Http\Controllers;
use Auth;
use App\Notifications\CustomEmail;
use App\User;
use Illuminate\Http\Request;
use Snowfire\Beautymail\Beautymail;
use DB;
class EmailController extends Controller
{
    
//    public function customEmail(Request $request)
//     {
//         if ($request->isMethod('get'))
//             return view('custom_email');
//         else {
//             $rules = [
//                 'to_email' => 'required|email',
//                 'subject' => 'required',
//                 'message' => 'required',
//             ];
//             $this->validate($request, $rules);
//             $user = new User();
//             $user->email = $request->to_email;
//             $user->notify(new CustomEmail($request->subject, $request->message));
//             $request->session()->put('status', true);
//             return back();
//         }
//     }

    public function autoEmail()
    {
    
        if (Auth::user()->role_id != 1) {
            return 'You are not ADMIN';
        }
        
    
        $name='';
        $email='';
        // 
        $jobseekers = DB::table('jobseekers')
        ->whereNotNull('Email_Id')
        ->select('Name as name','Email_Id as email')->get();
        // $beautymail = app()->make(Snowfire\Beautymail::class);
        $beautymail = app(Beautymail::class);
        foreach ($jobseekers as $jseeker) {
            // global $name, $email;

            $name = $jseeker->name;
            // $email=$jseeker->email;
            // var_dump($email);
            $beautymail->send('emails.welcome', ['name'=>$name], function($message)use ($jseeker)
            {
                $message
                    ->from('info@ameyem.com')
                    
                    ->to($jseeker->email, $jseeker->name)
                    ->subject('Update on interview at Ameyem Geosolutions');
            });
        }
        // return $jobseekers; 
        return "Emails sent successfully";

    }


    
    public function autoEmail2newstudents()
    {
    
        if (Auth::user()->role_id != 1) {
            return 'You are not ADMIN';
        }
        
    
        $name='';
        $email='';
        // 
        $collegestudents = DB::table('collegestudents')
        ->whereNotNull('email')
        // ->where('id',139)
        ->select('name','email')->get();

        $beautymail = app(Beautymail::class);
        foreach ($collegestudents as $collegestudent) {
            $name = $collegestudent->name;
            $beautymail->send('emails.asdp4newstudents', ['name'=>$name], function($message)use ($collegestudent)
            {
                $message
                    ->from('info@ameyem.com')
                    
                    ->to($collegestudent->email, $collegestudent->name)
                    ->subject('Presentation (Shape Your Career) & Free Web Development Course at Ameyem Skill Labs');
            });
        }
        // return $collegestudents; 
        return "Emails sent successfully";

    }

}