<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\User;
use App\Traits\ActivationTrait;
use App\Traits\CaptchaTrait;
use App\Traits\CaptureIpTrait;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use jeremykenedy\LaravelRoles\Models\Role;


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

    use ActivationTrait;
    use CaptchaTrait;
    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/activate';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest', [
            'except' => 'logout',
        ]);
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param array $data
     *
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        // $data['captcha'] = $this->captchaCheck();

        // if (!config('settings.reCaptchStatus')) {
            $data['captcha'] = true;
        // }
        if($data['role_id']==6){
        return Validator::make($data,
            [
                'role_id' => 'required',
                'institutes_id' => 'required',
                'branch_id' => 'required',
                'batch_id' => 'required',
                'name'                  => 'required|max:255|unique:users',
                'first_name'            => '',
                'last_name'             => '',
                'email'                 => 'required|email|max:255|unique:users',
                'password'              => 'required|min:6|max:30|confirmed',
                'password_confirmation' => 'required|same:password',
                // 'g-recaptcha-response'  => '',
                // 'captcha'               => 'required|min:1',
            ],
            [
                'name.unique'                   => trans('auth.userNameTaken'),
                'name.required'                 => trans('auth.userNameRequired'),
                'first_name.required'           => trans('auth.fNameRequired'),
                'last_name.required'            => trans('auth.lNameRequired'),
                'email.required'                => trans('auth.emailRequired'),
                'email.email'                   => trans('auth.emailInvalid'),
                'password.required'             => trans('auth.passwordRequired'),
                'password.min'                  => trans('auth.PasswordMin'),
                'password.max'                  => trans('auth.PasswordMax'),
                // 'g-recaptcha-response.required' => trans('auth.captchaRequire'),
                // 'captcha.min'                   => trans('auth.CaptchaWrong'),
            ]
        );
    }else{
        return Validator::make($data,
        [
            'role_id' => 'required',
            'institutes_id' => 'required',
            
            'name'                  => 'required|max:255|unique:users',
            'first_name'            => '',
            'last_name'             => '',
            'email'                 => 'required|email|max:255|unique:users',
            'password'              => 'required|min:6|max:30|confirmed',
            'password_confirmation' => 'required|same:password',
            'phone_number' => 'required',
            // 'g-recaptcha-response'  => '',
            // 'captcha'               => 'required|min:1',
        ],
        [
            'name.unique'                   => trans('auth.userNameTaken'),
            'name.required'                 => trans('auth.userNameRequired'),
            'first_name.required'           => trans('auth.fNameRequired'),
            'last_name.required'            => trans('auth.lNameRequired'),
            'email.required'                => trans('auth.emailRequired'),
            'email.email'                   => trans('auth.emailInvalid'),
            'password.required'             => trans('auth.passwordRequired'),
            'password.min'                  => trans('auth.PasswordMin'),
            'password.max'                  => trans('auth.PasswordMax'),
            // 'g-recaptcha-response.required' => trans('auth.captchaRequire'),
            // 'captcha.min'                   => trans('auth.CaptchaWrong'),
        ]
    );

    }



        
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param array $data
     *
     * @return User
     */
    protected function create(array $data)
    {
        $ipAddress = new CaptureIpTrait();
        if($data['role_id']!=6){
            $data['branch_id']=0;
            $data['batch_id']=0;
        }
        // $role = Role::where('slug', '=', 'unverified')->first();

        $user = User::create([

                'role_id' => $data['role_id'],
                'institutes_id' =>  $data['institutes_id'],
                'branch_id' => $data['branch_id'],
                'batch_id' => $data['batch_id'],
                'name'              => $data['name'],
                'first_name'        => $data['first_name'],
                'last_name'         => $data['last_name'],
                'email'             => $data['email'],
                'password'          => Hash::make($data['password']),
                'token'             => str_random(64),
                'signup_ip_address' => $ipAddress->getClientIp(),
                'activated'         => !config('settings.activation'),
                'phone_number' => $data['phone_number'],
            ]);

        // $user->attachRole($role);s
        $this->initiateEmailActivation($user);

        return $user;
    }
}
