<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

use Auth;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/login';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function logout(Request $request) {
        Auth::logout();
        return redirect('/login');
    }

    public function username()
    {
        return 'email';
    }
    

    protected function authenticated(Request $request)
    {
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password]))
        {
            $user = Auth::user()->select('id', 'email', 'level', 'id_prodi')->where(['email' => $request->email])->first();
            $request->session()->put('logedin',true);
            $request->session()->put('level',$user->level);
            $request->session()->put('prodi',$user->id_prodi);
            $request->session()->put('email',$user->email);
            $request->session()->put('id',$user->id);
            return redirect()->intended('home');
        }
    }
}
