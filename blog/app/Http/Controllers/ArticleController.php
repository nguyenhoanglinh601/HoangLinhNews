<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use DateTime;
use Illuminate\Http\Request;
use Exception;
use Illuminate\Support\Carbon;
use Throwable;

class ArticleController extends Controller
{
    public function PostArticle()
    {
        if (session('role') != '2') {
            return redirect()->route('login');
        }
        $categories = DB::table('category')->get();
        $topics = DB::table('topic')->get();
        $medias = DB::table('media')->get();
        return view('Admin/ArticleManagement/PostArticle', compact('categories', 'topics', 'medias'));
    }

    public function SaveArticle(Request $request)
    {
        if (session('role') != '2') {
            return redirect()->route('login');
        }

        try {
            $title = $request->input('Title');
            $summary = $request->input('Summary');
            $category = $request->input('Category');
            $topic = $request->input('Topic');
            $isComment = (int)$request->input('IsComment');
            $isPriority = (int)$request->input('IsPriority');
            $numberOfAuthor = $request->input('numberOfAuthor');
            $status = $request->input('status');
            $media = $request->input('Media');
            $numberOfParagraph = $request->input('numberOfParagraph');
            $avatar = "";

            $category = DB::table('category')->where('NameUnsigned', $category)->get();

            if ($status == "on") {
                $status = '1';
            } else {
                $status = '0';
            }

            if ($request->hasFile('avatar')) {
                $image = $request->file('avatar');
                $time = new DateTime();
                $time = $time->format("Y-m-d-H-i-s-v");
                $avatar = $time . '.' . $image->getClientOriginalExtension();
                $destinationPath = public_path('/upload/images');
                $image->move($destinationPath, $avatar);
            }

            $id = DB::table('article')->insertGetId(
                [
                    'Title' => $title,
                    'Summary' => $summary,
                    'IdCategory' => $category[0]->Id,
                    'IdTopic' => $topic,
                    'IsComment' => $isComment,
                    'IsPriority' => $isPriority,
                    'StatusDisplay' => $status,
                    'IdMedia' => $media,
                    'Thumbnail' => $avatar,
                    'View' => 0
                ]
            );

            for ($i = 1; $i <= $numberOfAuthor; $i++) {
                $author = $request->input('author-' . $i);
                DB::table('articleauthor')->insert(
                    [
                        'IdArticle' => $id,
                        'IdAuthor' => $author
                    ]
                );
            }

            for ($i = 1; $i <= $numberOfParagraph; $i++) {
                $content = $request->input('content-' . $i);
                $imageName = "";
                $figureImage = "";
                $desImage = "";
                $videoName = "";
                $figureVideo = "";
                $desVideo = "";

                if ($request->hasFile('image-' . $i)) {
                    $image = $request->file('image-' . $i);
                    $time = new DateTime();
                    $time = $time->format("Y-m-d-H-i-s-v");
                    $imageName = $time . '.' . $image->getClientOriginalExtension();
                    $destinationPath = public_path('/upload/images');
                    $image->move($destinationPath, $imageName);

                    $figureImage = $request->input('figure-image-' . $i);
                    $desImage = $request->input('des-image-' . $i);
                }

                if ($request->hasFile('video-' . $i)) {
                    $video = $request->file('video-' . $i);
                    $time = new DateTime();
                    $time = $time->format("Y-m-d-H-i-s-v");
                    $videoName = $time . '.' . $video->getClientOriginalExtension();
                    $destinationPath = public_path('/upload/videos');
                    $video->move($destinationPath, $videoName);

                    $figureVideo = $request->input('figure-video-' . $i);
                    $desVideo = $request->input('des-video-' . $i);
                }

                DB::table('paragraph')->insert(
                    [
                        'IdArticle' => $id,
                        'IdParagraph' => $i,
                        'Content' => $content,
                        'Image' => $imageName,
                        'TitleImage' => $figureImage,
                        'DescriptionImage' => $desImage,
                        'Video' => $videoName,
                        'TitleVideo' => $figureVideo,
                        'DescriptionVideo' => $desVideo
                    ]
                );
            }
        } catch (Throwable $e) {
            session(['messagePostArticle' => 'lỗi đăng bài viết, kiểm tra thông tin các trường và thử lại.']);
            return redirect()->route('postarticle');
        }
    }

