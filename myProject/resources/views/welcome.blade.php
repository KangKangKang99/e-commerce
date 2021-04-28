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

<!-- Start Main Top -->
<div class="main-top">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="text-slid-box">
                    <div id="offer-box" class="carouselTicker">
                        <ul class="offer-box">
                            <li>
                                <i class="fab fa-opencart"></i> Laptop ASUS doanh nhân, Thinkpad, Dell XPS
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> Laptop Gaming rẻ nhất thị trường
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> Miễn phí ship toàn nước với đơn hàng trên 10tr
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> Phụ kiện máy tính
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> Miễn phí vệ sinh
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> Bảo hành phần cứng 12 tháng
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> Bảo hành phần mềm trọn đời
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">

                <div class="right-phone-box">
                    <p>CSKH : <a href="#"> +84 09 7271 002</a></p>
                </div>
                <div class="our-link">
                    <ul>
                        <?php $customer_id = Session::get('customer_id'); $shipping_id = Session::get('shipping_id');
                        $name=Session::get('customer_name');
                        if($customer_id!=NULL){


                        ?>
                            <li><a href="">Xin chào {{$name}}</a></li>
                        <?php
                        }else {
                        ?>
                            <li><a href="">Bạn chưa đăng nhập</a></li>

                        <?php
                        }
                        ?>

                        <li><a href="#">Liên hệ</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Main Top -->

<!-- Start Main Top -->
<header class="main-header">
    <!-- Start Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
        <div class="container">
            <!-- Start Header Navigation -->
            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="{{URL::to('/trang-chu')}}"><img src="{{asset('public/frontend/images/logo.png')}}" class="logo" alt=""></a>
            </div>
            <!-- End Header Navigation -->

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbar-menu">
                <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                    <li class="nav-item active"><a class="nav-link" href="{{URL::to('/trang-chu')}}">Trang chủ</a></li>
                    <li class="nav-item"><a class="nav-link" href="{{URL::to('/san-pham')}}">Sản phẩm</a></li>
                    <!-- <li class="nav-item"><a class="nav-link" href="">About Us</a></li> -->

                    <li class="dropdown">
                        <a href="#about" class="nav-link dropdown-toggle " >Thêm</a>
                        <ul class="dropdown-menu">
                            <?php $customer_id = Session::get('customer_id'); $shipping_id = Session::get('shipping_id');
                            if($customer_id==NULL){


                             ?>
                                <li><a href="{{URL::to('/login-checkout')}}">Đăng nhập</a></li>
                                <?php
                            }else {
                                    ?>
                                <li><a href="{{URL::to('/logout-checkout')}}">Đăng Xuất</a></li>
                                <?php
                                }
                            ?>
                            <?php $customer_id = Session::get('customer_id'); $shipping_id = Session::get('shipping_id');
                            if($customer_id!=NULL && $shipping_id==NULL){
                                ?>
                                <li><a href="{{URL::to('/checkout')}}">Thanh toán</a></li>
                                <?php
                            }else if($customer_id!=NULL && $shipping_id!=NULL){
                                ?>
                                <li><a href="{{URL::to('/payment')}}">Thanh toán</a></li>
                                <?php

                            }else{
                                ?>
                                <li><a href="{{URL::to('/login-checkout')}}">Thanh toán</a></li>
                                <?php
                            }
                            ?>

                            <li><a href="">Tài khoản</a></li>
                            <li><a href="{{URL::to('show-cart')}}">Giỏ hàng</a></li>
                            <li><a href="wishlist.html">Danh sách yêu thích</a></li>

                        </ul>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->

            <!-- Start Atribute Navigation -->
            <div class="attr-nav">
                <ul>
                    <li class="search"><a href="#"><b>Tìm kiếm</b></a></li>
                    
                </ul>
            </div>
            <div class="attr-nav">
                <ul>
                    <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                    
                </ul>
            </div>
            <!-- End Atribute Navigation -->
        </div>
        <!-- Start Side Menu -->
        <div class="side">
            {{--<a href="#" class="close-side"><i class="fa fa-times"></i></a>
            <li class="cart-box">
                <ul class="cart-list">
                    <li>
                        <a href="#" class="photo"><img src="{{asset('public/frontend/images/img-pro-01.jpg')}}" class="cart-thumb" alt="" /></a>
                        <h6><a href="#">Delica omtantur </a></h6>
                        <p>1x - <span class="price">$80.00</span></p>
                    </li>
                    <li>
                        <a href="#" class="photo"><img src="{{asset('public/frontend/images/img-pro-02.jpg')}}" class="cart-thumb" alt="" /></a>
                        <h6><a href="#">Omnes ocurreret</a></h6>
                        <p>1x - <span class="price">$60.00</span></p>
                    </li>
                    <li>
                        <a href="#" class="photo"><img src="{{asset('public/frontend/images/img-pro-03.jpg')}}" class="cart-thumb" alt="" /></a>
                        <h6><a href="#">Agam facilisis</a></h6>
                        <p>1x - <span class="price">$40.00</span></p>
                    </li>
                    <li class="total">
                        <a href="{{URL::to('/show-cart')}}" class="btn btn-default hvr-hover btn-cart">Giỏ hàng</a>
                        <span class="float-right"><strong>Total</strong>: $180.00</span>
                    </li>
                </ul>
            </li>--}}
        </div>
        <!-- End Side Menu -->
    </nav>
    <!-- End Navigation -->
