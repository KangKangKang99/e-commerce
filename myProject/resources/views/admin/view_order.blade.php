@extends('admin_layout')
@section('admin_content')
    <div class="table-agile-info">

        <div class="panel panel-default">
            <div class="panel-heading">
                Thông tin đăng nhập
            </div>

            <div class="table-responsive">
                <?php
                $message = Session::get('message');
                if($message){
                    echo '<span class="text-alert">'.$message.'</span>';
                    Session::put('message',null);
                }
                ?>
                <table class="table table-striped b-t b-light">
                    <thead>
                    <tr>

                        <th>Tên khách hàng</th>
                        <th>Số điện thoại</th>
                        <th>Email</th>
                        <th>Địa chỉ</th>
                        <th style="width:30px;"></th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr>
                        <td>{{$customer->customer_name}}</td>
                        <td>{{$customer->customer_phone}}</td>
                        <td>{{$customer->customer_email}}</td>
                        <td>{{$customer->customer_address}}</td>
                    </tr>

                    </tbody>
                </table>

            </div>

        </div>
    </div>
    <br>
    <div class="table-agile-info">

        <div class="panel panel-default">
            <div class="panel-heading">
                Thông tin vận chuyển hàng
            </div>


            <div class="table-responsive">
                <?php
                $message = Session::get('message');
                if($message){
                    echo '<span class="text-alert">'.$message.'</span>';
                    Session::put('message',null);
                }
                ?>
                <table class="table table-striped b-t b-light">
                    <thead>
                    <tr>

                        <th>Tên người nhận hàng</th>
                        <th>Địa chỉ</th>
                        <th>Số điện thoại</th>
                        <th>Email</th>
                        <th>Ghi chú</th>
                        <th>Nhân viên vận chuyển</th>
                        <th>Hình thức thanh toán</th>

                        <th style="width:30px;"></th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr>

                        <td>{{$shipping->shipping_name}}</td>
                        <td>{{$shipping->shipping_address}}</td>
                        <td>{{$shipping->shipping_phone}}</td>
                        <td>{{$shipping->shipping_email}}</td>
                        <td>{{$shipping->shipping_notes}}</td>
                        <td>@if($shipping->shipper_id==1) Kĩ thuật viên @else Đối tác giao hàng @endif</td>
                        <td>@if($shipping->shipping_method==2) Chuyển khoản @else Tiền mặt @endif</td>


                    </tr>

                    </tbody>
                </table>

            </div>

        </div>
    </div>
    <br> <br>
   {{-- <div class="table-agile-info">

        <div class="panel panel-default">
            <div class="panel-heading">
                Thông tin vận chuyển
            </div>


            <div class="table-responsive">

                --}}{{--<table class="table table-striped b-t b-light">
                    <thead>
                    <tr>

                        <th>Nhân viên vận chuyển</th>
                        <th>Địa chỉ</th>
                        <th>Số điện thoại</th>
                        <th>Email</th>
                        <th>Ghi chú</th>


                        <th style="width:30px;"></th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr>

                        @if($shipping->shipper_id==1)

                            <td>{{$shipper->shipping_name}}</td>
                            <td>{{$shipper->shipping_address}}</td>
                            <td>{{$shipper->shipping_phone}}</td>
                            <td>{{$shipper->shipping_email}}</td>
                            <td>{{$shipper->shipping_notes}}</td>
                            @else


                    </tr>

                    </tbody>
                </table>--}}{{--

            </div>

        </div>
    </div>--}}
    <br><br>

    <div class="table-agile-info">

        <div class="panel panel-default">
            <div class="panel-heading">
                Liệt kê chi tiết đơn hàng
            </div>

            <div class="table-responsive">
                <?php
                $message = Session::get('message');
                if($message){
                    echo '<span class="text-alert">'.$message.'</span>';
                    Session::put('message',null);
                }
                ?>
                <table class="table table-striped b-t b-light">
                    <thead>
                    <tr>
                        <th>
                            STT
                        </th>
                        <th>Tên sản phẩm</th>
                        <th>Số lượng</th>
                        <th>Giá sản phẩm</th>
                        <th>Tổng tiền</th>

                        <th style="width:30px;"></th>
                    </tr>
                    </thead>
                    <tbody>
                    @php
                        $i = 0;
                        $total = 0;
                    @endphp
                    @foreach($order_details as $key => $details)

                        @php
                            $i++;
                            $subtotal = $details->product_price*$details->product_sales_quantity;
                            $total+=$subtotal;
                        @endphp
                        <tr>

                            <td><i>{{$i}}</i></td>
                            <td>{{$details->product_name}}</td>
                            <td>{{$details->product_sales_quantity}}</td>
                            <td>{{number_format($details->product_price ,0,',','.')}}đ</td>
                            <td>{{number_format($subtotal ,0,',','.')}}đ</td>
                        </tr>
                    @endforeach
                    <?php $ship= 0 ;
                    if($total<3000000)  $ship=30000;

                    ?>
                    <tr>
                        <td colspan="2" style="font-size: 20px; font-weight: bolder">
                            <p></p>
                            <span style="color: red">Phí ship :</span>  {{number_format($ship).' VNĐ'}}
                            </br>
                            <span style="color: red">Thanh toán :</span> {{number_format($total +$ship).' VNĐ'}}
                        </td>
                    </tr>
                    </tbody>
                </table>
                {{--<a target="_blank" href="{{url('/print-order/'.$details->order_id)}}">In đơn hàng</a>--}}
            </div>

        </div>
    </div>
@endsection
