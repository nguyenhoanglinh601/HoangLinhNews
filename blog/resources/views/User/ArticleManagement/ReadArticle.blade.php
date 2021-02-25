<!DOCTYPE html>
<html lang="en">

<head>
    <title>{{$infoArticle->Title}} - HoangLinhNews</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ URL::asset('css/style.css') }}">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="{{ URL::asset('js/script.js') }}"></script>
    <style>
        body {
            font-family: 'Noto Serif', serif !important;
        }

        a {
            text-decoration: none !important;
            color: #888;
        }

        hr{
            width: 100%;
        }

        .font-category {
            font-size: 16px;
            color: #888;
        }

        .font-title {
            font-size: 48px;
            font-weight: 900;
            line-height: 1;
        }

        .font-author {
            font-size: 14px;
            color: #888;
        }

        .font-summary {
            font-size: 21px;
            font-weight: 600;
        }

        .font-content {
            font-size: 22px;
            line-height: 1.4;
            margin: 9px 0;
            color: #333;
        }

        .font-article-title {
            font-size: 22px;
            font-weight: 600;
            color: black;
            line-height: 1.2;
        }

        .font-article-summary {
            font-size: 15px;
            color: #666666;
        }

        .font-article-care-header {
            font-size: 24px;
            color: #333;
            font-weight: 600;
            font-family: Arial, Helvetica, sans-serif;
        }

        .font-article-care-title {
            font-size: 22px;
            font-weight: 600;
            color: black;
            line-height: 1.2;
        }

        input::-webkit-input-placeholder {
            color: gray !important;
        }

        input:-moz-placeholder {
            color: gray !important;
        }

        input::-ms-input-placeholder {
            color: gray !important;
        }

        textarea::-webkit-input-placeholder {
            color: gray !important;
        }

        textarea:-moz-placeholder {
            color: gray !important;
        }

        textarea::-ms-input-placeholder {
            color: gray !important;
        }

        @media only screen and (max-width: 800px) {
            .font-title {
                font-size: 45px;
            }
        }

        @media only screen and (max-width: 400px) {
            .font-category {
                font-size: 12px;
            }

            .font-title {
                font-size: 32px;
                font-weight: 600;
            }

            .font-author {
                font-size: 12px;
            }

            .font-summary {
                font-style: italic;
                color: #555;
            }

            .font-article-title {
                font-size: 24px;
            }

            .font-article-summary {
                display: none;
            }

            .font-article-care-header {
                font-size: 20px;
            }

            .font-article-care-title {
                font-size: 16px;
            }
        }
    </style>
</head>

