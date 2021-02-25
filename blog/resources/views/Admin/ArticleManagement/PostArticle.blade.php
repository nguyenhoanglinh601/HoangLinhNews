<!DOCTYPE html>
<html lang="en">

<head>
    <title>Đăng bài</title>
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

        .main-form {
            width: 300%;
        }

        .content-article {
            position: relative;
            border: 1px solid gray;
            border-radius: 10px;
            padding: 5% 5% 5% 5%;
            margin: 2% 0 2% 0%;
        }

        .close-paragraph {
            position: absolute;
            right: 2%;
            top: 0%;
            color: black;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
        }

        @media only screen and (max-width: 1200px) {
            .content {
                min-height: 1200px;
            }
        }

        @media only screen and (max-width: 850px) {
            .content {
                min-height: 750px;
            }
        }

        @media only screen and (max-width: 450px) {
            .content {
                min-height: 530px;
            }

            .main-form {
                width: 100%;
            }
        }
    </style>
    <script>
        var indexParagraph = 1;
        var indexAuthor = 1;

        $(document).ready(function() {
            $("#btn-add-content").click(function() {
                indexParagraph++;
                var content = "<div class=\"content-article\" id=\"content-paragraph-" + indexParagraph + "\">";
                content += "<span class=\"close-paragraph\" onclick=\"closeParagraph('content-paragraph-" + indexParagraph + "')\">&times;</span>";
                content += "<label class=\"control-label\">Nội dung: </label>";
                content += "<textarea name=\"content-" + indexParagraph + "\" class=\"form-control text-area-content\"></textarea>";
                content += "<p class=\"mb-0 mt-3\">Hình ảnh:</p>";
                content += "<div class=\"custom-file mb-3\">";
                content += "<input type=\"file\" class=\"custom-file-input custom-file-input-image\" name=\"image-" + indexParagraph + "\" id=\"customFile\" >";
                content += "<label class=\"custom-file-label\" for=\"customFile\">Tải ảnh lên</label>";
                content += "<input class=\"form-control figure mt-2\" name=\"figure-image-" + indexParagraph + "\" id=\"figure-" + indexParagraph + "\" placeholder=\"Nhập tiêu đề ảnh\">";
                content += "<input class=\"form-control description mt-2\" name=\"des-image-" + indexParagraph + "\" id=\"description-" + indexParagraph + "\" placeholder=\"Nhập mô tả ảnh\">"
                content += "</div>";
                content += "<p class=\"mb-0 mt-3\">Video:</p>";
                content += "<div class=\"custom-file mb-3\">";
                content += "<input type=\"file\" class=\"custom-file-input custom-file-input-video\" name=\"video-" + indexParagraph + "\" id=\"customFile\">";
                content += "<label class=\"custom-file-label\" for=\"customFile\">Tải video lên</label>";
                content += "<input class=\"form-control figure-video mt-2\" name=\"figure-video-" + indexParagraph + "\" id=\"figure-" + indexParagraph + "\" placeholder=\"Nhập tiêu đề video\">";
                content += "<input class=\"form-control description-video mt-2\" name=\"des-video-" + indexParagraph + "\" id=\"description-" + indexParagraph + "\" placeholder=\"Nhập mô tả video\">"
                content += "</div>";
                content += "<spa class=\"text-danger\"></span";

                $("#add-content").append(content);

                $("#numberOfParagraph").val(indexParagraph);
            });
        });
        $(document).ready(function() {
            $("#btn-add-author").click(function() {
                indexAuthor++;
                var content = "<div class=\"row my-1 detail-author\" id=\"author-" + indexAuthor + "\">";
                content += "<label class=\"control-label col-md-2 col-3 p-0 m-0 pt-1 ml-3\"style=\"text-align: center;\">Mã tác giả</label>";
                content += "<input type=\"number\" class=\"form-control col-2 p-0 input-detail-author\" name=\"author-" + indexAuthor + "\"/>";
                content += "<span class=\"ml-2 pt-2 btn-delete-author\" onclick=\"deleteAuthor('author-" + indexAuthor + "')\"><i class=\"fas fa-trash-alt\"></i></span>";
                content += "<span class=\"text-danger\"></span>";
                content += "</div>";
                $("#boxGroupAuthor").append(content);

                $("#numberOfAuthor").val(indexAuthor);
            });
        });

        function closeParagraph($component) {
            $("#" + $component).remove();
            indexParagraph--;
            updateOrder("content-article", "id", "content-paragraph-", "");
            updateOrder("close-paragraph", "onclick", "closeParagraph('content-paragraph-", "')")
            updateOrder("text-area-content", "name", "content-", "");

            updateOrder("custom-file-input-image", "name", "image-", "");
            updateOrder("figure", "id", "figure-", "");
            updateOrder("figure", "name", "figure-image-", "");
            updateOrder("description", "id", "description-", "");
            updateOrder("description", "name", "des-image-", "");

            updateOrder("custom-file-input-video", "name", "video-", "");
            updateOrder("figure-video", "id", "figure-", "");
            updateOrder("figure-video", "name", "figure-video-", "");
            updateOrder("description-video", "id", "description-", "");
            updateOrder("description-video", "name", "des-video-", "");

            $("#numberOfParagraph").val(indexParagraph);

        }

        function deleteAuthor($component) {
            $("#" + $component).remove();
            indexAuthor--;
            updateOrder("detail-author", "id", "author-", "");
            updateOrder("input-detail-author", "name", "author-", "");
            updateOrder("btn-delete-author", "onclick", "deleteAuthor('author-", "')");

            $("#numberOfAuthor").val(indexAuthor);
        }

        function updateOrder($components, $attribute, $preContent, $sufContent) {
            var length = $("." + $components).length;
            for (var j = 0; j <= length; j++) {
                var order = j + 1;
                $("." + $components).eq(j).attr($attribute, $preContent + order + $sufContent);
            }
        }

        $(document).ready(function() {
            $("#singleAuthor").click(function() {
                $("#boxSingleAuthor").toggle();
                $("#boxGroupAuthor").toggle();
            });
        });

        $(document).ready(function() {
            $("#groupAuthor").click(function() {
                $("#boxSingleAuthor").toggle();
                $("#boxGroupAuthor").toggle();
            });
        });

        $(document).ready(function() {
            $(".Category-detail").each(function() {
                $(this).hide();
            });
            $(".Category-detail:first").show();
        });

        function CategoryDetail($category) {
            $(".Category-detail").each(function() {
                $(this).hide();
            });
            $("#category-" + $category).show();
        }

        function changeTopic($value) {
            $("#name-topic").val($value);
        }
    </script>
