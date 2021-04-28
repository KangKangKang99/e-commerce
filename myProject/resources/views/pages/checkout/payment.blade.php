@extends('welcome')
@section('content')
    <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Thanh toán</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{URL::to('/trang-chu')}}">Trang chủ</a></li>
                        <li class="breadcrumb-item active">Thanh toán</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start Cart  -->
    <div class="cart-box-main">
        <div class="container">
            <?php $customer_id = Session::get('customer_id');
            if($customer_id==NULL){
            ?>
            <div class="alert alert-warning col-sm-6 col-lg-6 mb-3" role="alert"> <p>Hãy đăng kí để thanh toán giỏ hàng dễ dàng hơn</p></div>
            <?php
            }else {
                ?>
        <?php
            }
            ?>
                <?php
                $data = array();

                ?>
                <div class="row">
                    <div class="col-sm-2 col-lg-2 mb-3"></div>
                    <div class="col-sm-8 col-lg-8 mb-3">
                        <form action="{{URL::to('/order-place')}}" method="POST">
                            {{csrf_field()}}
                        <div class="row">
                            <div class="col-md-12 col-lg-12">
                                <div class="title-left  "> <h3>Hình thức thanh toán</h3> </div>
                                <div class="d-block my-3">
                                    <div class="custom-control custom-radio">
                                        <input id="credit" name="payment_method" type="radio" class="custom-control-input" checked required value="1">
                                        <label class="custom-control-label" for="credit">Thanh toán khi nhận hàng</label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input id="debit" name="payment_method" type="radio" class="custom-control-input" required value="2" disabled>
                                        <label class="custom-control-label" for="debit">Chuyển khoản</label>
                                    </div>
                                </div>
                                <hr class="mb-1">
                            </div>
                            <div class="col-md-12 col-lg-12">
                                <div class="shipping-method-box">
                                    <div class="title-left">
                                        <h3>Phương thức vận chuyển</h3>
                                    </div>
                                    <div class="mb-4">
                                        @php $fee_ship=30000;
                                        $sub_total = (float) str_replace(',', '', Cart::subtotal());

                                        if($sub_total>3000000) $fee_ship=0;
                                        $total=$sub_total+$fee_ship;
                                        @endphp
                                        <div class="custom-control custom-radio">
                                            <input value="1" id="shippingOption1" name="shipping_option" class="custom-control-input" checked="checked" type="radio">
                                            <label class="custom-control-label" for="shippingOption1">Kĩ thuật viên cửa hàng</label> <span class="float-right font-weight-bold">{{number_format($fee_ship).' VNĐ'}}</span> </div>
                                        <div class="ml-4 mb-2 small">(Hỗ trợ kĩ thuật)</div>
                                        <div class="custom-control custom-radio">
                                            <input value="2" id="shippingOption2" name="shipping_option" class="custom-control-input" type="radio">
                                            <label class="custom-control-label" for="shippingOption2">Đối tác giao hàng</label> <span class="float-right font-weight-bold">{{number_format($fee_ship).' VNĐ'}}</span> </div>
                                        <div class="ml-4 mb-2 small">(2 - 4 ngày)</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 col-lg-12">
                                <div class="odr-box">
                                    <div class="title-left">
                                        <h3>Giỏ hàng</h3>
                                    </div>
                                    <?php
                                    $content = Cart::content();
                                    ?>
                                    <div class="rounded p-2 bg-light">
                                        @foreach($content as $v_content)
                                        <div class="media mb-2 border-bottom">
                                            <div class="media-body"> <a > {{$v_content->name}}</a>
                                                <div class="small text-muted">Price: {{number_format($v_content->price).' VNĐ'}} <span class="mx-2">|</span> Qty: {{$v_content->qty}} <span class="mx-2">|</span> Subtotal: {{number_format($v_content->qty*$v_content->price).' VNĐ'}}</div>
                                            </div>
                                        </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 col-lg-12">
                                <div class="order-box">
                                    <div class="title-left">
                                        <h3>Your order</h3>
                                    </div>
                                    <div class="d-flex">
                                        <div class="font-weight-bold">Loại </div>
                                        <div class="ml-auto font-weight-bold">Thành tiền</div>
                                    </div>
                                    <hr class="my-1">
                                    <div class="d-flex">
                                        <h4>Tổng giá trị sản phẩm</h4>
                                        <div class="ml-auto font-weight-bold"> {{Cart::subtotal().' VNĐ'}} </div>
                                    </div>
                                    <hr class="my-1">
                                    <div class="d-flex">
                                        <?php $fee_ship=30000;
                                        $sub_total = (float) str_replace(',', '', Cart::subtotal());
                                        if($sub_total>3000000) $fee_ship=0;
                                        $total=$sub_total+$fee_ship;

                                        ?>
                                        <h4>Phí vận chuyển</h4>
                                        <div class="ml-auto font-weight-bold"> {{number_format($fee_ship).' VNĐ'}} </div>
                                    </div>
                                    <hr>
                                    <div class="d-flex gr-total">
                                        <h5>Tổng tiền thanh toán</h5>
                                        <div class="ml-auto h5"> {{number_format($total). ' VNĐ'}} </div>
                                    </div>
                                    <hr> </div>
                            </div>
                            <div class="col-12 d-flex shopping-box"> <button type="submit" class="ml-auto btn hvr-hover">Đặt hàng</button> </div>
                        </div>
                        </form>
                    </div>
                    <div class="col-sm-2 col-lg-2 mb-3"></div>
                </div>
        </div>
    </div>
    <!-- End Cart -->
@endsection
