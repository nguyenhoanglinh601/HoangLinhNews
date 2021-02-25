<!DOCTYPE html>
<html lang="en">

<head>
    <title>HoangLinhNews - Tin tức trực tuyến, nhanh chóng và chính xác</title>
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
            margin: 5px;
            width: 100%;
        }

        .image-large-section-category {
            height: 172px;
            width: 100%;
        }

        .title-large-section-category {
            height: 80px;
            font-size: 18px;
            font-weight: 600;
        }

        .title-category {
            font-size: 20px;
            font-weight: 600;
        }

        .img-new-articles {
            width: 100%;
            min-height: 165px;
        }

        .img-multimedia-articles {
            width: 100%;
            min-height: 180px;
        }

        a {
            text-decoration: none !important;
            color: black;
        }

        .display-img-categories-news {
            height: 80px;
        }

        @media only screen and (max-width: 800px) {
            .image-large-section-category {
                height: 200px;
            }

            .title-large-section-category {
                height: 80px;
                font-size: 20px;
                font-weight: 600;
            }

            .img-new-articles {
                min-height: 105px;
            }

            .img-multimedia-articles {
                width: 100%;
                min-height: 120px;
            }

            .display-img-categories-news {
                height: 95px;
            }

            .display-img-new-news{
                height: 160px;
            }
        }

        @media only screen and (max-width: 400px) {
            .title-large-section-category {
                height: auto;
            }

            .title-category {
                font-size: 24px;
            }

            .display-img-new-news {
                height: 110px;
            }
        }
    </style>
</head>

