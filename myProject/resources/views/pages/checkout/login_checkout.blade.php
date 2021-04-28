@extends('welcome')
@section('content')

<!-- Start All Title Box -->
<div class="all-title-box">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>Đăng nhập</h2>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{URL::to('/trang-chu')}}">Trang chủ</a></li>
                    <li class="breadcrumb-item active">Đăng nhập</li>
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
        <div class="alert alert-warning col-sm-6 col-lg-6 mb-3" role="alert"> <p>Bạn cần đăng nhập hoặc đăng kí để thanh toán giỏ hàng</p></div>
        <?php
        }else {
            ?>
        <?php
        }
        ?>
        <div class="row new-account-login">
            <div class="col-sm-5 col-lg-5 mb-2">
                <div class="title-left">
                    <h3>Đăng nhập tài khoản</h3>
                </div>
                <form class="mt-3 review-form-box" id="formLogin" action="{{URL::to('/login-customer')}}" method="POST">
                    {{csrf_field()}}
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="InputEmail" class="mb-0">Tên tài khoản</label>
                            <input type="email" class="form-control" id="InputEmail" placeholder="Enter Email" name="email_account"> </div>
                        <div class="form-group col-md-6">
                            <label for="InputPassword" class="mb-0">Mật khẩu</label>
                            <input type="password" class="form-control" id="InputPassword" placeholder="Password" name="password_account"> </div>
                        <div class="invalid-feedback"> Mật khẩu trống </div>
                        <div class="form-group col-md-6 " >
                            <label for="InputEmail1" class="mb-0" ></label>
                            <input class="form-control" id="InputEmail1" style="border: 0px" > </div>
                        <div class="form-group col-md-6 ">
                            <label for="InputPassword1" class="mb-0"></label>
                            <input class="form-control" id="InputPassword1" style="border: 0px"  > </div>
                        <div class="form-group col-md-6 ">
                            <label for="InputPassword1" class="mb-0"></label>
                            <input  class="form-control" id="InputPassword1" style="border: 0px"  > </div>
                    </div>
                    <button type="submit" class="btn hvr-hover">Đăng nhập</button>
                </form>
            </div>
            <div class="col-sm-1 col-lg-1 mb-0" ><h2 style="font-weight: bolder ">Hoặc</h2></div>
            <div class="col-sm-6 col-lg-6 mb-3">
                <div class="title-left">
                    <h3>Đăng kí tài khoản</h3>
                </div>
                <form class="mt-3  review-form-box" id="formRegister" action="{{URL::to('/add-customer')}} " method="POST">
                    {{csrf_field()}}
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="InputName" class="mb-0">Tên người dùng</label>
                            <input type="text" class="form-control" id="InputName" placeholder="Name" name="customer_name"> </div>
                        <div class="form-group col-md-6">
                            <label for="InputLastname" class="mb-0">Số điện thoại</label>
                            <input type="text" class="form-control" id="InputLastname" placeholder="09870xx" name="customer_phone"onkeypress='return event.charCode >= 48 && event.charCode <= 57'> </div>
                        <div class="form-group col-md-6">
                            <label for="InputEmail1" class="mb-0">Địa chỉ Email</label>
                            <input type="email" class="form-control" id="InputEmail1" placeholder="Enter Email" name="customer_email"> </div>
                        <div class="form-group col-md-6 ">
                            <label for="InputPassword1" class="mb-0">Mật khẩu</label>
                            <input type="password" class="form-control" id="InputPassword1" placeholder="Password" name="customer_password"> </div>
                        <div class="form-group col-md-12 ">
                            <label  class="mb-0">Địa chỉ</label>
                            <input type="text" class="form-control" placeholder="   Số nhà - ngõ - đường - quận - huyện - TP" name="customer_address"> </div>
                    </div>
                    <button type="submit" class="btn hvr-hover">Đăng ký </button>
                </form>
            </div>
        </div>


    </div>
</div>
<!-- End Cart -->
@endsection
