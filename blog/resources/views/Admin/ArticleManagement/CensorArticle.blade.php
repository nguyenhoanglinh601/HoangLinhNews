<!DOCTYPE html>
<html lang="en">

<head>
    <title>Kiểm duyệt - {{$infoArticle->Title}}</title>
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
            @include('Admin.Share.Layout.Header')
        </div>
        <hr class="m-0 p-0">
    </header>
    <div class="container py-0 px-md-5">
        <div class="row m-0 pl-2 pt-3" id="title">
            <a href="#" style="text-decoration: none;">
                <p class="font-category text-uppercase w-100 m-0 mb-2">
                    @foreach($categories as $category)
                    @if($category->Id==$infoArticle->IdCategory)
                    {{$category->Name}}
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
        <div class="row m-0" id="content-body">
            <div class="col-12 p-0">
                <div class="row m-0" id="content">
                    <p class="font-summary">
                        {{$infoArticle->Summary}}
                    </p>
                    @foreach ($paragraphs as $paragraph)
                    <p class="font-content">
                        {{$paragraph->Content}}
                    </p>
                    @if ($paragraph->Image!="")
                    <figure class="figure w-100" style="text-align: center;">
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
            </div>
        </div>
        <form action="{{url('censorArticle')}}" method="post" class="px-3 py-2" style="font-family: 'Roboto', Ubuntu, sans-serif; background-color: #eee; border-radius: 20px;">
            @csrf
            <input type="hidden" name="IdArticle" value="{{$idArticle}}">
            <h2 class="font-weight-bold mt-3">Thông tin kiểm duyệt</h4>
                <div class="form-group">
                    <div class="row">
                        <label class="control-label col-lg-2 col-md-3 pr-0 m-0 pt-3 text-md-center" style="font-size: 18px;">Trạng thái:</label>
                        <select class="form-control col-md-5 mt-2 mx-2" name="StatusCensor" style="font-size: 18px;">
                            @foreach ($statusCensors as $statusCensor)
                            @if ($statusCensor->Id==$infoArticle->IdStatusCensor)
                            <option value="{{$statusCensor->Id}}" selected>{{$statusCensor->Name}}</option>
                            @else
                            <option value="{{$statusCensor->Id}}">{{$statusCensor->Name}}</option>
                            @endif
                            @endforeach
                        </select>
                    </div>
                    <div class="row mt-2">
                        <label class="control-label col-lg-2 col-md-3 pr-0 m-0 text-md-center" style="font-size: 18px;">Ghi chú:</label>
                        <textarea class="form-control col-lg-9 col-md-8 mx-2" name="Note">{{$note}}</textarea>
                    </div>
                </div>
                <div class="form-group d-flex justify-content-center">
                    <input type="submit" value="Cập nhập" class="btn btn-primary mr-2" style="font-size: 18px; width:35%;" />
                    <a href="/statisticarticles" class="btn btn-primary" style="font-size: 18px; width:35%;">Quay lại</a>
                </div>
        </form>
    </div>
    <footer>
        <hr>
        <div class="page-footer" style="font-family: 'Roboto', Ubuntu, sans-serif;">
            @include('Share.Layout.Footer')
        </div>
    </footer>
</body>