<body>
    @php
    function formatTime(string $dateTime){
    $time=new DateTime($dateTime);
    $time=$time->format("H:i d-m-Y");
    return $time;
    }
    @endphp
    <header class="sticky-top" style="background-color: white;">
        <div class="page-header">
            @include('User.Share.Layout.Header',['categories'=> $categories, 'topics' => $topics])
        </div>
        <hr class="m-0">
    </header>

    <div class="container  p-0">

        <!-- SECTION NEW -->
        <div class="row  w-100 m-0 mt-1 mb-4" id="section-new">

            <!-- SECTION NEW(MOBILE) -->
            <div class="d-md-none d-block w-100">
                <div class="slideshow-container">
                    @for($i=0;$i<'3';$i++) <a href="/article?id={{$priorityArticles[$i]->Id}}">
                        <div class="mySlides">
                            <img class="img-fluid" src="{{URL::asset('upload/images').'/'.$priorityArticles[$i]->Thumbnail}}" style="width:100%; max-height:205px;">
                            <div class="p-1">
                                <p class="font-large m-0">{{$priorityArticles[$i]->Title}}</p>
                            </div>

                        </div>
                        </a>
                        @endfor

                        <a class="prev" style="text-decoration: none;" onclick="plusSlides(-1)">&#10094;</a>
                        <a class="next" style="text-decoration: none;" onclick="plusSlides(1)">&#10095;</a>

                        <div style="position: absolute; top: 180px; left: 45%;">
                            <span class="dot-slide" onclick="currentSlide(1)"></span>
                            <span class="dot-slide" onclick="currentSlide(2)"></span>
                            <span class="dot-slide" onclick="currentSlide(3)"></span>
                        </div>
                </div>
                <br>
            </div>

            <!-- SECTION NEW(PC + TABLET) -->
            <div class="col-lg-9 col-md-7 row  pt-3 m-0 px-0 pr-1 d-md-inline-flex d-none">

                <div class="col-lg-8  px-4">
                    <a class="" href="/article?id={{$priorityArticles[0]->Id}}">
                        <div class="row ">
                            <img class="img-fluid w-100" src="{{URL::asset('upload/images').'/'.$priorityArticles[0]->Thumbnail}}">
                        </div>
                        <div class="row py-2 ">
                            <p class="font-large">{{$priorityArticles[0]->Title}}</p>
                        </div>
                        <div class="row ">
                            <p class="font-small m-0" style="font-size: 15px;">
                                {{formatTime($priorityArticles[0]->CreateAt)}} | {{$priorityArticles[0]->Name}}
                            </p>
                            <p class="font-small" style="font-size: 15px;">
                                {{$priorityArticles[0]->Summary}}
                            </p>
                        </div>
                    </a>
                </div>

                <div class="col-lg-4  p-0 pl-2">
                    <div class="row  m-0 mb-4">
                        <div class="col-12 px-0  title pb-lg-4 pb-2">
                            <a href="/article?id={{$priorityArticles[1]->Id}}">
                                <p class="font-medium">{{$priorityArticles[1]->Title}}</p>
                            </a>
                        </div>
                        <div class="col-12 px-0  title order-lg-last">
                            <a href="/article?id={{$priorityArticles[2]->Id}}">
                                <p class="font-medium">{{$priorityArticles[2]->Title}}</p>
                            </a>
                        </div>
                        <div class="col-lg-12 px-0  d-lg-inline-block d-none order-lg-first">
                            <a href="/article?id={{$priorityArticles[1]->Id}}">
                                <img class="img-fluid" src="{{URL::asset('upload/images').'/'.$priorityArticles[1]->Thumbnail}}">
                            </a>
                        </div>
                        <div class="col-12 px-0  d-lg-inline-block d-none">
                            <a href="/article?id={{$priorityArticles[2]->Id}}">
                                <img class="img-fluid" src="{{URL::asset('upload/images').'/'.$priorityArticles[2]->Thumbnail}}">
                            </a>
                        </div>

                    </div>
                </div>
            </div>
            <hr class="d-md-none">
            <div class="col-lg-3 col-md-5  pt-md-3 pt-0 px-0 order-lg-first pr-md-2 p-1">
                @for($i=3;$i<'8';$i++) <div class="row  w-100 m-0 py-1">
                    <a class="d-flex" href="/article?id={{$priorityArticles[$i]->Id}}">
                        <div class="col-5 px-0 ">
                            <img class="img-fluid" src="{{URL::asset('upload/images').'/'.$priorityArticles[$i]->Thumbnail}}">
                        </div>
                        <div class="col-7 px-0  pl-1 title">{{$priorityArticles[$i]->Title}}</div>
                    </a>
            </div>
            <hr>
            @endfor
        </div>
    </div>

    <!-- SECTION BOOK PUBLISH -->
    <div class=" w-100 py-sm-1 pt-1 pb-md-3 mb-4" id="section-publish" style="background-color: #ffde76;">
        <a class="pl-3" href="#" style="font-weight: 600; font-size: 24px; text-decoration: none; color: black;">
            <i class="fas fa-newspaper"></i>
            Tin nổi bật
        </a>

        <!-- SECTION BOOK PUBLISH(PC + TABLET) -->
        <div id="demo" class="carousel slide d-sm-block d-none" data-ride="carousel" style="position: relative;">

            <!-- Indicators -->
            <ul class="carousel-indicators" style="position: absolute; bottom: -8%;">
                <li data-target="#demo" data-slide-to="0" class="active bg-dark"></li>
                <li data-target="#demo" data-slide-to="1" class="bg-dark"></li>
                <li data-target="#demo" data-slide-to="2" class="bg-dark"></li>
            </ul>

            <!-- The slideshow -->
            <div class="carousel-inner py-3" style="background-color:  #ffde76;">
                <div class="carousel-item active px-3" style="text-align: center; background-color: #ffde76;">
                    <div class="row d-flex justify-content-center" style="padding: 0 5%;">
                        @for ($i=0;$i<'4';$i++) <div class="col mx-1">
                            <a href="/article?id={{$highlightArticles[$i]->Id}}">
                                <div class="row">
                                    <img class="img-new-articles" src="{{URL::asset('upload/images').'/'.$highlightArticles[$i]->Thumbnail}}">
                                </div>
                                <div class="row d-flex justify-content-center">
                                    <p class="font-medium">{{$highlightArticles[$i]->Title}}</p>
                                </div>
                            </a>
                    </div>
                    @endfor
                </div>
            </div>
            <div class="carousel-item px-3" style="text-align: center; background-color: #ffde76;">
                <div class="row d-flex justify-content-center" style="padding: 0 5%;">
                    @for ($i=4;$i<'8';$i++) <div class="col mx-1">
                        <a href="/article?id={{$highlightArticles[$i]->Id}}">
                            <div class="row">
                                <img class="img-new-articles" src="{{URL::asset('upload/images').'/'.$highlightArticles[$i]->Thumbnail}}">
                            </div>
                            <div class="row d-flex justify-content-center">
                                <p class="font-medium">{{$highlightArticles[$i]->Title}}</p>
                            </div>
                        </a>
                </div>
                @endfor
            </div>
        </div>
        <div class="carousel-item px-3" style="text-align: center; background-color: #ffde76;">
            <div class="row d-flex justify-content-center" style="padding: 0 5%;">
                @for ($i=8;$i<'12';$i++) <div class="col mx-1">
                    <a href="/article?id={{$highlightArticles[$i]->Id}}">
                        <div class="row">
                            <img class="img-new-articles" src="{{URL::asset('upload/images').'/'.$highlightArticles[$i]->Thumbnail}}">
                        </div>
                        <div class="row d-flex justify-content-center">
                            <p class="font-medium">{{$highlightArticles[$i]->Title}}</p>
                        </div>
                    </a>
            </div>
            @endfor
        </div>
    </div>
    </div>
    <a class="carousel-control-prev" href="#demo" data-slide="prev" style="width: 50px;">
        <i class="fas fa-caret-left" style="color: black; font-size: 30px;"></i>
    </a>
    <a class="carousel-control-next" href="#demo" data-slide="next" style="width: 50px;">
        <i class="fas fa-caret-right" style="color: black; font-size: 30px;"></i>
    </a>
    </div>

    <!-- SECTION BOOK PUBLISH(MOBILE) -->
    <div class="d-md-none d-block w-100 pt-2">
        <div class="slideshow-container">
            @for($i=0;$i<'12';$i++) <div class="slidesBookPublish">
                <a href="/article?id={{$highlightArticles[$i]->Id}}">
                    <img class="img-fluid" src="{{URL::asset('upload/images').'/'.$highlightArticles[$i]->Thumbnail}}" style="width:100%; max-height:205px;">
                    <div class="d-flex justify-content-center p-2">
                        <p class="font-large">{{$highlightArticles[$i]->Title}}</p>
                    </div>
                </a>
        </div>
        @endfor
        <a class="prev" style="text-decoration: none;" onclick="plusSlidesBookPublish(-1)">&#10094;</a>
        <a class="next" style="text-decoration: none;" onclick="plusSlidesBookPublish(1)">&#10095;</a>
    </div>
    </div>
    </div>

    <!-- SECTION MULTIMEDIA -->
    <div class=" w-100" id="section-mutilmedia" style="background-color: #eee;">
        <div class="row  m-0" style="height: 50px;">
            <div class="col-lg-2 col-3 " style="height: 50px;">
                <a href="#" style="font-weight: 600; font-size: 24px; text-decoration: none; color: black;">
                    MULTIMEDIA
                </a>
            </div>
            <div class="col-lg-10 col-9  pt-1 d-md-block d-none">
                <a href="#" class="link" style="text-decoration: none;">VIDEO</a>
                <a href="#" class="link" style="text-decoration: none;">LONGFORM</a>
                <a href="#" class="link" style="text-decoration: none;">VOICES</a>
                <a href="#" class="link" style="text-decoration: none;">LENS</a>
                <a href="#" class="link" style="text-decoration: none;">STORY</a>
                <a href="#" class="link" style="text-decoration: none;">QUIZZ</a>
            </div>
        </div>

        <div class="row  m-0">
            <div class="col-sm-6  px-4 py-2" style="background-color: #eee;">
                <div class="row pb-1">
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/a1hyMP4juqo" allowfullscreen></iframe>
                    </div>
                </div>
                <div class="row d-flex justify-content-center">
                    <p class="font-large pt-2">HiếuPC: Mật vụ Mỹ cài chip vào Macbook của bạn
                        tôi</p>
                </div>
            </div>
            @for($i=0;$i<'2';$i++) <div class="col-sm-3  px-4 py-2" style="background-color: #eee;">
                <a href="/article?id={{$multimediaArticles[$i]->Id}}">
                    <div class="row pb-1">
                        <img class="img-multimedia-articles" src="{{URL::asset('upload/images').'/'.$multimediaArticles[$i]->Thumbnail}}">
                    </div>
                    <div class="row d-flex justify-content-center">
                        <p class="font-medium">{{$multimediaArticles[$i]->Title}}</p>
                    </div>
                </a>
        </div>
        @endfor
    </div>
    <div class="row  m-0">
        @for($i=2;$i<'6';$i++) <div class="col-sm-3  px-4 py-2" style="background-color: #eee;">
            <a href="/article?id={{$multimediaArticles[$i]->Id}}">
                <div class="row pb-1">
                    <img class="img-multimedia-articles" src="{{URL::asset('upload/images').'/'.$multimediaArticles[$i]->Thumbnail}}">
                </div>
                <div class="row d-flex justify-content-center">
                    <p class="font-medium">{{$multimediaArticles[$i]->Title}}</p>
                </div>
            </a>
    </div>
    @endfor
    </div>
    </div>

    <!-- SECTION LASTEST -->
    <div class=" w-100 py-3" id="section-lastest">
        <a class="pl-3" href="#" style="font-weight: 600; font-size: 24px; text-decoration: none; color: black;">
            <i class="far fa-newspaper" style="font-size: 24px;"></i>
            Bài viết mới
        </a>

        <!-- SECTION ADVERTISEMENT -->
        <div class="row  m-0 py-1">
            <div class="col-sm-4  mb-3 mb-sm-0 d-none d-lg-block">
                <img class="w-100" src="{{URL::asset('upload/advertisement/qc1.jpg')}}">
                <img class="w-100" src="{{URL::asset('upload/advertisement/qc2.jpg')}}">
                <img class="w-100" src="{{URL::asset('upload/advertisement/qc3.jpg')}}">
                <img class="w-100" src="{{URL::asset('upload/advertisement/qc4.jpg')}}">
            </div>
            <div class="col-lg-8  order-sm-first">
                <div class="row ">
                    @foreach ($newArticles as $newArticle)
                    <div class="row col-sm-12 col-6 m-0 p-sm-0 px-2">
                        <a class="d-flex" href="/article?id={{$newArticle->Id}}">
                            <div class="col-sm-4  px-0 py-2">
                                <img class="img-fluid display-img-new-news" src="{{URL::asset('upload/images').'/'.$newArticle->Thumbnail}}" alt="Los Angeles" style="width: 100%;">
                                <div class="row  d-sm-none px-3 my-2">
                                    <p class="font-mediumer m-0 w-100 text-center">{{$newArticle->Title}}</p>
                                </div>
                            </div>
                            <div class="col-sm-8  px-4 py-2 d-sm-block d-none">
                                <div class="row ">
                                    <p class="font-mediumer m-0 w-100">{{$newArticle->Title}}</p>
                                    <p class="font-small">{{formatTime($newArticle->CreateAt)}} | {{$newArticle->Name}} </p>
                                </div>
                                <div class="row ">
                                    <p class="font-small">{{$newArticle->Summary}}</p>
                                </div>
                            </div>
                        </a>
                        <hr class="d-md-block d-none">
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>

    <!-- SECTION MEGAZINE -->

    <div class=" w-100 py-2" id="section-megazine" style="background-color: #34568B; border-radius: 20px;">
        <!-- SECTION MEGAZINE ON PC/TABLET -->
        <a class="pl-5 d-md-block d-none" href="#" style="font-weight: 600; font-size: 30px; text-decoration: none; color: white;">
            <i class="fas fa-blog" style="font-size: 30px;"></i>
            Megazine
        </a>

        <div id="carouselExampleIndicators" class="carousel slide py-2 d-md-block d-none" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner py-2 m-0" style="background-color: #34568B; padding: 0 3%;">
                <div class="carousel-item active row p-0" style="background-color: #34568B; text-align: center;">
                    @for ($i=0;$i<'3';$i++) <div class="d-inline-flex col-3 mx-3 p-0" style="text-align: center; background-color: #34568B; position: relative;">
                        <a href="/article?id={{$megazines[$i]->Id}}">
                            <div style="position: absolute; top:0; left: 0; width: 100%; height: 100%; border-radius: 20px;
              background: linear-gradient(to top, black 50%, #ffffff 100%); opacity: 0.1" class=""></div>
                            <img style="width: 100%; height: 435px; object-fit: cover; border-radius: 20px;" src="{{URL::asset('upload/images').'/'.$megazines[$i]->Thumbnail}}" alt="First slide">
                            <p style="position: absolute; bottom: 5%; text-align: center; color: white; font-size: 25px; 
              font-weight: 600; font-family: Noto Serif;" class="w-100 px-2">
                                {{$megazines[$i]->Title}}
                            </p>
                        </a>
                </div>
                @endfor
            </div>

            <div class="carousel-item row p-0" style="background-color: #34568B; text-align: center;">
                @for ($i=3;$i<'6';$i++) <div class="d-inline-flex col-3 mx-3 p-0" style="text-align: center; background-color: #34568B; position: relative;">
                    <a href="/article?id={{$megazines[$i]->Id}}">
                        <div style="position: absolute; top:0; left: 0; width: 100%; height: 100%; border-radius: 20px;
              background: linear-gradient(to top, black 50%, #ffffff 100%); opacity: 0.1" class=""></div>
                        <img style="width: 100%; height: 435px; object-fit: cover; border-radius: 20px;" src="{{URL::asset('upload/images').'/'.$megazines[$i]->Thumbnail}}" alt="First slide">
                        <p style="position: absolute; bottom: 5%; text-align: center; color: white; font-size: 25px; 
              font-weight: 600; font-family: Noto Serif;" class="w-100 px-2">
                            {{$megazines[$i]->Title}}
                        </p>
                    </a>
            </div>
            @endfor
        </div>

        <div class="carousel-item row p-0" style="background-color: #34568B; text-align: center;">
            @for ($i=6;$i<'9';$i++) <div class="d-inline-flex col-3 mx-3 p-0" style="text-align: center; background-color: #34568B; position: relative;">
                <a href="/article?id={{$megazines[$i]->Id}}">
                    <div style="position: absolute; top:0; left: 0; width: 100%; height: 100%; border-radius: 20px;
              background: linear-gradient(to top, black 50%, #ffffff 100%); opacity: 0.1" class=""></div>
                    <img style="width: 100%; height: 435px; object-fit: cover; border-radius: 20px;" src="{{URL::asset('upload/images').'/'.$megazines[$i]->Thumbnail}}" alt="First slide">
                    <p style="position: absolute; bottom: 5%; text-align: center; color: white; font-size: 25px; 
              font-weight: 600; font-family: Noto Serif;" class="w-100 px-2">
                        {{$megazines[$i]->Title}}
                    </p>
                </a>
        </div>
        @endfor
    </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev" style="width: 50px;">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next" style="width: 50px;">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
    </div>

    <!-- SECTION MEGAZINE ON MOBILE -->
    <a class="pl-3 d-md-none d-block" href="#" style="font-weight: 600; font-size: 30px; text-decoration: none; color: #D3D3D3;">
        <i class="fas fa-blog" style="font-size: 24px;"></i>
        Megazine
    </a>
    <div class="d-md-none d-block w-100 pt-2">
        <div class="slideshow-container">
            @foreach($megazines as $megazine)
            <div class="slidesMegazine">
                <a href="/article?id={{$megazine->Id}}">
                    <img class=" img-fluid" src="{{URL::asset('upload/images').'/'.$megazine->Thumbnail}}" style="width:100%; max-height:400px;">
                    <div class="d-flex justify-content-center p-2">
                        <p class="font-large pt-3" style="color: #D3D3D3;">{{$megazine->Title}}</p>
                    </div>
                </a>
            </div>
            @endforeach
            <a class="prev" style="text-decoration: none;" onclick="plusSlidesMegazine(-1)">&#10094;</a>
            <a class="next" style="text-decoration: none;" onclick="plusSlidesMegazine(1)">&#10095;</a>
        </div>
    </div>
    </div>

    <!-- SECTION CATEGORY -->
    <div class=" w-100 mt-4" id="section-category">
        <!-- SECTION CATEGORY ON PC/TABLET -->
        @php
        $index=0
        @endphp
        @for($i=0;$i<'3';$i++) <div class="row  m-0">
            @for($j=1;$j<='4';$j++) <div class="col-lg-3 col-md-6 py-4  px-4">
                <div class="row ">
                    <p class="title-category m-0">
                        <a href="/category?theloai={{$categories[$index/3]->NameUnsigned}}" style="text-decoration: none; color:black;">
                            <i class="fas fa-plus" style="color: red;"></i>
                            {{$categories[$index/3]->Name}}
                        </a>
                    </p>
                </div>
                <div class="row ">
                    <a href="\article?id={{$categoriesArticles[$index]->Id}}">
                        <img class="w-100 image-large-section-category" src="{{URL::asset('upload/images').'/'.$categoriesArticles[$index]->Thumbnail}}">
                        <p class="pt-2 title-large-section-category" style="text-align: left;">
                            {{$categoriesArticles[$index]->Title}}
                        </p>
                    </a>
                </div>
                <hr>
                <div class="row  pt-1">
                    <a class="d-flex" href="\article?id={{$categoriesArticles[$index+1]->Id}}">
                        <div class="col-5  p-0">
                            <img class="img-fluid w-100 display-img-categories-news" src="{{URL::asset('upload/images').'/'.$categoriesArticles[$index+1]->Thumbnail}}">
                        </div>
                        <div class="col-7 ">
                            <p class="title">{{$categoriesArticles[$index+1]->Title}}
                            </p>
                        </div>
                    </a>
                </div>
                <hr>
                <div class="row  pt-1">
                    <a class="d-flex" href="\article?id={{$categoriesArticles[$index+2]->Id}}">
                        <div class="col-5  p-0">
                            <img class="img-fluid w-100 display-img-categories-news" src="{{URL::asset('upload/images').'/'.$categoriesArticles[$index+2]->Thumbnail}}">
                        </div>
                        <div class="col-7 ">
                            <p class="title">{{$categoriesArticles[$index+2]->Title}}
                            </p>
                        </div>
                    </a>
                </div>
    </div>
    @php
    $index=$index+3
    @endphp
    @endfor
    </div>
    @endfor
    </div>
    </div>

    <footer>
        <hr>
        <div class="page-footer">
            @include('Share.Layout.Footer')

        </div>
    </footer>

    <script>
        var slideIndex = 1;
        var slideIndexBookPublish = 1;
        var slideIndexMegazine = 1;
        showSlides(slideIndex);
        showSlidesMegazine(slideIndexMegazine);
        showSlidesBookPublish(slideIndexBookPublish);


        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function plusSlidesBookPublish(n) {
            showSlidesBookPublish(slideIndexBookPublish += n);
        }

        function plusSlidesMegazine(n) {
            showSlidesMegazine(slideIndexMegazine += n);
        }

        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function currentSlideBookPublish(n) {
            showSlidesBookPublish(slideIndexBookPublish = n);
        }

        function currentSlideMegazine(n) {
            showSlidesMegazine(slideIndexMegazine = n);
        }

        function showSlides(n) {
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot-slide");
            if (n > slides.length) {
                slideIndex = 1
            }
            if (n < 1) {
                slideIndex = slides.length
            }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }

        function showSlidesBookPublish(n) {
            var i;
            var slides = document.getElementsByClassName("slidesBookPublish");
            if (n > slides.length) {
                slideIndexBookPublish = 1
            }
            if (n < 1) {
                slideIndexBookPublish = slides.length
            }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slides[slideIndexBookPublish - 1].style.display = "block";
        }

        function showSlidesMegazine(n) {
            var i;
            var slides = document.getElementsByClassName("slidesMegazine");
            if (n > slides.length) {
                slideIndexMegazine = 1
            }
            if (n < 1) {
                slideIndexMegazine = slides.length
            }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slides[slideIndexMegazine - 1].style.display = "block";
        }
    </script>
</body>

</html>