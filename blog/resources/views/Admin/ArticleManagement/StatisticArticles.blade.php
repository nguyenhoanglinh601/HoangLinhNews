<!DOCTYPE html>
<html lang="en">

<head>
    <title>Administration - HoangLinhNews</title>
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
        .content {
            min-height: 700px;
            position: relative;
        }

        .fix-bottom {
            width: 100%;
            position: absolute;
            left: 0;
            bottom: 0;
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
        }

        @media only screen and (max-width: 400px) {
            .content {
                min-height: 530px;
            }
        }
    </style>
</head>

<body>

    <header class="sticky-top">
        <div class="page-header-admin" style="background-color: white; font-family: 'Roboto', Ubuntu, sans-serif;">
            @include('Admin.Share.Layout.Header')
        </div>
        <hr class="m-0 p-0">
    </header>
    <div class="container content my-3">
        <h2>Thống kê bài viết</h2>
        <hr />
        <a class="btn btn-success" href="/postarticle">Đăng bài mới</a>
        <hr />
        <form action="{{url('articlefilter')}}" method="get">
            @csrf
            <p>
                <b>Từ khóa:</b> <input type="text" name="Keyword">
                <br /><br />
                <b class="mr-4">Trạng thái:</b>
                <select style="height: 27px;" name="StatusCensor">
                    <option value="0">Tất cả</option>
                    @foreach ($statusArticleCensors as $statusArticleCensor)
                    <option value="{{$statusArticleCensor->Id}}">{{$statusArticleCensor->Name}}</option>
                    @endforeach
                </select>
                <br /><br />
                <input class="btn btn-secondary" type="submit" value="Tìm kiếm" />
            </p>
        </form>
        <div class="table-responsive">
            <table class="table" style="text-align: center;">
                <thead>
                    <tr>
                        <th></th>
                        <th style="min-width: 120px;">
                            Mã bài viết
                        </th>
                        <th style="min-width: 100px;">
                            Tiêu đề
                        </th>
                        <th style="min-width: 220px;">
                            Thời gian tạo
                        </th>
                        <th style="min-width: 220px;">
                            Thời gian sửa gần nhất
                        </th>
                        <th style="min-width: 100px;">
                            Phân loại
                        </th>
                        <th style="min-width: 120px;">
                            Chuyên đề
                        </th>
                        <th style="min-width: 200px;">
                            Mã người kiểm duyệt
                        </th>
                        <th style="min-width: 100px;">
                            Lượt xem
                        </th>
                        <th style="min-width: 120px;">
                            Trạng thái
                        </th>
                        <th style="min-width: 200px;">
                            Cho phép bình luận
                        </th>
                        <th style="min-width: 200px;">
                            Tin ưu tiên
                        </th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($articles as $article)
                    <tr>
                        @if(session('role')=='1')
                        <td>
                            <a href="/censorarticle?id={{$article->Id}}" style="width:120px; margin-bottom: 5%;" class="btn btn-primary">Kiểm duyệt</a>
                        </td>
                        @elseif(session('role')=='2')
                        <td>
                            <a href="/article?id={{$article->Id}}" style="width:120px; margin-bottom: 5%;" class="btn btn-secondary" target="_blank">Xem</a>
                            <a href="/editarticle?id={{$article->Id}}" style="width:120px; margin-bottom: 5%;" class="btn btn-primary">Sửa</a>
                        </td>
                        @endif
                        <td>
                            {{$article->Id}}
                        </td>
                        <td>
                            {{$article->Title}}
                        </td>
                        <td>
                            {{$article->CreateAt}}
                        </td>
                        <td>
                            {{$article->UpdateAt}}
                        </td>
                        <td>
                            @foreach ($categories as $category)
                            @if($article->IdCategory==$category->Id)
                            {{$category->Name}}
                            @break
                            @endif
                            @endforeach
                        </td>
                        <td>
                            @foreach ($topics as $topic)
                            @if($article->IdTopic==$topic->Id)
                            {{$topic->Name}}
                            @break
                            @endif
                            @endforeach
                        </td>
                        <td>
                            {{$article->IdCensor}}
                        </td>
                        <td>
                            {{$article->View}}
                        </td>
                        <td>
                            @if ($article->StatusDisplay==1)
                            {{"hiển thị"}}
                            @else
                            {{"ẩn"}}
                            @endif
                        </td>
                        <td>
                            @if ($article->IsComment==1)
                            {{"có"}}
                            @else
                            {{"không"}}
                            @endif
                        </td>
                        <td>
                            @if ($article->IsPriority==1)
                            {{"có"}}
                            @else
                            {{"không"}}
                            @endif
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <div style="height: 100px;">
        </div>
        <div class="fix-bottom d-flex justify-content-center">
            {{$articles->onEachSide(1)->links()}}
        </div>
    </div>
    <footer>
        <hr>
        <div class="page-footer" style="font-family: 'Roboto', Ubuntu, sans-serif;">
            @include('Share.Layout.Footer')
        </div>
    </footer>
</body>