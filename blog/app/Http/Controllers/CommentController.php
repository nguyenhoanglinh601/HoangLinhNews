<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CommentController extends Controller
{
    public function saveComment(Request $request){
        $idArticle=$request->input('IdArticle');
        $content=$request->input('content');
        $commentator=$request->input('commentator');
        $IdCommentOrigin=0;
        $idComment=DB::table('comment')
        ->insertGetId([
            'Commentator'=>$commentator, 
            'Content'=>$content,
            'IdCommentOrigin'=>$IdCommentOrigin,
        ]);

        DB::table('articlecomment')
        ->insert([
            'IdArticle'=>$idArticle,
            'IdComment'=>$idComment
        ]);

        return $this->getComment($idComment);
    }

    public function getComment(int $idComment){

        $comment=DB::table('comment')
        ->where('Id','=',$idComment)
        ->select('Commentator','Content','LikeTimes')
        ->first();

        $commentator=$comment->Commentator;
        $content=$comment->Content;
        $likeTimes=$comment->LikeTimes;
        $createAt="vừa xong";

        return response()->json([$commentator,$content,$likeTimes,$createAt]);

    }
}
