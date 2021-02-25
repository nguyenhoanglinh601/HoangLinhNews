<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
    integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
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
        cursor: pointer;
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
            min-height: 200px;
            overflow: auto;
        }
    }
</style>

<script>
    $(document).ready(function () {
        $(".more-in-menu").click(function () {
            $("#three-dot").toggle();
            $("#cancel-sign").toggle();
            $("#typeListDropdown").toggle();
        });
    });

    // $(document).ready(function () {
    //     $(".dropbtn-account").click(function () {
    //         $("#myDropdown").toggle();
    //     });
    // });
</script>
<div class="container">
    <div class="row nav-bar">
        <div class="col-lg-8 col-md-1 col-2 p-lg-0 pl-3">
            <div class="menu-header-full">
                <nav class="navbar navbar-expand-lg navbar-light p-0">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link text-dark font-weight-bold" href="/statisticarticles">Quản lý bài viết</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-dark font-weight-bold" href="#">Quản lý thể loại</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-dark font-weight-bold" href="#">Quản lý bình luận</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-dark font-weight-bold" href="#">Quản lý tác giả</a>
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
        <div class="col-lg-2 col-md-8 col-5 order-lg-first pl-0">
            <a href="#">
                <img style="max-width: 120px;" src="{{URL::asset('image/logo-brand.png')}}">
            </a>
        </div>
        <div class="col-lg-2 col-md-3 col-5 row m-0 px-0 d-flex justify-content-end">
            <div class="pr-2 pt-2 con-search">
                <i class="fas fa-bell" id="search-icon" style="cursor: pointer;"></i>
            </div>
            <div class="pt-2 pr-3 dropdown-account">
                <i class="fas fa-user-circle" onclick="dropdownAccount()" class="dropbtn-account"> {{session('name')}}</i>
                <div id="myDropdown" class="dropdown-content-account">
                    <a href="/admin/login">Đăng nhập</a>
                    <a href="#">Thông tin tài khoản</a>
                    <a href="/admin/logout">Đăng xuất</a>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
<div id="typeListDropdown" class="dropdown-content scroll-able d-lg-none">
    <div class="row m-0 type-list">
        <div class="row m-0 py-2 px-md-4 px-3 w-100" id="danhMucChuDeChiTiet">
            <div class="col-md-3 col-6 py-2 px-1 dropdown-content-item">
                <a href="/statisticarticles" style="font-weight: 800; font-size: 16px;">
                    <i class="fas fa-circle" style="font-size: 8px; color: red;"></i>
                    Quản lý bài viết
                </a>
                <a class="pl-3" href="/statisticarticles">Thống kê bài viết</a>
                <a class="pl-3" href="/postarticle">Đăng bài</a>
            </div>
            <div class="col-md-3 col-6 py-2 px-1 dropdown-content-item">
                <a href="#" style="font-weight: 800; font-size: 16px;">
                    <i class="fas fa-circle" style="font-size: 8px; color: red;"></i>
                    Quản lý thể loại
                </a>
                <a class="pl-3" href="#">Thống kê thể loại</a>
                <a class="pl-3" href="#">Thêm thể loại</a>
            </div>
            <div class="col-md-3 col-6 py-2 px-1 dropdown-content-item">
                <a href="#" style="font-weight: 800; font-size: 16px;">
                    <i class="fas fa-circle" style="font-size: 8px; color: red;"></i>
                    Quản lý bình luận
                </a>
                <a class="pl-3" href="#">Thống kê bình luận</a>
            </div>
            <div class="col-md-3 col-6 py-2 px-1 dropdown-content-item">
                <a href="#" style="font-weight: 800; font-size: 16px;">
                    <i class="fas fa-circle" style="font-size: 8px; color: red;"></i>
                    Quản lý tác giả
                </a>
                <a class="pl-3" href="#">Thống kê tác giả</a>
                <a class="pl-3" href="#">Thêm tác giả</a>
            </div>
            
        </div>
    </div>
</div>
<script>
    function dropdownAccount() {
        document.getElementById("myDropdown").classList.toggle("show-account");
    }
</script>