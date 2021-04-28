@extends('welcome')
@section('content')


    <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Giỏ hàng</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{URL::to('trang-chu')}}">Trang chủ</a></li>
                        <li class="breadcrumb-item active">Giỏ hàng</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

<!-- Start Cart  -->
    <?php
        $content = Cart::content();
    ?>
<div class="cart-box-main">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="table-main table-responsive">
                    <table class="table">
                        <thead>
                        <tr>
                            <th></th>
                            <th>Sản phẩm</th>
                            <th>Giá</th>
                            <th >Số lượng</th>
                            <th></th>
                            <th>Tổng giá</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($content as $v_content)
                            <tr>
                                <td class="thumbnail-img">
                                    <a href="#">
                                        <img class="img-fluid" src="{{URL::to('public/uploads/product/'.$v_content->options->image)}}" alt="" />
                                    </a>
                                </td>
                                <td class="name-pr">
                                    <a href="#">
                                        {{$v_content->name}}
                                    </a>
                                </td>
                                <td class="price-pr">
                                    <p>{{number_format($v_content->price).' VNĐ'}}</p>
                                </td>
                                <form action="{{URL::to('/update-cart-quantity')}}" method="POST">
                                    {{csrf_field()}}
                                <td>
                                    {{--<form action="{{URL::to('/update-cart-quantity')}}" method="POST">--}}
                                    <div class="quantity-box">
                                        <input type="number"  value="{{$v_content->qty}}" min="0" step="1" name="cart_quantity" >
                                    </div>
                                    {{--</form>--}}
                                </td>
                                <td>
                                        <input type="hidden" value="{{$v_content->rowId}}" name="rowId_cart">
                                    <div class="update-box" style="">
                                        <input value="Cập nhật" type="submit" name="update_qty">
                                    </div>
                                </td>
                                </form>
                                <td class="total-pr">

                                        <p>{{number_format($v_content->qty*$v_content->price).' VNĐ'}}</p>
                                </td>
                                <td class="remove-pr">
                                    <a href="{{URL::to('/detele-to-cart/'.$v_content->rowId)}}">
                                        <i class="fas fa-times"></i>
                                    </a>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="row my-5">
            <div class="col-lg-6 col-sm-6">
                <div class="coupon-box">
                    <div class="input-group input-group-sm">
                        <input class="form-control" placeholder="Enter your coupon code" aria-label="Coupon code" type="text">
                        <div class="input-group-append">
                            <button class="btn btn-theme" type="button">Apply Coupon</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-sm-6">
                <div class="update-box">
                    <a href="{{URL::to('/san-pham')}}">
                    <input value="Tiếp tục mua sắm" type="submit" >
                    </a>
                </div>
            </div>
        </div>

        <div class="row my-5">
            <div class="col-lg-8 col-sm-12"></div>
            <div class="col-lg-4 col-sm-12">
                <div class="order-box">
                    <h3>Order summary</h3>
                    <div class="d-flex">
                        <h4>Sub Total</h4>
                        <div class="ml-auto font-weight-bold"> {{Cart::subtotal().' VNĐ'}} </div>
                    </div>
                    <hr class="my-1">
                    <div class="d-flex">
                        <h4>Mã giảm giá</h4>
                        <div class="ml-auto font-weight-bold"> chưa có </div>
                    </div>
                    <div class="d-flex">
                        <h4>Phí vận chuyển</h4>
                        @php $fee_ship=30000;
                            $sub_total = (float) str_replace(',', '', Cart::subtotal());

                            if($sub_total>3000000) $fee_ship=0;
                            $total=$sub_total+$fee_ship;
                        @endphp
                        <div class="ml-auto font-weight-bold"> {{number_format($fee_ship).' VNĐ'}} </div>
                    </div>
                    <hr>
                    <div class="d-flex gr-total">
                        <h5>Thành tiền</h5>
                        <div class="ml-auto h5">{{number_format($total). ' VNĐ'}}</div>
                    </div>
                    <hr> </div>
            </div>
            <?php $customer_id = Session::get('customer_id');
            if($customer_id==NULL){


            ?>
            <div class="col-12 d-flex shopping-box"><a href="{{URL::to('/login-checkout')}}" class="ml-auto btn hvr-hover">Thanh toán</a> </div>
            <?php
            }else {
            ?>
            <div class="col-12 d-flex shopping-box"><a href="{{URL::to('checkout')}}" class="ml-auto btn hvr-hover">Thanh toán</a> </div>
            <?php
            }
            ?>

        </div>

    </div>
</div>
<!-- End Cart -->
@endsection
