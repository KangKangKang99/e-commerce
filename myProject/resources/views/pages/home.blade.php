@extends('welcome')
@section('content')
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

    <!-- Start Categories  -->
    <div class="categories-shop">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="public/frontend/images/laptop-img.jpg" alt="" />
                        <a class="btn hvr-hover" href="/danh-muc-san-pham/1">Laptop</a>
                    </div>
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="public/frontend/images/app-img.jpg" alt="" />
                        <a class="btn hvr-hover" href="/danh-muc-san-pham/2">Phần mềm - Game</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="public/frontend/images/PS-img.jpg" alt="" />
                        <a class="btn hvr-hover" href="/danh-muc-san-pham/3">Play Station</a>
                    </div>
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="public/frontend/images/Gear-img.jpg" alt="" />
                        <a class="btn hvr-hover" href="/danh-muc-san-pham/4">Tai nghe - Chuột - Bàn phím</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="public/frontend/images/Xbox-img.jpg" alt="" />
                        <a class="btn hvr-hover" href="/danh-muc-san-pham/5">Xbox series</a>
                    </div>
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="public/frontend/images/linhkien-img.jpg" alt="" />
                        <a class="btn hvr-hover" href="/danh-muc-san-pham/6">Linh kiện máy tính</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Categories -->

    <!-- Start Products  -->
    <div class="products-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="title-all text-center">
                        <h1>Sản phẩm phổ biến</h1>

                    </div>
                </div>
            </div>

            <div class="row special-list">
               @foreach($all_product as $key =>$product)
                    <div class="col-lg-3 col-md-6 special-grid best-seller">
                        <div class="products-single fix">
                            <div class="box-img-hover">
                                <div class="type-lb">
                                    <p class="sale">Hot</p>
                                </div>
                                <img src="{{URL::to('public/uploads/product/'.$product->product_img)}}" class="img-fluid" alt="Image">
                                <div class="mask-icon">
                                    <ul>
                                        <li><a href="{{URL::to('chi-tiet-san-pham/'.$product->product_id)}}" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                    </ul>
                                    <a class="cart" href="{{URL::to('chi-tiet-san-pham/'.$product->product_id)}}">Chi tiết sản phẩm</a>
                                </div>
                            </div>
                            <div class="why-text">
                                <h4>{{$product->product_name}}</h4>
                                <h5> {{number_format($product->product_price).' VNĐ'}}</h5>
                            </div>
                        </div>
                    </div>
                   @endforeach
            </div>
        </div>
    </div>
    <!-- End Products  -->
    <!-- End Blog  -->
@endsection