</header>
<!-- End Main Top -->

<!-- Start Top Search -->
<form action="{{URL::to('/tim-kiem')}}" method="POST" >
    {{csrf_field()}}
<div class="top-search">
    <div class="container">
        <div class="input-group">
            <button type="submit" class="input-group-addon"><i class="fa fa-search" ></i></button>
                <input type="text" class="form-control" placeholder="Tên sản phẩm hoặc giá tiền" name="keyword_submit">
            <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
        </div>
    </div>
</div  >
</form>
<!-- End Top Search -->

                                                            @yield('content')




<!-- Start Instagram Feed  -->
<div class="instagram-box">
</div>
<!-- End Instagram Feed  -->


<!-- Start Footer  -->
<footer>
    <div class="footer-main">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-widget">
                        <h4 id="about">About IT-store</h4>
                        <p> Với hơn 20 năm trong lĩnh vực kinh doanh phân phối các sản phẩm công nghệ, laptop. Đội ngũ IT-store sẽ làm khách hàng hài lòng
                            bởi các sản phẩm mới phong phú. Dịch vụ CSKH tận tình. Luôn đi trước trong việc giới thiệu tới khách hàng các sản
                            phẩm công nghệ mới. Uy tín và trách nhiệm. Được phục vụ khác hàng là trách nhiệm và nghĩa vụ của chúng tôi
                        </p>
                        <ul>
                            <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-link">
                        <h4>Information</h4>
                        <ul>
                            <li><a href="#"> Laptop</a></li>
                            <li><a href="#"> Máy chơi game</a></li>
                            <li><a href="#"> Tai nghe, bàn phím</a></li>
                            <li><a href="#"> Phần mềm bản quyền</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-link-contact">
                        <h4>Contact Us</h4>
                        <ul>
                            <li>
                                <p><i class="fas fa-map-marker-alt"></i>Địa chỉ: Số 1 Đại Cồ Việt <br>Hai Bà Trưng,<br> Hà Nội </p>
                            </li>
                            <li>
                                <p><i class="fas fa-phone-square"></i>Phone: <a href="tel:+1-888705770">+84-097 271 0002</a></p>
                            </li>
                            <li>
                                <p><i class="fas fa-envelope"></i>Email: <a href="mailto:contactinfo@gmail.com">IT.store@gmail.com</a></p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- End Footer  -->

<!-- Start copyright  -->
<div class="footer-copyright">
    <p class="footer-company">All Rights Reserved. &copy; 2020 <a href="#">IT-store</a>
        <a href="{{'/trang-chu'}}"></a></p>
</div>
<!-- End copyright  -->

<a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

<!-- ALL JS FILES -->
<script src="{{asset('public/frontend/js/jquery-3.2.1.min.js')}}"></script>
<script src="{{asset('public/frontend/js/popper.min.js')}}"></script>
<script src="{{asset('public/frontend/js/bootstrap.min.js')}}}"></script>
<script src="{{asset('public/frontend/js/sweetalert.js')}}"></script>
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
    <{{--script type="text/javascript">
        $(document).ready(function(){
            $('.add_to_cart').click(function(){
                var id = $(this).data('id_product');
                var cart_product_id = $('.cart_product_id_' + id).val();
                var cart_product_name = $('.cart_product_name_' + id).val();
                var cart_product_image = $('.cart_product_image_' + id).val();
                var cart_product_price = $('.cart_product_price_' + id).val();
                var cart_product_qty = $('.cart_product_qty_' + id).val();
                var _token = $('input[name="_token"]').val();
                $.ajax({
                    url: '{{url('/add-cart-ajax')}}',
                    method: 'POST',
                    data:{cart_product_id:cart_product_id,cart_product_name:cart_product_name,cart_product_image:cart_product_image,cart_product_price:cart_product_price,cart_product_qty:cart_product_qty,_token:_token},
                    success:function(){

                        swal({
                                title: "Đã thêm sản phẩm vào giỏ hàng",
                                text: "Bạn có thể mua hàng tiếp hoặc tới giỏ hàng để tiến hành thanh toán",
                                showCancelButton: true,
                                cancelButtonText: "Xem tiếp",
                                confirmButtonClass: "btn-success",
                                confirmButtonText: "Đi đến giỏ hàng",
                                closeOnConfirm: false
                            },
                            function() {
                                window.location.href = "{{url('/show-cart-ajax')}}";
                            });

                    }

                });
            });
        });
    </script>--}}
</body>

</html>