<body>

    <header class="sticky-top">
        <div class="page-header" style="background-color: white; font-family: 'Roboto', Ubuntu, sans-serif;">
            @include('User.Share.Layout.Header',['categories'=> $categories, 'topics' => $topics])
        </div>
        <hr class="m-0 p-0">
    </header>
    <div class="container  py-0 px-md-5">
        <div class="row m-0 pl-2 pt-3 " id="title">
            <a href="#" style="text-decoration: none;">
                <p class="font-category text-uppercase w-100 m-0 mb-2">
                    @foreach($categories as $category)
                    @if($category->Id==$infoArticle->IdCategory)
                    <a href="\category?theloai={{$category->NameUnsigned}}">
                        {{$category->Name}}
                    </a>
                    @break
                    @endif
                    @endforeach
                </p>
            </a>
            <p class="font-title w-100">{{$infoArticle->Title}}</p>
            <p class="font-author w-100">
                <b style="color: black;">{{$infoArticle->Name}}</b>
                <i class="fa fa-circle" style="font-size: 9px;"></i>
                {{$infoArticle->CreateAt}}
            </p>
        </div>
        <div class="row m-0 " id="content-body">
            <div class="col-lg-8 p-0 ">
                <div class="row m-0 " id="content">
                    <p class="font-summary">
                        {{$infoArticle->Summary}}
                    </p>
                    @foreach ($paragraphs as $paragraph)
                    <p class="font-content">
                        {{$paragraph->Content}}
                    </p>
                    @if ($paragraph->Image!="")
                    <figure class="figure w-100">
                        <img src="{{URL::asset('upload/images').'/'.$paragraph->Image}}" class="figure-img img-fluid w-100">
                        <figcaption class="figure-caption">
                            <i style="font-size: 18px;">
                                {{$paragraph->TitleImage}}
                            </i>
                        </figcaption>
                    </figure>
                    @endif
                    @endforeach
                </div>
                <hr>
                <div class="row m-0 pl-sm-2  my-3" id="article-relation">
                    <p style="font-size: 15px; color: #333; font-weight: 600; font-family: Arial, Helvetica, sans-serif;">
                        Bài viết liên quan
                    </p>
                    @foreach($relationArticles as $relationArticle)
                    <a class="row w-100 m-0 " href="/article?id={{$relationArticle->Id}}" style="text-decoration: none;">
                        <div class="col-md-4 p-0 ">
                            <img class="img-fluid w-100" src="{{URL::asset('upload/images').'/'.$relationArticle->Thumbnail}}">
                        </div>
                        <div class="col-md-8 pt-1 pl-sm-3 pl-0 ">
                            <p class="font-article-title mb-1">
                                {{$relationArticle->Title}}
                            </p>
                            <p class="font-article-summary">
                                {{$relationArticle->Summary}}
                            </p>
                        </div>
                    </a>
                    <hr>
                    @endforeach
                </div>
                <div class="row m-0 p-0 " id="comment">
                    <div class="row w-100 m-0 ">
                        <p class="my-md-2 m-0" style="font-size: 15px; color: #333; font-weight: 600; font-family: Arial, Helvetica, sans-serif;">
                            Ý KIẾN BẠN ĐỌC
                        </p>
                    </div>
                    <div class="row w-100 m-0 ">
                        <div class="col-sm-1 d-md-block d-none p-0 ">
                            <i class="fas fa-user-circle" style="font-size: 40px;"></i>
                        </div>
                        <div class="col-sm-11 p-0 ">
                            <form id="postCommentForm" action="/postcomment" method="post">
                                @csrf
                                <input type="hidden" name="IdArticle" value="{{$infoArticle->Id}}">
                                <span id="addContentComment" class="d-none"></span>
                                <textarea id="contentComment" name="content" style="width: 100%;" placeholder="Bạn nghĩ gì về tin này?"></textarea>
                                <span id="addCommentator" class="d-none"></span>
                                <input class="w-100 mb-2 info-comment" id="commentator" type="text" name="commentator" style="display: none;" placeholder="name">
                                <span id="addEmail" class="d-none"></span>
                                <input class="w-100 mb-2 info-comment" id="email" type="text" name="mail" style="display: none;" placeholder="mail">
                                <button id="postCommentBtn" type="submit" class="btn btn-primary float-right info-comment" style="display: none;">
                                    <b>Gửi bình luận</b>
                                </button>
                            </form>
                        </div>
                    </div>
                    <div id="addLastestComment" class="row m-0 p-0 w-100 ">

                        @foreach($commentCollection as $commentCollectionElement)
                        <div class="row m-0 p-0 w-100 py-1 ">
                            <div class="col-1 m-0 p-0 ">
                                <i class="fas fa-user-circle float-right pr-md-2 pr-1" style="font-size: 25px;"></i>
                            </div>
                            <div class="col-11 m-0 p-0 ">
                                <div class="row m-0 p-0 " style="background-color: #c2d6d6; border-radius: 7px;">
                                    <div class="row m-0 p-0 pl-1 w-100">
                                        <b style="color: #333333;">{{$commentCollectionElement[0]->Commentator}}</b>
                                    </div>
                                    <div class="row m-0 p-0 pl-1 w-100">
                                        {{$commentCollectionElement[0]->Content}}
                                    </div>
                                </div>
                                <i class="mr-2">{{$commentCollectionElement[0]->CreateAt}}</i>
                                <b class="mr-2" style="cursor: pointer;">thích</b>
                                <b class="mr-2" style="cursor: pointer;">trả lời</b>
                                <div class="d-inline-flex float-right ">
                                    <b style="padding-top: 9%;">{{$commentCollectionElement[0]->LikeTimes}}</b>
                                    <i class="fas fa-thumbs-up p-1"></i>
                                </div>
                            </div>
                        </div>
                        @php
                        $subComments = $commentCollectionElement[1]
                        @endphp
                        @foreach($subComments as $subComment)
                        <div class="row m-0 p-0 w-100 py-1 ml-5 ">
                            <div class="col-1 m-0 p-0 ">
                                <i class="fas fa-user-circle float-right pr-2" style="font-size: 25px;"></i>
                            </div>
                            <div class="col-11 m-0 p-0 ">
                                <div class="row m-0 p-0 " style="background-color: #c2d6d6; border-radius: 7px;">
                                    <div class="row m-0 p-0 pl-1 w-100">
                                        <b style="color: #333333;">{{$subComment->Commentator}}</b>
                                    </div>
                                    <div class="row m-0 p-0 pl-1 w-100">
                                        {{$subComment->Content}}
                                    </div>
                                </div>
                                <i class="mr-2">{{$subComment->CreateAt}}</i>
                                <b class="mr-2" style="cursor: pointer;">thích</b>
                                <b class="mr-2" style="cursor: pointer;">trả lời</b>
                                <div class="d-inline-flex float-right ">
                                    <b style="padding-top: 9%;">{{$subComment->LikeTimes}}</b>
                                    <i class="fas fa-thumbs-up p-1"></i>
                                </div>
                            </div>
                        </div>
                        @endforeach
                        @endforeach
                    </div>
                </div>
                <hr>
                <div class="row m-0 " id="article-care">
                    <p class="font-article-care-header">
                        CÓ THỂ BẠN QUAN TÂM
                    </p>
                    @foreach($otherArticles as $otherArticle)
                    <a class="row w-100 m-0 my-2 " href="/article?id={{$otherArticle->Id}}" style="text-decoration: none;">
                        <div class="col-4 p-0 ">
                            <img class="img-fluid w-100" src="{{URL::asset('upload/images').'/'.$otherArticle->Thumbnail}}">
                        </div>
                        <div class="col-8 p-0 pt-1 pl-3 ">
                            <p class="font-article-care-title mb-1">
                                {{$otherArticle->Title}}
                            </p>
                            <p class="font-article-summary">
                                {{$otherArticle->Summary}}
                            </p>
                        </div>
                    </a>
                    <hr class="my-0">
                    @endforeach
                </div>
            </div>
            <div class="col-lg-4 p-0 pl-3 d-lg-block d-none ">
                <img class="img-fluid w-100 mb-2" src="{{URL::asset('upload/advertisement/qc1.jpg')}}">
                <img class="img-fluid w-100 mb-2" src="{{URL::asset('upload/advertisement/qc2.jpg')}}">
                <img class="img-fluid w-100 mb-2" src="{{URL::asset('upload/advertisement/qc3.jpg')}}">
                <img class="img-fluid w-100 mb-2" src="{{URL::asset('upload/advertisement/qc4.jpg')}}">
            </div>
        </div>
    </div>
    <footer>
        <hr>
        <div class="page-footer" style="font-family: 'Roboto', Ubuntu, sans-serif;">
            @include('Share.Layout.Footer')
        </div>
    </footer>
