<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
class AuthentificationController extends Controller
{
    public function login()
    {
        return view('Admin/Login');
    }

    public function confirmLogin(Request $request){
        $user=$request->input('username');
        $password=$request->input('password');
        $account=DB::table('account')
        ->where([
            ['Username','=',$user],
            ['Password','=',$password]
        ])
        ->select('Id','Username','Role','Name')
        ->first();

        if(!empty($account)){
            session(['id'=>$account->Id, 'username'=>$account->Username, 'role'=>$account->Role, 'name'=>$account->Name]);
            return redirect()->action([ArticleController::class,'statisticArticles']);
        }
        else{
            $message="Username/Email or Password is incorrect";
            return view('admin/login',compact('message'));
        }
    }

    public function logout(){
        Session::flush();

        return redirect()->action([AuthentificationController::class,'login']);
    }
}
