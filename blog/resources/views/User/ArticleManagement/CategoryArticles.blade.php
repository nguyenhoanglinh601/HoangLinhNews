<!DOCTYPE html>
<html lang="en">

<head>
    <title>{{$articles[0]->Name}} - Tin tức trực tuyến - HoangLinhNews</title>
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
        hr {
            width: 100%;
        }

        .section-top-header {
            font-family: Arial, sans-serif;
            font-size: 32px;
            font-weight: 600;
            color: black;
        }

        .section-middle-header {
            font-family: Arial, sans-serif;
            font-size: 24px;
            font-weight: 600;
            color: black;
        }

        .large-article {
            width: 66%;
            position: relative;
        }

        .normal-article {
            width: 33%;
        }

        .background-large-article {
            position: absolute;
            top: 0;
            left: 0;
            width: 96%;
            height: 96%;
            background: linear-gradient(to top, #000000 50%, #ffffff 100%);
            opacity: 0.3;
            margin: 1% 2%;
        }

        .title-large-article {
            position: absolute;
            bottom: 5%;
            left: 5%;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 28px;
            font-weight: 600;
            color: white;
            line-height: 1.2;
        }

        .title-normal-article {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 16px;
            font-weight: 600;
            line-height: 1.4;
        }

        .title-medium-article {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 22px;
            font-weight: 600;
            line-height: 1.4;
        }

        .article-info {
            font-family: 'Roboto', Ubuntu, sans-serif;
            font-size: 11px;
            color: #AAAAAA;
        }

        .article-summary {
            font-family: 'Roboto', Ubuntu, sans-serif;
            font-size: 14px;
            color: #888888;
        }

        .img-highlight-articles {
            width: 100%;
            height: 145px;
        }

        a {
            text-decoration: none !important;
            color: black;
        }

        @media only screen and (max-width: 400px) {
            .section-top-header {
                font-size: 24px;
            }

            .section-middle-header {
                font-size: 18px;
            }

            .large-article,
            .normal-article {
                width: 100%;
            }

            .title-large-article {
                font-size: 23px;
            }

            .title-medium-article {
                font-size: 16px;
            }

            .img-highlight-articles {
                height: auto;
            }
        }
    </style>
</head>

<body class="m-0">
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
    <div class="container  px-lg-5">
        <div class="row ">
            <div class="col-lg-8 " style="background-color: #f7f7f7;">
                <p class="section-top-header pt-2 pb-1 m-0">
                    {{$articles[0]->Name}}
                </p>

                <div class="row">
                    <div class="large-article d-inline-flex float-left  px-2 py-2">
                        <a class="w-100" href="/article?id={{$articles[0]->Id}}">
                            <div class="background-large-article"></div>
                            <img class="img-fluid w-100" src="{{URL::asset('upload/images').'/'.$articles[0]->Thumbnail}}">
                            <p class="title-large-article pr-2">
                                {{$articles[0]->Title}}
                            </p>
                        </a>
                    </div>

                    <div class=" float-left normal-article px-2 py-2">
                        <div class="row">
                            <a class="d-flex d-md-block" href="/article?id={{$articles[1]->Id}}">
                                <div class="col-md-12 col-5 ">
                                    <img class="img-fluid" src="{{URL::asset('upload/images').'/'.$articles[1]->Thumbnail}}">
                                </div>
                                <div class="col-md-12 col-7 p-0  pr-3">
                                    <p class="title-normal-article pt-md-2 mx-md-3 m-0">
                                        {{$articles[1]->Title}}
                                    </p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="row  mt-md-2">
                    @for($i=2;$i<'5';$i++) <hr class="m-0 d-md-none d-block">
                        <div class=" float-left normal-article px-2 py-2">
                            <div class="row">
                                <a class="d-flex d-md-block" href="/article?id={{$articles[$i]->Id}}">
                                    <div class="col-md-12 col-5 ">
                                        <img class="img-fluid img-highlight-articles" src="{{URL::asset('upload/images').'/'.$articles[$i]->Thumbnail}}">
                                    </div>
                                    <div class="col-md-12 col-7 p-0  pr-3">
                                        <p class="title-normal-article pt-md-2 mx-md-3 m-0">
                                            {{$articles[$i]->Title}}
                                        </p>
                                    </div>
                                </a>
                            </div>
                        </div>
                        @endfor
                </div>
            </div>
            <div class="col-lg-4  d-lg-block d-none">
                <img class="img-fluid my-2" src="{{URL::asset('upload/advertisement/qc1.jpg')}}">
            </div>
        </div>
        <div class="row  mt-2">
            <div class="col-lg-8 ">
                <a class="m-0 p-0" href="#" style="text-decoration: none;">
                    <p class="section-middle-header pt-2 m-0">
                        Bài viết mới
                    </p>
                </a>
                @for($i=5;$i<$articles->total();$i++) <div class=" px-0 py-2">
                        <div class="row">
                            <a class="d-flex" href="/article?id={{$articles[$i]->Id}}">
                                <div class="col-md-4 col-5 ">
                                    <img class="img-fluid" src="{{URL::asset('upload/images').'/'.$articles[$i]->Thumbnail}}">
                                </div>
                                <div class="col-md-8 col-7 p-0 ">
                                    <p class="title-medium-article pt-md-2 mr-2 m-0">
                                        {{$articles[$i]->Title}}
                                    </p>
                                    <p class="article-info mr-2 m-0">
                                        {{formatTime($articles[$i]->CreateAt)}}
                                    </p>
                                    <p class="article-summary pt-md-2 mr-2 m-0 d-md-block d-none">
                                        {{$articles[$i]->Summary}}
                                    </p>
                                </div>
                            </a>
                        </div>
                    </div>
                    <hr class="m-0">
                    @endfor
            </div>
            <div class="col-lg-4  d-lg-block d-none">
                <img class="img-fluid my-2" src="{{URL::asset('upload/advertisement/qc2.jpg')}}">
                <img class="img-fluid my-2" src="{{URL::asset('upload/advertisement/qc3.jpg')}}">
                <img class="img-fluid my-2" src="{{URL::asset('upload/advertisement/qc4.jpg')}}">
            </div>
        </div>
    </div>
    <footer>
        <hr>
        <div class="page-footer" style="font-family: 'Roboto', Ubuntu, sans-serif;">
            @include('Share.Layout.Footer')
        </div>
    </footer>
    <script>
        function truncateText(selector, maxLength) {
            var element = document.getElementsByClassName('long-text')[0],
                truncated = element.innerText;

            if (truncated.length > maxLength) {
                truncated = truncated.substr(0, maxLength) + '...';
            }
            return truncated;
        }
        document.getElementsByClassName('long-text')[0].innerText = truncateText('long-text', 130);
    </script>
</body>