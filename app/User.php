<?php
namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Spatie\Permission\Traits\HasRoles;
use Hash;

/**
 * Class User
 *
 * @package App
 * @property string $name
 * @property string $email
 * @property string $password
 * @property string $remember_token
*/
class User extends Authenticatable
{
    use Notifiable;
    use HasRoles;

    protected $fillable = ['name','first_name','last_name','email','password','remember_token','institutes_id','role_id','branch_id','batch_id','phone_number','dob','qualification','specialization','marks','passout','collegeaddress','homeaddress','profilepic','activated','token','signup_ip_address','signup_confirmation_ip_address','signup_sm_ip_address','admin_ip_address','updated_ip_address','deleted_ip_address','deleted_at'];
    
    
    /**
     * Hash password
     * @param $input
     */
    public function setPasswordAttribute($input)
    {
        if ($input)
            $this->attributes['password'] = app('hash')->needsRehash($input) ? Hash::make($input) : $input;
    }
    
    
    public function role()
    {
        return $this->belongsToMany(Role::class, 'role_user');
    }
    
    
    
}
