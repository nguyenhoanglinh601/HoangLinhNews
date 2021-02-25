<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use DateTime;
use Faker\Guesser\Name;

class DebugController extends Controller
{
    public function debug(Request $request)
    {
        // $categorys=DB::table('category')->get();
        // return view('debug/debug',compact('categorys'));

        // $name = $request->input('Name');
        // echo $name;

        // $timeCommentLastest=DB::table('comment')
        // ->join('articlecomment','IdComment', '=', 'Id')
        // ->where('IdArticle','=',100)
        // ->max('CreateAt');

        // $commentLastest=DB::table('comment')
        // ->where('CreateAt','=',$timeCommentLastest)
        // ->first();

        // $test=$commentLastest->Commentator;

        // return view('debug/debug',compact('test'));
        // date_default_timezone_set('Asia/Ho_Chi_Minh');
        // $comment=DB::table('comment')
        // ->where('Id','=',1)
        // ->select('CreateAt')
        // ->first();
        // $origin = new DateTime($comment->CreateAt);
        // $target = new DateTime("now");
        // $interval = $origin->diff($target);
        // if($interval->format('%d-%m-%y %h')=="0-0-0 0" && $interval->format('%i')<1){
        //     echo "vừa xong";
        // }
        // elseif($interval->format('%d-%m-%y %h')=="0-0-0 0"){
        //     echo $interval->format('%i')." phút trước";
        // }
        // elseif($interval->format('%d-%m-%y')=="0-0-0"){
        //     echo $interval->format('%h')." giờ trước";
        // }
        // elseif($interval->format('%m-%y')=="0-0"){
        //     echo $interval->format('%d')." ngày trước";
        // }
        // else{
        //     echo $origin->format('d/m/y');
        // }

        //return view('debug/debug');

        // $articles=DB::table('article')->get();

        // foreach($articles as $article){
        //     DB::table('articlecensor')
        //     ->insert([
        //         'IdArticle'=>$article->Id,
        //         'IdCensor'=>2,
        //         'IdAccount'=>2,
        //     ]);

        //     DB::table('article')
        //     ->update([
        //         'IdStatusCensor'=>2
        //     ]);
        // }
    }

    public function display()
    {
        // $string = "hoanglinh.com";
        // $arr=explode(".",$string);
        // echo $arr[0];

        // $currentTime = (int) round(now()->format('Uu') / pow(10, 6 - 3));
        // echo $currentTime;

        // $time = new DateTime();
        // $time=$time->format("Y-m-d-H-i-s-v");
        // echo $time;

        // $categoryTopics=DB::table('category')
        //                 ->join('topic','topic.IdCategory','=','category.Id')
        //                 ->select('category.Name as category_name','topic.Name as topic_name')
        //                 ->get();

        // foreach($categoryTopics as $categoryTopic){
        //     echo $categoryTopic->category_name;
        //     echo $categoryTopic->topic;
        // }

        // $testmax=DB::table('topic')->where('IdCategory','=','6')->max('Id');
        // echo $testmax;

        // for($i=1;$i<=10;$i++){
        //     DB::table('debug')
        //     ->updateOrInsert(['Id'=>$i],['Name'=>'test2']);
        // }

        return View('debug/debug');
    }

    public function debugajax()
    {
        return view('debug/debug');
    }

    public function debugpostajax(Request $request)
    {
        $value = $request->input('value');
    }

    public function debuggetajax()
    {
        $value = "linh";
        $result[] = array("result" => $value);
        echo json_encode($result);
    }
}
