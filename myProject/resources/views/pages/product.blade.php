@extends('welcome')
@section('content')
    <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Sản phẩm</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{URL::to('trang-chu')}}">Trang chủ</a></li>
                        <li class="breadcrumb-item active">Sản phẩm</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start Shop Page  -->
    <div class="shop-box-inner">
        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-sm-12 col-xs-12 sidebar-shop-left">
                    <div class="product-categori">
                        <div class="search-product">


                                <input class="form-control" placeholder="Tìm kiếm..." type="text">
                                <button type="submit"> <i class="fa fa-search"></i> </button>

                        </div>
                        <div class="filter-sidebar-left">
                            <div class="title-left">
                                <h3>Danh mục sản phẩm</h3>
                            </div>
                            <div class="list-group list-group-collapse list-group-sm list-group-tree" id="list-group-men" data-children=".sub-men">
                                {{--<div class="list-group-collapse sub-men">
                                    <a class="list-group-item list-group-item-action" href="#sub-men2" data-toggle="collapse" aria-expanded="false" aria-controls="sub-men2">Footwear
                                        <small class="text-muted">(50)</small>
                                    </a>
                                    <div class="collapse" id="sub-men2" data-parent="#list-group-men">
                                        <div class="list-group">
                                            <a href="#" class="list-group-item list-group-item-action">Sports Shoes <small class="text-muted">(10)</small></a>
                                            <a href="#" class="list-group-item list-group-item-action">Sneakers <small class="text-muted">(20)</small></a>
                                            <a href="#" class="list-group-item list-group-item-action">Formal Shoes <small class="text-muted">(20)</small></a>
                                        </div>
                                    </div>
                                </div>--}}
                                @foreach($category as $key => $cate)
                                <a href="{{URL::to('danh-muc-san-pham/'.$cate->category_id)}}" class="list-group-item list-group-item-action"> {{$cate->category_name}}  <small class="text-muted"> </small></a>

                                @endforeach
                            </div>
                        </div>
                        <div class="filter-price-left">
                            <div class="title-left">
                                <h3>Giá</h3>
                            </div>
                            <div class="price-box-slider">
                                <div id="slider-range"></div>
                                <p>
                                    <input type="text" id="amount" readonly style="border:0; color:#fbb714; font-weight:bold;">
                                    <button class="btn hvr-hover" type="submit">Filter</button>
                                </p>
                            </div>
                        </div>
                        <div class="filter-brand-left">
                            <div class="title-left">
                                <h3>Thương hiệu</h3>
                            </div>
                            <div class="list-group list-group-collapse list-group-sm list-group-tree" id="list-group-men" data-children=".sub-men">
                                {{--<div class="list-group-collapse sub-men">
                                    <a class="list-group-item list-group-item-action" href="#sub-men2" data-toggle="collapse" aria-expanded="false" aria-controls="sub-men2">Footwear
                                        <small class="text-muted">(50)</small>
                                    </a>
                                    <div class="collapse" id="sub-men2" data-parent="#list-group-men">
                                        <div class="list-group">
                                            <a href="#" class="list-group-item list-group-item-action">Sports Shoes <small class="text-muted">(10)</small></a>
                                            <a href="#" class="list-group-item list-group-item-action">Sneakers <small class="text-muted">(20)</small></a>
                                            <a href="#" class="list-group-item list-group-item-action">Formal Shoes <small class="text-muted">(20)</small></a>
                                        </div>
                                    </div>
                                </div>--}}
                                @foreach($brand as $key => $brand)
                                    <a href="{{URL::to('thuong-hieu-san-pham/'.$brand->brand_id)}}" class="list-group-item list-group-item-action"> {{$brand->brand_name}}  <small class="text-muted"> </small></a>
                                @endforeach
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-xl-9 col-lg-9 col-sm-12 col-xs-12 shop-content-right">
                    <div class="right-product-box">
                        <div class="product-item-filter row">
                            <div class="col-12 col-sm-8 text-center text-sm-left">
                                <div class="toolbar-sorter-right">
                                    <span>Sort by </span>
                                    <select id="basic" class="selectpicker show-tick form-control" data-placeholder="$ USD">
                                        <option data-display="Select">Mới Nhất</option>
                                        <option value="1">Bán Chạy</option>
                                        <option value="2">Giá Cao → Giá Thấp</option>
                                        <option value="3">Giá Thấp → Giá Cao</option>
                                    </select>
                                </div>
                                <p>Showing all 4 results</p>
                            </div>
                            <div class="col-12 col-sm-4 text-center text-sm-right">
                                <ul class="nav nav-tabs ml-auto">
                                    <li>
                                        <a class="nav-link active" href="#grid-view" data-toggle="tab"> <i class="fa fa-th"></i> </a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="row product-categorie-box">
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane fade show active" id="grid-view">
                                    <div class="row">
                                        @foreach($all_product as $key => $product)
                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4" >
                                            <div class="products-single fix">
                                                <div class="box-img-hover">
                                                    <div class="type-lb">
                                                       {{-- <p class="sale"></p>--}}
                                                    </div>
                                                    <form>
                                                    <img src="{{URL::to('public/uploads/product/'.$product->product_img)}}" class="img-fluid" alt="Image">
                                                    <div class="mask-icon">
                                                        <ul>
                                                            <li><a href="{{URL::to('chi-tiet-san-pham/'.$product->product_id)}}" data-toggle="tooltip" data-placement="right" title="Chi tiết"><i class="fas fa-eye"></i></a></li>
                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="So sánh"><i class="fas fa-sync-alt"></i></a></li>
                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Yêu thích"><i class="far fa-heart"></i></a></li>
                                                        </ul>
                                                        <a class="cart glyphicon-eye-open " href="{{URL::to('chi-tiet-san-pham/'.$product->product_id)}}" >Chi tiết sản phẩm</a>
                                                    </div>
                                                    </form>
                                                </div>
                                                <div class="why-text">
                                                    <h4>{{$product->product_name}}</h4>
                                                    <h5>{{number_format($product->product_price).' VNĐ'}}</h5>
                                                </div>
                                            </div>
                                        </div>
                                        @endforeach
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="shop-box-inner" >
        {{--<style>
            .pagination {
            }

            .pagination a {
                color: black;
                float: left;
                padding: 8px 16px;
                text-decoration: none;
                transition: background-color .3s;
            }

            .pagination a.active {
                background-color: #4CAF50;
                border-radius: 5px;
                color: white;
            }

            .pagination a:hover:not(.active) {background-color: #ddd;}
        </style>--}}
        <div class="container ">
            <div class="row">
                <div class="col-lg-4"></div>
                <div class="col-lg-4">{!!$all_product->links()!!}</div>
                <div class="col-lg-4"></div></div>


        </div>
    </div>

    <!-- End Shop Page -->
@endsection
