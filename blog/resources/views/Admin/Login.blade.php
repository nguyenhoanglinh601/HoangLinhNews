<!DOCTYPE html>
<html lang="en">

<head>
    <title>Đăng nhập - HoangLinhNews</title>
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
        * {
            font-family: 'Poppins', sans-serif;
        }

        .content {
            height: 500px;
        }

        @media only screen and (max-width: 1100px) {
            .content {
                height: 1200px;
            }
        }

        @media only screen and (max-width: 800px) {
            .content {
                height: 750px;
            }
        }

        @media only screen and (max-width: 600px) {
            .content {
                height: 550px;
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
    <div class="container content">
        <form action="/admin/login" method="post">
            @csrf
            <div class="row d-flex justify-content-center">
                <div class="col-lg-4 col-md-5 col-10 my-5 p-3 border" style="border-radius: 10px;">
                    <img class="mb-2" style="max-width: 120px;" src="{{URL::asset('image/logo-brand.png')}}">
                    @if(isset($message))
                    <p style="color: red;">{{$message}}</p>
                    @endif
                    <div class="w-100">
                        <lable class="m-0" style="color: gray; font-weight: 600;">Username or email</lable>
                        <input type="text" class="w-100" name="username">
                    </div>
                    <div class="w-100 mt-2">
                        <lable class="m-0" style="color: gray; font-weight: 600;">Password</lable>
                        <input type="password" class="w-100" name="password">
                    </div>
                    <a href="#" class="d-block" style="color: #3498db; text-decoration: none;">Forgot password?</a>
                    <button type="submit" class="btn btn-primary w-100 mt-4" style="background: linear-gradient(115deg, #56d8e4 10%, #9f01ea 90%);">LOGIN</button>
                </div>
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