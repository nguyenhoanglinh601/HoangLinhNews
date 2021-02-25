<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<style>
    .dropbtn {
        cursor: pointer;
    }

    .dropdown-content {
        display: inline-block;
        width: 100%;
        display: none;
        position: absolute;
        background-color: #141329;
        overflow: auto;
        box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
        z-index: 1;

        -webkit-animation-name: slideIn;
        -webkit-animation-duration: 0.8s;
        animation-name: slideIn;
        animation-duration: 0.8s;

    }

    .dropdown-content a {
        font-size: 16px;
        color: #ddd;
        text-decoration: none;
        display: block;
        padding: 3px 0;
    }

    .dropdown a:hover {
        background-color: #ddd;
    }

    .show {
        display: block;
    }

    .con-search {
        position: relative;
    }

    .search-bar {
        position: absolute;
        right: 15px;
        top: 0;
        display: none;
        border-radius: 10px;
        width: 250px;
        height: 65px;
        box-sizing: border-box;
        z-index: 2;
        background-color: #444444;
        padding: 5px;

        -webkit-animation-name: slideIn;
        -webkit-animation-duration: 0.8s;
        animation-name: slideIn;
        animation-duration: 0.8s;
    }

    .show-search-bar {
        display: inline-flex;
    }

    .close-search-bar {
        color: white;
        font-size: 28px;
        font-weight: bold;
        position: absolute;
        top: -14px;
        right: 0px;
        cursor: pointer;
    }

    .dropbtn-account {
        cursor: pointer;
    }

    .dropdown-account {
        position: relative;
        display: inline-block;
    }

    .dropdown-content-account {
        display: none;
        position: absolute;
        background-color: #f1f1f1;
        overflow: auto;
        box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
        right: 0;
        z-index: 2;
        border-radius: 10px;
    }

    .dropdown-content-account a {
        color: white;
        font-weight: 600;
        padding: 5px 5px;
        min-width: 160px;
        text-decoration: none;
        display: block;
        background-color: #444444;
    }

    .dropdown-account a:hover {
        background-color: #ddd;
        color: black;
    }

    .show-account {
        display: block;
    }

    @-webkit-keyframes slideIn {
        from {
            opacity: 0
        }

        to {
            opacity: 1
        }
    }

    @keyframes slideIn {
        from {
            opacity: 0
        }

        to {
            opacity: 1
        }
    }

    @-webkit-keyframes fadeIn {
        from {
            opacity: 1
        }

        to {
            opacity: 0
        }
    }

    @keyframes fadeIn {
        from {
            opacity: 1
        }

        to {
            opacity: 0
        }
    }

    @media only screen and (max-width: 1024px) {
        .dropdown-content a {
            font-size: 13px;
        }
    }

    ::placeholder {
        color: white;
        opacity: 1;
    }

    :-ms-input-placeholder {
        color: white;
    }

    ::-ms-input-placeholder {
        color: white;
    }

    @media only screen and (max-width: 500px) {
        .scroll-able {
            height: 500px;
            overflow: auto;
        }
    }
</style>

<script>
    $(document).ready(function() {
        $(".more-in-menu").click(function() {
            $("#three-dot").toggle();
            $("#cancel-sign").toggle();
            $("#typeListDropdown").toggle();
        });
    });

    $(document).ready(function() {
        $("#search-icon").click(function() {
            $(".search-bar").addClass("show-search-bar");
        });
    });

    $(document).ready(function() {
        $("#close-icon").click(function() {
            $(".search-bar").removeClass("show-search-bar");
        });
    });

    // $(document).ready(function () {
    //     $(".dropbtn-account").click(function () {
    //         $("#myDropdown").toggle();
    //     });
    // });