    public function ReadArticle(Request $request)
    {
        $categories = DB::table('category')->get();
        $topics = DB::table('topic')->get();

        $idArticle = $request->id;
        $infoArticle = DB::table('article')
            ->join('articleauthor', 'article.Id', '=', 'articleauthor.IdArticle')
            ->join('author', 'author.Id', '=', 'articleauthor.IdAuthor')
            ->where([
                ['article.Id', '=', $idArticle],
                ['IdStatusCensor', '=', 2],
                ['StatusDisplay', '=', 1]
            ])
            ->select('article.Id', 'article.CreateAt', 'IdCategory', 'Title', 'Name', 'Summary')
            ->first();
        $timeCreateAricle = $infoArticle->CreateAt;
        $carbon = new Carbon($timeCreateAricle);
        $infoArticle->CreateAt = $carbon->format('d/m/Y h:i');

        $paragraphs = DB::table('paragraph')->where('IdArticle', '=', $idArticle)->get();

        $relationArticles = DB::table('article')
            ->where('IdCategory', '=', $infoArticle->IdCategory)
            ->inRandomOrder()
            ->limit(2)
            ->select('Id', 'Title', 'Thumbnail', 'Summary')
            ->get();

        $otherArticles = DB::table('article')
            ->inRandomOrder()
            ->limit(10)
            ->select('Id', 'Title', 'Thumbnail', 'Summary')
            ->get();

        $comments = DB::table('comment')
            ->join('articlecomment', 'IdComment', '=', 'Id')
            ->where([
                ['IdArticle', '=', $idArticle],
                ['IdCommentOrigin', '=', 0]
            ])
            ->orderBy('CreateAt', 'desc')
            ->select('Id', 'Commentator', 'Content', 'LikeTimes', 'CreateAt')
            ->get();

        foreach ($comments as $comment) {
            $comment->CreateAt = $this->commentTime($comment->CreateAt);
        }

        $subComments = DB::table('comment')
            ->join('articlecomment', 'IdComment', '=', 'Id')
            ->where([
                ['IdArticle', '=', $idArticle],
                ['IdCommentOrigin', '<>', 0],
            ])
            ->select('Id', 'Commentator', 'Content', 'LikeTimes', 'IdCommentOrigin', 'CreateAt')
            ->get();

        $commentCollection = array();

        foreach ($comments as $comment) {
            $commentCollectionElement = array();
            $commentCollectionElement[0] = $comment;
            $subCommentCollection = array();

            foreach ($subComments as $subComment) {
                if ($subComment->IdCommentOrigin == $comment->Id) {
                    $subComment->CreateAt = $this->commentTime($subComment->CreateAt);
                    $subCommentCollection[count($subCommentCollection)] = $subComment;
                }
            }

            $commentCollectionElement[1] = $subCommentCollection;
            $commentCollection[count($commentCollection)] = $commentCollectionElement;
        }

        return View('User/ArticleManagement/ReadArticle', compact(
            'categories',
            'topics',
            'infoArticle',
            'paragraphs',
            'relationArticles',
            'otherArticles',
            'commentCollection'
        ));
    }

    public function commentTime(string $time)
    {
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $origin = new DateTime($time);
        $target = new DateTime("now");
        $target->modify('-7 hours');
        $interval = $origin->diff($target);
        if ($interval->format('%d-%m-%y %h') == "0-0-0 0" && $interval->format('%i') < 1) {
            return "vừa xong";
        } elseif ($interval->format('%d-%m-%y %h') == "0-0-0 0") {
            return $interval->format('%i') . " phút trước";
        } elseif ($interval->format('%d-%m-%y') == "0-0-0") {
            return $interval->format('%h') . " giờ trước";
        } elseif ($interval->format('%m-%y') == "0-0") {
            return $interval->format('%d') . " ngày trước";
        } else {
            return $origin->format('d/m/y');
        }
    }

