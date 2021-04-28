


<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>ITstore</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="{{asset('public/frontend/public/frontend/images/favicon.ico')}}" type="image/x-icon">
    <link rel="apple-touch-icon" href="{{asset('public/frontend/public/frontend/images/apple-touch-icon.png')}}">


    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{asset('public/frontend/css/bootstrap.min.css')}}">
    <!-- Site CSS -->
    <link rel="stylesheet" href="{{asset('public/frontend/css/style.css')}}">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="{{asset('public/frontend/css/responsive.css')}}">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="{{asset('public/frontend/css/custom.css')}}">
    <!-- sweetalert -->
    <link rel="stylesheet" href="{{asset('public/frontend/css/sweetalert.css')}}">

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.public/frontend/js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<div class="jumbotron text-center">
    <h1 class="display-3">Thank You!</h1>
    <p class="lead"><strong>Cám ơn bạn đã đặt hàng</strong> Chúng tôi sẽ liên lạc lại với bạn sớm nhất.</p>
    <hr>
    <p>
        Có vấn đề xảy ra? <a href="">Liên hệ với chúng tôi</a>
    </p>
    <p class="lead">
        <a class="btn btn-primary btn-sm" href="{{URL::to('trang-chu')}}" role="button">Tiếp tục mua sắm</a>
    </p>
</div>
 <!-- Start Slider -->
    <div id="slides-shop" class="cover-slides">
        <ul class="slides-container">
            <li class="text-left">
                <img src="public/frontend/images/banner-01.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong>Welcome To <br> IT-store</strong></h1>
                            <p class="m-b-40">Laptop văn phòng, laptop gaming hiệu năng cao, laptop flagship <br> Thinkpad x-series, Dell XPS, MSI, ASUS NITRO...</p>
                            <p><a class="btn hvr-hover" href="#">Shop New</a></p>
                        </div>
                    </div>
                </div>
            </li>
            <li class="text-center">
                <img src="public/frontend/images/banner-02.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong>Welcome To <br> IT-store</strong></h1>
                            <p class="m-b-40">Phụ kiện điện tử đầy đủ chính hãng  <br> Chuột gaming, tai nghe bluetooth, bàn phím cơ led RGB...</p>
                            <p><a class="btn hvr-hover" href="#">Shop New</a></p>
                        </div>
                    </div>
                </div>
            </li>
            <li class="text-right">
                <img src="public/frontend/images/banner-03.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong>Welcome To <br> IT-store</strong></h1>
                            <p class="m-b-40">Dịch vụ bảo hành hậu mãi cao, dịch vụ chăm sóc khách hàng 24/7  <br> Bảo hành 13 tháng với phần cứng laptop, trọn đời đối với phần mềm...</p>
                            <p><a class="btn hvr-hover" href="#">Shop New</a></p>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
        <div class="slides-navigation">
            <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
            <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
        </div>
    </div>
    <!-- End Slider -->

<!-- ALL JS FILES -->
<script src="{{asset('public/frontend/js/jquery-3.2.1.min.js')}}"></script>
<script src="{{asset('public/frontend/js/popper.min.js')}}"></script>
<script src="{{asset('public/frontend/js/bootstrap.min.js')}}}"></script>
<script src="{{asset('public/frontend/js/sweetalert.min.js')}}"></script>
<!-- ALL PLUGINS -->
<script src="{{asset('public/frontend/js/jquery.superslides.min.js')}}"></script>
<script src="{{asset('public/frontend/js/bootstrap-select.js')}}"></script>
<script src="{{asset('public/frontend/js/inewsticker.js')}}"></script>
<script src="{{asset('public/frontend/js/bootsnav.js')}}"></script>
<script src="{{asset('public/frontend/js/images-loded.min.js')}}"></script>
<script src="{{asset('public/frontend/js/isotope.min.js')}}"></script>
<script src="{{asset('public/frontend/js/owl.carousel.min.js')}}"></script>
<script src="{{asset('public/frontend/js/baguetteBox.min.js')}}"></script>
<script src="{{asset('public/frontend/js/form-validator.min.js')}}"></script>
<script src="{{asset('public/frontend/js/contact-form-script.js')}}"></script>
<script src="{{asset('public/frontend/js/custom.js')}}"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
{{--<script type="text/javascript">
        $(document).ready(function () {
            /*$('.add-to-cart-btn').click(function () {
                swal("Thành công!", "đã thêm vào giỏ hàng!", "success")
            })*/
            swal("Here's a message!")
        })
</script>--}}
</body>

</html>