</body>
<script>
    $(document).ready(function() {
        $("#postCommentBtn").click(function(event) {
            event.preventDefault();
            if ($("#contentComment").val() == "") {
                alert("bạn chưa nhập nội dung bình luận");
            } else if ($("#commentator").val() == "") {
                alert("bạn chưa nhập tên");
            } else {
                $.ajax({
                    url: '/postcomment',
                    type: 'post',
                    data: $('#postCommentForm').serialize(),
                    dataType: 'JSON',
                    success: function(response) {
                        var commentator = response[0];
                        var content = response[1];
                        var likeTimes = response[2];
                        var createAt = response[3];
                        var tr_str = "<div class=\"row m-0 p-0 w-100 py-1 \">";
                        tr_str += "<div class=\"col-1 m-0 p-0 \">";
                        tr_str += "<i class=\"fas fa-user-circle float-right pr-md-2 pr-1\" style=\"font-size: 25px;\"></i>";
                        tr_str += "</div>";
                        tr_str += "<div class=\"col-11 m-0 p-0 \">";
                        tr_str += "<div class=\"row m-0 p-0 \" style=\"background-color: #c2d6d6; border-radius: 7px;\">"
                        tr_str += "<div class=\"row m-0 p-0 pl-1 w-100\">"
                        tr_str += "<b style=\"color: #333333;\">" + commentator + "</b>"
                        tr_str += "</div>"
                        tr_str += "<div class=\"row m-0 p-0 pl-1 w-100\">"
                        tr_str += content
                        tr_str += "</div>"
                        tr_str += "</div>"
                        tr_str += "<i class=\"mr-2\">" + createAt + "</i>"
                        tr_str += "<b class=\"mr-2\" style=\"cursor: pointer;\">thích</b>"
                        tr_str += "<b class=\"mr-2\" style=\"cursor: pointer;\">trả lời</b>"
                        tr_str += "<div class=\"d-inline-flex float-right \">"
                        tr_str += "<b style=\"padding-top: 9%;\">" + likeTimes + "</b>"
                        tr_str += "<i class=\"fas fa-thumbs-up p-1\"></i>"
                        tr_str += "</div>"
                        tr_str += "</div>"
                        tr_str += "</div>"
                        $("#addLastestComment").prepend(tr_str);
                    }
                });

                $("#contentComment").remove();
                $("#commentator").remove();
                $("#email").remove();
                var str = "<textarea id=\"contentComment\" name=\"content\" style=\"width: 100%;\" placeholder=\"Bạn nghĩ gì về tin này?\"></textarea>"
                $("#addContentComment").after(str);
                var str = "<input class=\"w-100 mb-2 info-comment\" id=\"commentator\" type=\"text\" name=\"commentator\" style=\"display: block;\" placeholder=\"name\">"
                $("#addCommentator").after(str);
                var str = "<input class=\"w-100 mb-2 info-comment\" id=\"email\" type=\"text\" name=\"mail\" style=\"display: block;\" placeholder=\"mail\">"
                $("#addEmail").after(str);
            }

        });

        $("#contentComment").click(function() {
            $(".info-comment").each(function() {
                $(this).css("display", "block");
            });
        });
    });
</script>