    public function DisplayArticle(Request $request)
    {
        $idArticle = $request->id;
        $Author = DB::table('articleauthor')
            ->where('IdArticle', '=', $idArticle)
            ->select('IdAuthor')
            ->first();

        if (session('role') != '2' || session('id') != $Author->IdAuthor) {
            return redirect()->route('login');
        }

        $categories = DB::table('category')->get();
        $topics = DB::table('topic')->get();
        $medias = DB::table('media')->get();

        $infoArticle = DB::table('article')
            ->join('articleauthor', 'article.Id', '=', 'articleauthor.IdArticle')
            ->join('author', 'author.Id', '=', 'articleauthor.IdAuthor')
            ->where('article.Id', '=', $idArticle)
            ->first();

        $timeCreateAricle = $infoArticle->CreateAt;
        $carbon = new Carbon($timeCreateAricle);
        $infoArticle->CreateAt = $carbon->format('d/m/Y h:i');

        $authors = DB::table('articleauthor')->where('IdArticle', '=', $idArticle)->get();
        $numberAuthor = $authors->count();

        $paragraphs = DB::table('paragraph')->where('IdArticle', '=', $idArticle)->get();
        $numberParagraph = $paragraphs->count();

        $statusCensors = DB::table('statusarticlecensor')->get();

        $censorLastTime = DB::table('articlecensor')->where('IdArticle', '=', $idArticle)->max('Time');
        $LastCensor = DB::table('articlecensor')->where([
            ['IdArticle', '=', $idArticle],
            ['Time', '=', $censorLastTime]
        ])->first();

        $censor = DB::table('account')->where('Id', '=', $LastCensor->IdAccount)->first();
        $note = $LastCensor->Note;

        return View('Admin/ArticleManagement/EditArticle', compact(
            'idArticle',
            'categories',
            'topics',
            'medias',
            'infoArticle',
            'authors',
            'numberAuthor',
            'paragraphs',
            'numberParagraph',
            'statusCensors',
            'censor',
            'note'
        ));
    }

    public function EditArticle(Request $request)
    {
        $idArticle = $request->input('IdArticle');

        $Author = DB::table('articleauthor')
            ->where('IdArticle', '=', $idArticle)
            ->select('IdAuthor')
            ->first();

        if (session('role') != '2' || session('id') != $Author->IdAuthor) {
            return redirect()->route('login');
        }

        $title = $request->input('Title');
        $summary = $request->input('Summary');

        $category = $request->input('Category');
        $Category = DB::table('category')->where('NameUnsigned', '=', $category)->select('Id')->first();
        $IdCategory = $Category->Id;

        $IdTopic = $request->input('Topic');
        $IdMedia = $request->input('Media');
        $isComment = $request->input('IsComment');
        $isPriority = $request->input('IsPriority');

        if ($request->hasFile('avatar')) {
            $image = $request->file('avatar');
            $time = new DateTime();
            $time = $time->format("Y-m-d-H-i-s-v");
            $thumbnail = $time . '.' . $image->getClientOriginalExtension();
            $destinationPath = public_path('/upload/images');
            $image->move($destinationPath, $thumbnail);
        } else {
            $article = DB::table('article')->where('Id', '=', $idArticle)->first();
            $thumbnail = $article->Thumbnail;
        }

        $status = $request->input('status');
        if ($status == "on") {
            $status = '1';
        } else {
            $status = '0';
        }

        $UpdateAt = new DateTime('Asia/Ho_Chi_Minh');
        $UpdateAt = $UpdateAt->format("Y-m-d H:i:s");

        DB::table('article')->where('Id', '=', $idArticle)
            ->update(
                [
                    'Title' => $title,
                    'Summary' => $summary,
                    'IdCategory' => $IdCategory,
                    'IdTopic' => $IdTopic,
                    'IdMedia' => $IdMedia,
                    'IsComment' => $isComment,
                    'IsPriority' => $isPriority,
                    'StatusDisplay' => $status,
                    'UpdateAt' => $UpdateAt,
                    'Thumbnail' => $thumbnail
                ]
            );

        $numberOfAuthor = $request->input('numberOfAuthor');
        for ($i = 1; $i <= $numberOfAuthor; $i++) {
            DB::table('articleauthor')
                ->updateOrInsert(
                    ['IdArticle' => $idArticle, 'IdAuthor' => $request->input('author-' . $i)],
                    ['IdArticle' => $idArticle, 'IdAuthor' => $request->input('author-' . $i)]
                );
        }
        $numberOfParagraph = $request->input('numberOfParagraph');
        for ($i = 1; $i <= $numberOfParagraph; $i++) {
            DB::table('paragraph')
                ->updateOrInsert(
                    ['IdArticle' => $idArticle, 'IdParagraph' => $i],
                    ['Content' => $request->input('content-' . $i)]
                );
            if ($request->hasFile('image-' . $i)) {
                $image = $request->file('image-' . $i);
                $time = new DateTime();
                $time = $time->format("Y-m-d-H-i-s-v");
                $imageName = $time . '.' . $image->getClientOriginalExtension();
                $destinationPath = public_path('/upload/images');
                $image->move($destinationPath, $imageName);

                DB::table('paragraph')
                    ->updateOrInsert(
                        ['IdArticle' => $idArticle, 'IdParagraph' => $i],
                        [
                            'Image' => $imageName,
                            'TitleImage' => $request->input('figure-image-' . $i),
                            'DescriptionImage' => $request->input('des-image-' . $i)
                        ]
                    );
            }

            if ($request->hasFile('video-' . $i)) {
                $video = $request->file('video-' . $i);
                $time = new DateTime();
                $time = $time->format("Y-m-d-H-i-s-v");
                $videoName = $time . '.' . $video->getClientOriginalExtension();
                $destinationPath = public_path('/upload/videos');
                $video->move($destinationPath, $videoName);

                DB::table('paragraph')
                    ->updateOrInsert(
                        ['IdArticle' => $idArticle, 'IdParagraph' => $i],
                        [
                            'Video' => $videoName,
                            'TitleVideo' => $request->input('figure-video-' . $i),
                            'DescriptionVideo' => $request->input('des-video-' . $i)
                        ]
                    );
            }
        }
    }

