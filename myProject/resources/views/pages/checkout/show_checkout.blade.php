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
            <form action="{{URL::to('save-checkout-customer')}}" method="POST">
                {{csrf_field()}}
            <div class="row">
                <div class="col-sm-4 col-lg-2 mb-3"></div>
                <div class="col-sm-8 col-lg-8 mb-3">

                    <div class="checkout-address">
                        <div class="title-left">
                            <h3>Thông tin gửi hàng</h3>
                        </div>
                        {{--<form class="needs-validation" novalidate>--}}
                            <div class="row">
                                <div class="col-md-12 mb-3">
                                    <label for="firstName">Họ tên *</label>
                                    <input name="shipping_name" type="text" class="form-control" id="firstName" placeholder="" value="" required>
                                    <div class="invalid-feedback"> Valid full name is required. </div>
                                </div>
                                <div class="col-md-12 mb-3">
                                    <label for="lastName">Số điện thoại *</label>
                                    <input name="shipping_phone" type="text" class="form-control" id="lastName" placeholder="" value="" required onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                    <div class="invalid-feedback"> Valid phone is required. </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="email">Email  *</label>
                                <input type="email" class="form-control" id="email" placeholder="" name="shipping_mail">
                                <div class="invalid-feedback"> Please enter a valid email address for shipping updates. </div>
                            </div>
                          <!--   <div class="row">
                              <div class="col-md-4 mb-3">
                                  <label for="country">Tỉnh, thành phố *</label>
                                  <select class="wide w-100" id="country">
                                      <option value="Choose..." data-display="Select">-Chọn tỉnh thành phố-</option>
                                      <option value="United States">United States</option>
                                  </select>
                                  <div class="invalid-feedback"> Please select a valid province. </div>
                              </div>
                              <div class="col-md-4 mb-3">
                                  <label for="state">Quận, huyện *</label>
                                  <select class="wide w-100" id="state">
                                      <option data-display="Select">-Chọn quận huyện-</option>
                                      <option>California</option>
                                  </select>
                                  <div class="invalid-feedback"> Please provide a valid district. </div>
                              </div>
                              <div class="col-md-4 mb-3">
                                  <label for="state">Xã, phường *</label>
                                  <select class="wide w-100" id="state">
                                      <option data-display="Select">-Chọn xã phường-</option>
                                      <option>California</option>
                                  </select>
                                  <div class="invalid-feedback"> Please provide a valid village. </div>
                              </div>
                              {{--<div class="col-md-3 mb-3">
                                  <label for="zip">Zip *</label>
                                  <input type="text" class="form-control" id="zip" placeholder="" required>
                                  <div class="invalid-feedback"> Zip code required. </div>
                              </div>--}} -->
                            </div>
                            <div class="mb-3" >
                                <label for="address">Địa chỉ nhận hàng *</label>
                                <input name="shipping_address" type="text" class="form-control" id="address" placeholder="" required>
                                <div class="invalid-feedback"> Please enter your shipping address. </div>
                            </div>
                            <div class="col-md-4 mb-3"> </div>
                            <textarea class="col-md-12" name="shipping_notes" class="shipping_notes" placeholder="Ghi chú cho đơn hàng" rows="5" class="row" ></textarea>
                            <hr class="mb-4">
                           {{-- <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="same-address">
                                <label class="custom-control-label" for="same-address">Shipping address is the same as my billing address</label>
                            </div>--}}
                    </div>
                    <div class="col-8 d-flex shopping-box"> <button type="submit" class="ml-auto btn hvr-hover">Lưu địa chỉ nhận hàng</button> </div>
                </div>
                <div class="col-sm-4 col-lg-2 mb-3"></div>
            </div>
            </form>
        </div>
    </div>
    <!-- End Cart -->
@endsection
