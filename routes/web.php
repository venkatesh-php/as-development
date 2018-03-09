<?php


// Homepage Route
Route::get('/', 'WelcomeController@welcome')->name('welcome');
// Route::get('/', function () { return redirect('/admin/home'); });
Route::resource('institutes','InstitutesController');
// Authentication Routes
Auth::routes();

// Public Routes
Route::group(['middleware' => ['web', 'activity']], function () {

    // Activation Routes
    Route::get('/activate', ['as' => 'activate', 'uses' => 'Auth\ActivateController@initial']);

    Route::get('/activate/{token}', ['as' => 'authenticated.activate', 'uses' => 'Auth\ActivateController@activate']);
    Route::get('/activation', ['as' => 'authenticated.activation-resend', 'uses' => 'Auth\ActivateController@resend']);
    Route::get('/exceeded', ['as' => 'exceeded', 'uses' => 'Auth\ActivateController@exceeded']);

    // Socialite Register Routes
    Route::get('/social/redirect/{provider}', ['as' => 'social.redirect', 'uses' => 'Auth\SocialController@getSocialRedirect']);
    Route::get('/social/handle/{provider}', ['as' => 'social.handle', 'uses' => 'Auth\SocialController@getSocialHandle']);

    // Route to for user to reactivate their user deleted account.
    Route::get('/re-activate/{token}', ['as' => 'user.reactivate', 'uses' => 'RestoreUserController@userReActivate']);
});

// Registered and Activated User Routes
Route::group(['middleware' => ['auth', 'activated', 'activity']], function () {

    // Activation Routes
    Route::get('/activation-required', ['uses' => 'Auth\ActivateController@activationRequired'])->name('activation-required');
    Route::get('/logout', ['uses' => 'Auth\LoginController@logout'])->name('logout');
    
});

// Registered and Activated User Routes
Route::group(['middleware' => ['auth', 'activated', 'activity', 'twostep']], function () {

    //  Homepage Route - Redirect based on user role is in controller.
    // Route::get('/home', ['as' => 'public.home',   'uses' => 'UserController@index']);
     // Change Password Routes...
     $this->get('change_password', 'Auth\ChangePasswordController@showChangePasswordForm')->name('auth.change_password');
     $this->patch('change_password', 'Auth\ChangePasswordController@changePassword')->name('auth.change_password');
     $this->post('logout', 'Auth\LoginController@logout')->name('auth.logout');
    Route::get('/home', ['as' => 'public.home',   'uses' => 'HomeController@index']);
    // Route::get('/home', 'HomeController@index');
    // // Show users profile - viewable by other users.
    Route::get('profile/{username}', [
        'as'   => '{username}',
        'uses' => 'ProfilesController@show',
    ]);
    Route::resource('AdminTasks','AdminTasksController');
Route::resource('AssignTasks','AssignTasksController');
Route::resource('Profile','ProfileController');
Route::resource('viewprofile','ViewprofileController');
Route::resource('TaskMigrate','TaskMigrateController');
Route::resource('UserTasks','UserTasksController');
Route::resource('Charts','ChartController');
Route::resource('Subject','SubjectController');
Route::resource('institutes','InstitutesController');
});




//Download a file
Route::get('/download/{file}', 'DownloadsController@download');



Route::group(['middleware' => ['auth'], 'prefix' => 'admin', 'as' => 'admin.'], function () {
    // Route::get('/home', 'HomeController@index');
    Route::get('/home', ['as' => 'public.home',   'uses' => 'HomeController@index']);
    Route::resource('permissions', 'Admin\PermissionsController');
    Route::post('permissions_mass_destroy', ['uses' => 'Admin\PermissionsController@massDestroy', 'as' => 'permissions.mass_destroy']);
    Route::resource('roles', 'Admin\RolesController');
    Route::post('roles_mass_destroy', ['uses' => 'Admin\RolesController@massDestroy', 'as' => 'roles.mass_destroy']);
    Route::resource('users', 'Admin\UsersController');
    Route::post('users_mass_destroy', ['uses' => 'Admin\UsersController@massDestroy', 'as' => 'users.mass_destroy']);


   
});
// // Registered, activated, and is current user routes.
// Route::group(['middleware' => ['auth', 'activated', 'currentUser', 'activity', 'twostep']], function () {

//     // User Profile and Account Routes
//     Route::resource(
//         'profile',
//         'ProfilesController', [
//             'only' => [
//                 'show',
//                 'edit',
//                 'update',
//                 'create',
//             ],
//         ]
//     );
//     Route::put('profile/{username}/updateUserAccount', [
//         'as'   => '{username}',
//         'uses' => 'ProfilesController@updateUserAccount',
//     ]);
//     Route::put('profile/{username}/updateUserPassword', [
//         'as'   => '{username}',
//         'uses' => 'ProfilesController@updateUserPassword',
//     ]);
//     Route::delete('profile/{username}/deleteUserAccount', [
//         'as'   => '{username}',
//         'uses' => 'ProfilesController@deleteUserAccount',
//     ]);

//     // Route to show user avatar
//     Route::get('images/profile/{id}/avatar/{image}', [
//         'uses' => 'ProfilesController@userProfileAvatar',
//     ]);

//     // Route to upload user avatar.
//     Route::post('avatar/upload', ['as' => 'avatar.upload', 'uses' => 'ProfilesController@upload']);
// });

// // Registered, activated, and is admin routes.
// Route::group(['middleware' => ['auth', 'activated', 'role:admin', 'activity', 'twostep']], function () {
//     Route::resource('/users/deleted', 'SoftDeletesController', [
//         'only' => [
//             'index', 'show', 'update', 'destroy',
//         ],
//     ]);

//     Route::resource('users', 'UsersManagementController', [
//         'names' => [
//             'index'   => 'users',
//             'destroy' => 'user.destroy',
//         ],
//         'except' => [
//             'deleted',
//         ],
//     ]);
//     Route::post('search-users', 'UsersManagementController@search')->name('search-users');

//     Route::resource('themes', 'ThemesManagementController', [
//         'names' => [
//             'index'   => 'themes',
//             'destroy' => 'themes.destroy',
//         ],
//     ]);

//     Route::get('logs', '\Rap2hpoutre\LaravelLogViewer\LogViewerController@index');
//     Route::get('routes', 'AdminDetailsController@listRoutes');
//     Route::get('active-users', 'AdminDetailsController@activeUsers');
// });

// Route::redirect('/php', '/phpinfo', 301);