    public function DeleteAuthor(Request $request)
    {
        DB::table('articleauthor')
            ->where([
                ['IdArticle', '=', $request->IdArticle],
                ['IdAuthor', '=', $request->IdAuthor]
            ])
            ->delete();

        return redirect()->action(
            [ArticleController::class, 'DisplayArticle'],
            ['id' => $request->IdArticle]
        );
    }

    public function DeleteParagraph(Request $request)
    {
        DB::table('paragraph')
            ->where([
                ['IdArticle', '=', $request->IdArticle],
                ['IdParagraph', '=', $request->IdParagraph],
            ])
            ->delete();

        $numberOfParagraph = $request->numberOfParagraph;
        for ($i = ($request->IdParagraph) + 1; $i <= $numberOfParagraph; $i++) {
            DB::table('paragraph')
                ->where([
                    ['IdArticle', '=', $request->IdArticle],
                    ['IdParagraph', '=', $i]
                ])
                ->update([
                    'IdParagraph' => $i - 1
                ]);
        }

        return redirect()->action(
            [ArticleController::class, 'DisplayArticle'],
            ['id' => $request->IdArticle]
        );
    }

    public function statisticArticles()
    {
        if (session('role') == '1') {
            return $this->statisticArticlesAdmin();
        } elseif (session('role') == '2') {
            return $this->statisticArticlesAuthor();
        } else {
            return redirect()->route('login');
        }
    }

    private function statisticArticlesAdmin()
    {
        $statusArticleCensors = DB::table('statusarticlecensor')->get();
        $articles = DB::table('article')
            ->orderBy('Id', 'desc')
            ->paginate(10);
        $categories = DB::table('category')->get();
        $topics = DB::table('topic')->get();
        return View(
            'Admin/ArticleManagement/StatisticArticles',
            compact([
                'statusArticleCensors',
                'articles',
                'categories',
                'topics',
            ])
        );
    }

