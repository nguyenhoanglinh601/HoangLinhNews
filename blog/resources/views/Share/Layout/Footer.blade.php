<style>
    .txt-right {
        font-weight: 600;
    }

    .txt-right,
    .txt-left {
        font-size: 12px;
        color: #888888;
        width: 100%;
    }

    .div-logo {
        justify-content: left;
    }

    .info {
        justify-content: space-between;
    }

    @media only screen and (max-width: 800px) {

        .txt-right,
        .txt-left {
            text-align: center;
        }

        .div-logo {
            justify-content: center;
        }
    }
</style>
<div class="container">
    <div class="row div-logo">
        <a href="/">
            <img style="max-width: 120px;" src="{{URL::asset('image/logo-brand.png')}}">
        </a>
    </div>
    <div class="row info">
        <div class="col-lg-4">
            <p class="txt-left">
                Tạp chí điện tử Tri thức trực tuyến<br>
                Cơ quan chủ quản: Hội Xuất bản Việt Nam<br>
                Giấy phép báo chí: số 75/GP-BTTTT<br>
                © 2020 Toàn bộ bản quyền thuộc Tri thức trực tuyến<br>
            </p>
        </div>
        <div class="col-lg-4" style="padding-left: 7%;">
            <p class="txt-right">
                The website is developed by Nguyen Hoang Linh<br>
                <a href="mailto:nguyenhoanglinh308@gmail.com" style="text-decoration: none; color: #888888;">
                    <i class="fas fa-envelope"></i> nguyenhoanglinh308@gmail.com<br>
                </a>
                <a href="tel:0969076447" style="text-decoration: none; color: #888888;">
                    <i class="fas fa-mobile-alt"></i> 0969.076.447
                </a>
            </p>
        </div>
    </div>
</div>