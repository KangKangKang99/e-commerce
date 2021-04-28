<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="public/backend/images/favicon.png">

    <title>Trang quản lí Admin</title>

    <!-- Bootstrap CSS -->
    <link href="{{asset('public/backend/css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="{{asset('public/backend/css/bootstrap-theme.css')}}" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="{{asset('public/backend/css/elegant-icons-style.css')}}" rel="stylesheet" />
    <link href="{{asset('public/backend/css/font-awesome.css')}}" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="{{asset('public/backend/css/style.css')}}" rel="stylesheet">
    <link href="{{asset('public/backend/css/style-responsive.css')}}" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
    <script src="{{asset('public/backend/js/html5shiv.js')}}"></script>
    <script src="{{(asset('public/backend/js/respond.min.js'))}}"></script>
    <![endif]-->

</head>

<body class="login-img3-body">

<div class="container">

    <form class="login-form" action="{{URL::to('/login')}}" method="post">
        {{(csrf_field())}}
        <div class="login-wrap">
            <p class="login-img"><i class="icon_lock_alt"></i></p>
            <div class="input-group">
                <?php
                $message =Session::get('message');
                if($message){
                    echo '<span class="text-alert">'.$message.'</span>';
                    Session::put('message',null);
                }
                ?>
            </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_profile"></i></span>
                <input type="text" class="form-control" placeholder="Username" autofocus name="admin_email">
            </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                <input type="password" class="form-control" placeholder="Password" name="admin_password">
            </div>
            <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
           {{-- <button class="btn btn-info btn-lg btn-block" type="submit">Signup</button>--}}
        </div>
    </form>
</div>


</body>

</html>