    private function statisticArticlesAuthor()
    {
        $statusArticleCensors = DB::table('statusarticlecensor')->get();
        $articles = DB::table('article')
            ->join('articleauthor', 'article.Id', '=', 'articleauthor.IdArticle')
            ->where('IdAuthor', '=', session('id'))
            ->orderBy('Id', 'desc')
            ->paginate(10);
        $categories = DB::table('category')->get();
        $topics = DB::table('topic')->get();
        return View(
            'Admin/ArticleManagement/StatisticArticles',
            compact([
                'statusArticleCensors',
                'articles',
                'categories',
                'topics',
            ])
        );
    }

    public function articleFilter(Request $request)
    {
        if (session('role') == '1') {
            return $this->searchArticleAdmin($request);
        } elseif (session('role') == '2') {
            return $this->searchArticleAuthor($request);
        } else {
            return redirect()->route('login');
        }
    }

    private function searchArticleAdmin(Request $request)
    {
        $statusArticleCensors = DB::table('statusarticlecensor')->get();
        $statusCensor = $request->input('StatusCensor');
        if ($statusCensor == 0) {
            $articles = DB::table('article')
                ->where([
                    ['Title', 'like', $request->Keyword . '%'],
                ])
                ->orWhere([
                    ['Title', 'like', '%' . $request->Keyword],
                ])
                ->orWhere([
                    ['Title', 'like', '%' . $request->Keyword . '%'],
                ])
                ->orderBy('Id', 'desc')
                ->paginate(10);
        } else {
            $articles = DB::table('article')
                ->where([
                    ['Title', 'like', $request->Keyword . '%'],
                    ['IdStatusCensor', '=', $statusCensor]
                ])
                ->orWhere([
                    ['Title', 'like', '%' . $request->Keyword],
                    ['IdStatusCensor', '=', $statusCensor]
                ])
                ->orWhere([
                    ['Title', 'like', '%' . $request->Keyword . '%'],
                    ['IdStatusCensor', '=', $statusCensor]
                ])
                ->orderBy('Id', 'desc')
                ->paginate(10);
        }
        $articles->appends(array('Keyword' => $request->Keyword));

        $categories = DB::table('category')->get();
        $topics = DB::table('topic')->get();
        return View(
            'Admin/ArticleManagement/StatisticArticles',
            compact([
                'statusArticleCensors',
                'articles',
                'categories',
                'topics',
            ])
        );
    }

    private function searchArticleAuthor(Request $request)
    {
        $statusArticleCensors = DB::table('statusarticlecensor')->get();
        $statusCensor = $request->input('StatusCensor');
        if ($statusCensor == 0) {
            $articles = DB::table('article')
                ->join('articleauthor', 'article.Id', '=', 'articleauthor.IdArticle')
                ->where([
                    ['Title', 'like', $request->Keyword . '%'],
                    ['IdAuthor', '=', session('id')]
                ])
                ->orWhere([
                    ['Title', 'like', '%' . $request->Keyword],
                    ['IdAuthor', '=', session('id')]
                ])
                ->orWhere([
                    ['Title', 'like', '%' . $request->Keyword . '%'],
                    ['IdAuthor', '=', session('id')]
                ])
                ->orderBy('Id', 'desc')
                ->paginate(10);
        } else {
            $articles = DB::table('article')
                ->join('articleauthor', 'article.Id', '=', 'articleauthor.IdArticle')
                ->where([
                    ['Title', 'like', $request->Keyword . '%'],
                    ['IdStatusCensor', '=', $statusCensor],
                    ['IdAuthor', '=', session('id')]
                ])
                ->orWhere([
                    ['Title', 'like', '%' . $request->Keyword],
                    ['IdStatusCensor', '=', $statusCensor],
                    ['IdAuthor', '=', session('id')]
                ])
                ->orWhere([
                    ['Title', 'like', '%' . $request->Keyword . '%'],
                    ['IdStatusCensor', '=', $statusCensor],
                    ['IdAuthor', '=', session('id')]
                ])
                ->orderBy('Id', 'desc')
                ->paginate(10);
        }
        $articles->appends(array('Keyword' => $request->Keyword));

        $categories = DB::table('category')->get();
        $topics = DB::table('topic')->get();
        return View(
            'Admin/ArticleManagement/StatisticArticles',
            compact([
                'statusArticleCensors',
                'articles',
                'categories',
                'topics',
            ])
        );
    }

