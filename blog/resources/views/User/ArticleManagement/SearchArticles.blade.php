<!DOCTYPE html>
<html lang="en">

<head>
    <title>Tìm kiếm '{{$keyword}}' - HoangLinhNews</title>
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
        a {
            text-decoration: none !important;
            color: black;
        }

        .content {
            min-height: 700px;
        }

        .search {
            width: 100%;
            height: 45px;
            border-radius: 5px;
        }

        .btn-search {
            background: none;
            height: 43px;
            position: absolute;
            right: 3px;
            bottom: 0;
            border: none;
        }

        .img-search {
            font-size: 20px;
            color: #444444;
        }

        .font-filter {
            font-size: 16px;
            color: #999999;
            margin: 0;
            padding: 0;
            cursor: pointer;
        }

        .btn-search-more {
            background: none;
            border: none;
            color: blue;
        }

        .select-filter {
            width: 35%;
            border: none;
        }

        .title {
            font-size: 22px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: 600;
            line-height: 1.3;
            margin: 0;
        }

        .info {
            font-size: 11px;
            font-family: 'Roboto', Ubuntu, sans-serif;
            color: #AAAAAA;
            margin: 6px 0;
        }

        .summary {
            font-size: 14px;
            font-family: 'Roboto', Ubuntu, sans-serif;
            color: #888888;
        }

        .result {
            font-size: 16px;
            color: #888888;
        }

        @media only screen and (max-width: 1200px) {
            .content {
                min-height: 1200px;
            }
        }

        @media only screen and (max-width: 800px) {
            .content {
                min-height: 750px;
            }

            .title {
                font-size: 19px;
            }

            .info {
                margin: 4px 0;
            }
        }

        @media only screen and (max-width: 400px) {
            .content {
                min-height: 530px;
            }

            .search {
                height: 40px;
            }

            .btn-search {
                height: 40px;
            }

            .img-search {
                font-size: 17px;
            }

            .select-filter {
                width: 20%;
            }

            .title {
                font-size: 16px;
            }
        }
    </style>
    <script>
        $(document).ready(function() {
            $("#btn-filter-more").click(function() {
                $("#filter-more").toggle();
                $(".fa-caret-down").toggle();
                $(".fa-caret-up").toggle();
            });
        });
    </script>
</head>

<body>
    @php
    function formatTime(string $dateTime){
    $time=new DateTime($dateTime);
    $time=$time->format("H:i d-m-Y");
    return $time;
    }
    @endphp
    <header class="sticky-top">
        <div class="page-header" style="background-color: white; font-family: 'Roboto', Ubuntu, sans-serif;">
            @include('User.Share.Layout.Header',['categories'=> $categories, 'topics' => $topics])
        </div>
        <hr class="m-0 p-0">
    </header>
    <div class="conta py-0 content px-4" style="font-family: Arial, sans-serif;">
        <div class="row d-flex justify-content-center " style="position: relative;">
            <div class="col-lg-8 p-0 mt-3 ">
                <form action="/search">
                    <input name="keyword" type="text" class="search m-0 ">
                    <button type="submit" class="btn-search">
                        <i class="fas fa-search img-search"></i>
                    </button>
                </form>
            </div>
            <div class="col-lg-8 mt-3 ">
                <div class="row ">
                    <div class="col-md-2 col-4 p-0 ">
                        <a class="font-filter  d-flex justify-content-center" style="text-decoration: none;">
                            <i class="fas fa-search mt-1 mr-1"></i>
                            tất cả
                        </a>
                    </div>
                    <div class="col-md-2 col-4 p-0 ">
                        <a class="font-filter  d-flex justify-content-center" style="text-decoration: none;">
                            <i class="fas fa-newspaper mt-1 mr-1"></i>
                            bài viết
                        </a>
                    </div>
                    <div class="col-md-2 col-4 p-0  d-flex justify-content-center">
                        <a class="font-filter " style="text-decoration: none;">
                            <i class="fas fa-video mt-1 mr-1"></i>
                            video
                        </a>
                    </div>
                    <div class="col-md-6 col-12 p-sm-0 px-0 pt-2 d-flex justify-content-end ">
                        <button class="btn-search-more" id="btn-filter-more">
                            tìm kiếm nâng cao
                            <i class="fas fa-caret-down"></i>
                            <i class="fas fa-caret-up" style="display: none;"></i>
                        </button>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 mt-3 mb-0 form-group " id="filter-more" style="display: none;">
                <div class="row ">
                    <div class="col-md-4 pr-0 ">
                        <p class="font-filter d-inline-flex">chế độ tìm kiếm: </p>
                        <select class="form-control p-0 d-inline-flex select-filter">
                            <option selected>Tất cả</option>
                            <option>Tiêu đề và nội dung chính</option>
                            <option>Tác giả</option>
                        </select>
                    </div>
                    <div class="col-md-4 pr-0 ">
                        <p class="font-filter d-inline-flex">chuyên mục: </p>
                        <select class="form-control p-0 d-inline-flex select-filter">
                            <option selected>Tất cả</option>
                            <option>Xã hội</option>
                            <option>Pháp luật</option>
                            <option>Xuất bản</option>
                        </select>
                    </div>
                    <div class="col-md-4 pr-0 ">
                        <p class="font-filter d-inline-flex">thời gian: </p>
                        <select class="form-control p-0 d-inline-flex select-filter">
                            <option selected>Tất cả</option>
                            <option>Hôm nay</option>
                            <option>7 ngày trước</option>
                            <option>30 ngày trước</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <hr class="w-100"> 
        <div class="row d-flex justify-content-center ">
            <div class="col-lg-8">
                <p class="result m-0 w-100 my-2">
                    <b style="color: black;">{{$articles->total()}}</b> kết quả phù hợp
                </p>
            </div>
            <div class="col-lg-8 mt-2">
                @foreach($articles as $article)
                <div class="row px-2 ">
                    <a class="d-flex" href="/article?id={{$article->Id}}">
                        <div class="col-5 p-0 ">
                            <img class="img-fluid w-100" src="{{URL::asset('upload/images').'/'.$article->Thumbnail}}">
                        </div>
                        <div class="col-7 pr-0 ">
                            <p class="title">
                                {{$article->Title}}
                            </p>
                            <p class="info d-md-block d-none">
                                {{formatTime($article->CreateAt)}}
                            </p>
                            <p class="summary d-md-block d-none">
                                {{$article->Summary}}
                            </p>
                        </div>
                    </a>
                </div>
                <hr class="mx-0 my-2">
                @endforeach
            </div>
        </div>
        <div class="w-100 m-0 p-0 mt-4 d-flex justify-content-center">
            {{ $articles->links('') }}
        </div>
    </div>
    <footer>
        <hr>
        <div class="page-footer" style="font-family: 'Roboto', Ubuntu, sans-serif;">
            @include('Share.Layout.Footer')
        </div>
    </footer>
</body>