</head>

<body>

    <header class="sticky-top">
        <div class="page-header-admin" style="background-color: white; font-family: 'Roboto', Ubuntu, sans-serif;">
            @include('Admin.Share.Layout.Header')
        </div>
        <hr class="m-0 p-0">
    </header>
    <div class="container content my-3">
        <div class="row d-flex justify-content-center">
            <div class="col-lg-8">
                <h1 class="font-weight-bold">Đăng bài</h1>
                @if(Session::has('messagePostArticle'))
                <div class="bg-danger text-white p-3 d-flex justify-content-center" style="width:90%;">{{session('messagePostArticle')}}</div>
                @php
                Session::forget('messagePostArticle');
                @endphp
                @endif
                <div class="row">
                    <div class="col-md-4">
                        <form class="main-form" action="{{url('savearticle')}}" method="post" enctype="multipart/form-data">
                            @csrf

                            <hr>
                            <h4 class="font-weight-bold">1.Thông tin bài viết</h4>
                            <div class="form-group">
                                <label class="control-label">1.1.Tiêu đề</label>
                                <input class="form-control" name="Title" required oninvalid="this.setCustomValidity('Tiêu đề không được để trống')" oninput="this.setCustomValidity('')" />
                                <span class="text-danger"></span>
                            </div>

                            <div class="form-group">
                                <label class="control-label">1.2.Tóm tắt bài viết</label>
                                <textarea class="form-control" name="Summary"></textarea>
                                <span class="text-danger"></span>
                            </div>

                            <div class="form-group">
                                <p class="mr-4">1.3.Thể loại:</p>
                                <select class="form-control" name="Category" onchange="CategoryDetail(value)" required oninvalid="this.setCustomValidity('Thể loại không được để trống')" oninput="this.setCustomValidity('')">
                                    @foreach ($categories as $category)
                                    <option value="{{$category->NameUnsigned}}">{{$category->Name}}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <p class="mr-4">1.4.Chuyên mục:</p>
                                <input type="hidden" id="name-topic" name="Topic">
                                @foreach ($categories as $category)
                                <select class="form-control Category-detail" id="category-{{$category->NameUnsigned}}" onchange="changeTopic(value)" required oninvalid="this.setCustomValidity('Chuyên mục không được để trống')" oninput="this.setCustomValidity('')">
                                    <option style="display: none;"></option>
                                    @foreach ($topics as $topic)
                                    @if($category->Id==$topic->IdCategory){
                                    <option value="{{$topic->Id}}">{{$topic->Name}}</option>
                                    @endif
                                    @endforeach
                                </select>
                                @endforeach
                            </div>

                            <div class="form-group">
                                <p class="mr-4">1.5.Media:</p>
                                <select class="form-control" name="Media" required oninvalid="this.setCustomValidity('Media không được để trống')" oninput="this.setCustomValidity('')">
                                    <option style="display: none;"></option>
                                    @foreach ($medias as $media)
                                    <option value="{{$media->Id}}">{{$media->Name}}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <label class="control-label">1.6.Cho phép bình luận: </label>
                                <label>
                                    <input type="radio" value="1" name="IsComment" checked /> Có
                                </label>
                                <label>
                                    <input type="radio" value="0" name="IsComment" /> Không
                                </label>
                                <span class="text-danger"></span>
                            </div>

                            <div class="form-group">
                                <label class="control-label">1.7.Bài viết ưu tiên: </label>
                                <label>
                                    <input type="radio" value="1" name="IsPriority" /> Có
                                </label>
                                <label>
                                    <input type="radio" value="0" name="IsPriority" checked /> Không
                                </label>
                                <span class="text-danger"></span>
                            </div>

                            <div class="form-group">
                                <label class="control-label">1.8.Hình đại diện:</label>
                                <div class="custom-file mb-3">
                                    <input type="file" class="custom-file-input" name="avatar" required oninvalid="this.setCustomValidity('Bài viết chưa có hình đại diện')" oninput="this.setCustomValidity('')">
                                    <label class="custom-file-label" for="customFile">Tải hình lên</label>
                                </div>
                                <span class="text-danger"></span>
                            </div>

                            <hr>

                            <h4 class="font-weight-bold">2.Thông tin tác giả</h4>
                            <div class="form-group" id="boxGroupAuthor">
                                <input type="hidden" id="numberOfAuthor" value="1" name="numberOfAuthor">
                                <div>
                                    <div class="w-100 d-flex justify-content-start mb-3">
                                        <span class="btn btn-secondary m-0 mt-1 ml-md-3 ml-2" id="btn-add-author">Thêm
                                            tác giả</span>
                                    </div>
                                </div>
                                <div class="row my-1 detail-author" id="author-1">
                                    <label class="control-label col-md-2 col-3 p-0 m-0 pt-1 ml-3" style="text-align: center;">Mã tác giả</label>
                                    <input type="number" class="form-control col-2 p-0 input-detail-author" name="author-1" required oninvalid="this.setCustomValidity('Tác giả không được để trống')" oninput="this.setCustomValidity('')" />
                                    <span class="text-danger"></span>
                                </div>
                            </div>
                            <hr>

                            <h4 class="font-weight-bold">3.Nội dung bài viết</h4>
                            <input type="hidden" id="numberOfParagraph" value="1" name="numberOfParagraph">

                            <div class="form-group" id="add-content">
                                <div class="content-article" id="content-paragraph-1">
                                    <span class="close-paragraph" onclick="closeParagraph('content-paragraph-1')">&times;</span>
                                    <label class="control-label">Nội dung: </label>
                                    <textarea name="content-1" class="form-control text-area-content"></textarea>
                                    <p class="mb-0 mt-3">Hình ảnh:</p>
                                    <div class="custom-file mb-3">
                                        <input type="file" class="custom-file-input custom-file-input-image" name="image-1" id="customFile">
                                        <label class="custom-file-label" for="customFile">Tải ảnh lên</label>
                                        <input class="form-control figure mt-2" name="figure-image-1" id="figure-1" placeholder="Nhập tiêu đề ảnh">
                                        <input class="form-control description mt-2" name="des-image-1" id="description-1" placeholder="Nhập mô tả ảnh">
                                    </div>
                                    <p class="mb-0 mt-3">Video:</p>
                                    <div class="custom-file mb-3">
                                        <input type="file" class="custom-file-input custom-file-input-video" name="video-1" id="customFile">
                                        <label class="custom-file-label" for="customFile">Tải video lên</label>
                                        <input class="form-control figure-video mt-2" name="figure-video-1" id="figure-1" placeholder="Nhập tiêu đề video">
                                        <input class="form-control description-video mt-2" name="des-video-1" id="description-1" placeholder="Nhập mô tả video">
                                    </div>
                                    <spa class="text-danger"></span>
                                </div>
                            </div>

                            <div class="w-100 d-flex justify-content-end">
                                <span class="btn btn-secondary" id="btn-add-content">Thêm đoạn mới</span>
                            </div>
                            <hr>

                            <h4 class="font-weight-bold mt-3">4.Trạng thái bài viết</h4>
                            <div class="form-group form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="status" />Hiển thị
                                </label>
                            </div>
                            <hr>

                            <div class="form-group d-flex justify-content-center">
                                <input type="submit" value="Thêm" class="btn btn-primary mr-2 w-25" />
                                <a href="/postarticle" class="btn btn-primary w-25">Tải lại</a>
                            </div>
                        </form>
                    </div>
                </div>
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
    $(".custom-file-input-image").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        //alert($(this).siblings(".custom-file-label").val());
        $(this).siblings(".custom-file-label").text(fileName);
    });
</script>