    public function censorArticle(Request $request)
    {
        if (session('role') != '1') {
            return redirect()->route('login');
        }

        $categories = DB::table('category')->get();
        $topics = DB::table('topic')->get();

        $idArticle = $request->id;
        $infoArticle = DB::table('article')
            ->join('articleauthor', 'article.Id', '=', 'articleauthor.IdArticle')
            ->join('author', 'author.Id', '=', 'articleauthor.IdAuthor')
            ->where('article.Id', '=', $idArticle)
            ->first();
        $timeCreateAricle = $infoArticle->CreateAt;
        $carbon = new Carbon($timeCreateAricle);
        $infoArticle->CreateAt = $carbon->format('d/m/Y h:i');

        $paragraphs = DB::table('paragraph')->where('IdArticle', '=', $idArticle)->get();
        $statusCensors = DB::table('statusarticlecensor')->get();

        $note = "";
        $censorLastTime = DB::table('articlecensor')->where('IdArticle', '=', $idArticle)->max('Time');
        $LastCensor = DB::table('articlecensor')->where([
            ['IdArticle', '=', $idArticle],
            ['Time', '=', $censorLastTime]
        ])->first();
        if ($LastCensor != null) {
            $note = $LastCensor->Note;
        }

        return View('Admin/ArticleManagement/CensorArticle', compact(
            'idArticle',
            'categories',
            'topics',
            'infoArticle',
            'paragraphs',
            'statusCensors',
            'note'
        ));
    }

    public function confirmCensorArticle(Request $request)
    {
        if (session('role') != '1') {
            return redirect()->route('login');
        }

        $idArticle = $request->input('IdArticle');
        $statusCensor = $request->input('StatusCensor');
        $note = $request->input('Note');

        $time = new DateTime('Asia/Ho_Chi_Minh');
        $time = $time->format("Y-m-d H:i:s");

        $idAccount = 2;

        DB::table('articlecensor')
            ->updateOrInsert(
                ['IdArticle' => $idArticle, 'IdCensor' => $statusCensor],
                [
                    'IdAccount' => $idAccount,
                    'Note' => $note,
                    'Time' => $time
                ]
            );
        DB::table('article')
            ->where('Id', '=', $idArticle)
            ->update(['IdStatusCensor' => $statusCensor]);
    }