</script>
<div class="container ">
    <div class="row nav-bar">
        <div class="col-lg-9 col-md-1 col-2 p-lg-0 pl-3 ">
            <div class="menu-header-full">
                <nav class="navbar navbar-expand-lg navbar-light p-0">
                    <ul class="navbar-nav mr-auto">
                        @for($i = 0;$i < 8; $i++) <li class="nav-item">
                            <a class="nav-link text-dark font-weight-bold" href="/category?theloai={{$categories[$i]->NameUnsigned}}">{{$categories[$i]->Name}}</a>
                            </li>
                            @endfor
                            <li>
                                <div class="more-in-menu">
                                    <div class="pl-2" style="text-align:center; padding-top: 5px; cursor: pointer;" id="three-dot">
                                        <span class="dot"></span>
                                        <span class="dot"></span>
                                        <span class="dot"></span>
                                    </div>
                                    <div class="cancel-sign pl-2" id="cancel-sign" style="display: none; padding-top: 17px;">
                                        <div class="bar1-cancle"></div>
                                        <div class="bar2-cancle"></div>
                                    </div>
                                </div>
                            </li>
                    </ul>
                </nav>
            </div>
            <div class="menu-header-dropdown more-in-menu">
                <div class="container-button-dropdown" onclick="changeButtonDropdown(this)">
                    <div class="bar1"></div>
                    <div class="bar2"></div>
                    <div class="bar3"></div>
                </div>
            </div>
        </div>
        <div class="col-lg-2 col-md-8 col-7 order-lg-first pl-0 ">
            <a href="/">
                <img style="max-width: 120px;" src="{{URL::asset('image/logo-brand.png')}}">
            </a>
        </div>
        <div class="col-lg-1 col-3 row m-0 pr-0 d-flex justify-content-end ">
            <div class="col-6 col-sm-3 col-md-4 pl-lg-1 pl-md-4 pl-3 pr-0 pt-2  con-search">
                <form action="/search" method="get">
                    <i class="fas fa-search" id="search-icon" style="cursor: pointer;"></i>
                    <div class="search-bar row">
                        <div class="col-12 p-0 m-0" style="text-align: right;">
                            <span class="close-search-bar" id="close-icon">
                                &times;
                            </span>
                        </div>
                        <div class="col-10 p-0 mt-4">
                            <input type="input" name="keyword" class="m-0 w-100 h-100" style="border-radius: 5px 0 0 5px; border: 0px; background-color: #808080; color: white;" placeholder="nhập từ khóa tìm kiếm...">
                        </div>
                        <div class="col-2 p-0 mt-4">
                            <button class="m-0 w-100 h-100" id="search-btn" style="background-color: #808080; border: 0px; border-radius: 0 5px 5px 0;">
                                <i style="color: #1a1aff;" class="fas fa-search"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-6 col-sm-3 col-md-4 pl-lg-1 pl-md-2 pl-1 pr-0 pt-2  dropdown-account">
                <i class="fas fa-user-circle" onclick="dropdownAccount()" class="dropbtn-account"></i>
                <div id="myDropdown" class="dropdown-content-account">
                    <a href="#">Đăng nhập</a>
                    <a href="#">Thông tin tài khoản</a>
                    <a href="#">Đăng xuất</a>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="typeListDropdown" class="dropdown-content scroll-able">
    <div class="row  m-0 type-list">
        <div class="row m-0 py-2 px-md-5 px-3 w-100" id="danhMucChuDeChiTiet">
            @foreach ($categories as $category)
            <div class="col-sm-2 col-6 py-2 px-1 dropdown-content-item">
                <a href="/category?theloai={{$category->NameUnsigned}}" style="font-weight: 800; font-size: 16px;">
                    <i class="fas fa-circle" style="font-size: 8px; color: red;"></i>
                    {{$category->Name}}
                </a>
                @foreach ($topics as $topic)
                @if ($topic->IdCategory==$category->Id)
                <a class="pl-3" href="/category?theloai={{$category->NameUnsigned}}">{{$topic->Name}}</a>
                @endif
                @endforeach
            </div>
            @endforeach
        </div>
        <div class="row  px-md-5 px-3 m-0  w-100" id="loaiPhuongTien" style="background-color: #444444;">
            <div class="col-md col-6 py-2">
                <a style="text-align: center;" href="#">
                    <img style="max-width: 150px; max-height: 30px;" src="//static-znews.zadn.vn/images/channels/longform-logo-white.png" alt="Longform logo">
                </a>
            </div>
            <div class="col-md col-6 py-2">
                <a style="text-align: center;" href="#">
                    <img style="max-width: 150px; max-height: 30px;" src="//static-znews.zadn.vn/images/channels/story-logo-white.png" alt="Story logo">
                </a>
            </div>
            <div class="col-md col-6 py-2">
                <a style="text-align: center;" href="#">
                    <img style="max-width: 150px; max-height: 30px;" src="//static-znews.zadn.vn/images/channels/voices-logo-white.png" alt="Voices logo">
                </a>
            </div>
            <div class="col-md col-6 py-2">
                <a style="text-align: center;" href="#">
                    <img style="max-width: 150px; max-height: 30px;" src="//static-znews.zadn.vn/images/channels/infographic-logo-white.png" alt="Infographic logo">
                </a>
            </div>
            <div class="col-md col-6 py-2">
                <a style="text-align: center;" href="#">
                    <img style="max-width: 150px; max-height: 30px;" src="//static-znews.zadn.vn/images/channels/lens-logo-white.png" alt="Lens logo">
                </a>
            </div>
            <div class="col-md col-6 py-2">
                <a style="text-align: center;" href="#">
                    <img style="max-width: 150px; max-height: 30px;" src="//static-znews.zadn.vn/images/channels/review-logo-white.png" alt="Reiew logo">
                </a>
            </div>
            <div class="col-md col-6 py-2">
                <a style="text-align: center;" href="#">
                    <img style="max-width: 150px; max-height: 30px;" src="//static-znews.zadn.vn/images/channels/interactive-logo-white.png" alt="Interactive logo">
                </a>
            </div>
        </div>
    </div>
</div>
<script>
    function dropdownAccount() {
        document.getElementById("myDropdown").classList.toggle("show-account");
    }
</script>