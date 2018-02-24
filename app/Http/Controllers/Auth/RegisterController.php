<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\institute;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/admin/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        if($data['role_id']==6){
            return Validator::make($data,    
            [
            'role_id' => 'required',
            'institutes_id' => 'required',
            'branch_id' => 'required',
            'batch_id' => 'required',            
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
            'phone_number' => 'required', ]);

         } else{
                return Validator::make($data, [
            'role_id' => 'required',
            'institutes_id' => 'required',           
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
            'phone_number' => 'required',           
                ]);
                
            }      
        
               
            
            
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return User
     */
    protected function create(array $data)
    {   if($data['role_id']!=6){
        $data['branch_id']=0;
        $data['batch_id']=0;
    }
        return User::create([            
            'role_id' => $data['role_id'],
            'institutes_id' =>  $data['institutes_id'],
            'branch_id' => $data['branch_id'],
            'batch_id' => $data['batch_id'],
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
            'phone_number' => $data['phone_number'],
            
        ]);
    }
}