    public function HomeUser()
    {
        try {
            $categories = DB::table('category')->get();
            $topics = DB::table('topic')->get();
            $priorityArticles = DB::table('article')
                ->join('category', 'article.IdCategory', '=', 'category.Id')
                ->where([
                    ['IsPriority', '=', '1'],
                    ['IdStatusCensor', '=', 2],
                    ['StatusDisplay', '=', 1]
                ])
                ->orderBy('article.CreateAt', 'desc')
                ->select('article.Id', 'Title', 'Thumbnail', 'Summary', 'article.CreateAt', 'Name')
                ->get();

            $highlightArticles = DB::table('article')
                ->where([
                    ['IsPriority', '=', '0'],
                    ['IdStatusCensor', '=', 2],
                    ['StatusDisplay', '=', 1]
                ])
                ->orderBy('CreateAt', 'desc')
                ->limit(12)
                ->select('Id', 'Title', 'Thumbnail')
                ->get();

            $multimediaArticles = DB::table('article')
                ->where([
                    ['IsPriority', '=', '0'],
                    ['IdStatusCensor', '=', 2],
                    ['StatusDisplay', '=', 1]
                ])
                ->orderBy('CreateAt', 'asc')
                ->limit(6)
                ->select('Id', 'Title', 'Thumbnail')
                ->get();

            $data = array();
            foreach ($priorityArticles as $priorityArticle) {
                $data[] = $priorityArticle->Id;
            }
            foreach ($highlightArticles as $highlightArticle) {
                $data[] = $highlightArticle->Id;
            }
            foreach ($multimediaArticles as $multimediaArticle) {
                $data[] = $multimediaArticle->Id;
            }

            $newArticles = DB::table('article')
                ->join('category', 'article.IdCategory', '=', 'category.Id')
                ->where([
                    ['IdStatusCensor', '=', 2],
                    ['StatusDisplay', '=', 1]
                ])
                ->select('article.Id', 'Title', 'Thumbnail', 'Summary', 'article.CreateAt', 'Name')
                ->whereNotIn('article.Id', $data)
                ->inRandomOrder()
                ->limit(30)
                ->get();

            foreach ($newArticles as $newArticle) {
                $data[] = $newArticle->Id;
            }

            $megazines = DB::table('article')
                ->where([
                    ['IdStatusCensor', '=', 2],
                    ['StatusDisplay', '=', 1]
                ])
                ->whereNotIn('article.Id', $data)
                ->inRandomOrder()
                ->limit(9)
                ->select('Id', 'Title', 'Thumbnail')
                ->get();

            $categoriesArticles = array();
            foreach ($categories as $category) {
                $tempArticles = DB::table('article')
                    ->where([
                        ['IdCategory', '=', $category->Id],
                        ['IdStatusCensor', '=', 2],
                        ['StatusDisplay', '=', 1]
                    ])
                    ->orderBy('CreateAt', 'desc')
                    ->limit(3)
                    ->select('Id', 'Title', 'Thumbnail')
                    ->get();

                foreach ($tempArticles as $tempArticle) {
                    $categoriesArticles[] = $tempArticle;
                }
            }

            return View('User/ArticleManagement/Home', compact(
                'categories',
                'topics',
                'priorityArticles',
                'highlightArticles',
                'multimediaArticles',
                'newArticles',
                'megazines',
                'categoriesArticles'
            ));
        } catch (throwable $e) {
            return redirect()->action([ArticleController::class, 'HomeUser']);
        }
    }

    public function searchArticle(Request $request)
    {
        try {
            $categories = DB::table('category')
                ->select('Id', 'Name', 'NameUnsigned')
                ->get();
            $topics = DB::table('topic')
                ->select('Id', 'Name', 'IdCategory')
                ->get();

            $keyword = $request->input('keyword');
            $articles = DB::table('article')
                ->where([
                    ['Title', 'like', '%' . $keyword . '%'],
                    ['IdStatusCensor', '=', 2]
                ])
                ->orwhere([
                    ['Title', 'like', '%' . $keyword],
                    ['IdStatusCensor', '=', 2]
                ])
                ->orwhere([
                    ['Title', 'like', $keyword . '%'],
                    ['IdStatusCensor', '=', 2]
                ])
                ->select('Id', 'Title', 'Thumbnail', 'Summary', 'CreateAt')
                ->paginate(10);

            $articles->appends(array('keyword' => $keyword));

            return View('User/ArticleManagement/SearchArticles', compact(
                'categories',
                'topics',
                'articles',
                'keyword'
            ));
        } catch (throwable $e) {
            return redirect()->action([ArticleController::class, 'searchArticle'], ['request' => $request]);
        }
    }

    public function categoryArticle(Request $request)
    {
        try {
            $categories = DB::table('category')
                ->select('Id', 'Name', 'NameUnsigned')
                ->get();
            $topics = DB::table('topic')
                ->select('Id', 'Name', 'IdCategory')
                ->get();

            $theLoai = $request->theloai;
            $articles = DB::table('article')
                ->join('category', 'IdCategory', '=', 'category.Id')
                ->where([
                    ['NameUnsigned', '=', $theLoai],
                    ['IdStatusCensor', '=', 2]
                ])
                ->orderBy('article.CreateAt', 'desc')
                ->select('article.Id', 'Title', 'Summary', 'article.CreateAt', 'Thumbnail', 'Name')
                ->paginate(10);

            $articles->appends(array('the-loai' => $theLoai));

            return View('User/ArticleManagement/CategoryArticles', compact(
                'categories',
                'topics',
                'articles'
            ));
        } catch (throwable $e) {
            return redirect()->action([ArticleController::class, 'categoryArticle'], ['request' => $request]);
        }
    }
}
