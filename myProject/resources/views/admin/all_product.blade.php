@extends('admin_layout')
@section('admin_content')
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-table"></i> LIST PRODUCT</h3>
            <ol class="breadcrumb">
                <li><i class="icon_gift"></i><a href="#">PRODUCT</a></li>
                <li><i class="fa fa-table"></i>List</li>
            </ol>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <?php
            $message =Session::get('message');
            if($message){
                echo '<span class="text-alert">'.$message.'</span>';
                Session::put('message',null);
            }
            ?>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">
                    <h3>LIST PRODUCT</h3>
                </header>

                <table class="table table-striped table-advance table-hover">
                    <tbody>
                    <tr>
                        <th><i class="fa fa-list"></i> Name product</th>
                        <th><i class="">Price</i></th>
                        <th><i class=""></i> Thumbnails</th>
                        <th><i class=""></i> Image 1</th>
                        <th><i class=""></i> Image 2</th>
                        <th><i class=""></i> Image 3</th>
                        <th><i>Category</i></th>
                        <th><i>Brand</i></th>
                        <th><i class="fa fa-toggle-on"></i> Enable</th>
                        <th><i class="icon_cogs"></i> Action</th>

                    @foreach($all_product as $key =>$pro)
                        <tr>
                            <td>{{$pro->product_name}}</td>
                            <td>{{$pro->product_price}}</td>
                            <td><img src="public/uploads/product/{{$pro->product_img}}" height="50" width="50"></td>
                            <td><img src="public/uploads/product/details_product/{{$pro->product_img1}}" height="50" width="50"></td>
                            <td><img src="public/uploads/product/details_product/{{$pro->product_img2}}" height="50" width="50"></td>
                            <td><img src="public/uploads/product/details_product/{{$pro->product_img3}}" height="50" width="50"></td>
                            <td>{{$pro->category_name}}</td>
                            <td>{{$pro->brand_name}}</td>
                            <td>
                                <?php
                                if($pro->product_status==0){

                                ?>
                                <a href="{{URL::to('/unactive-product/'.$pro->product_id)}}"><span class="fa-status-styling fa fa-times-circle"> </span> </a>
                                <?php
                                }
                                else{
                                ?>
                                <a href="{{URL::to('/active-product/'.$pro->product_id)}}"><span class="fa-status-styling fa fa-check-circle"> </span> </a>
                                <?php
                                }
                                ?>
                            </td>
                            <td>
                                <div class="btn-group">
                                    <a class="btn btn-primary" href="{{URL::to('/edit-product/'.$pro->product_id)}}"><i class="fa fa-pencil-square-o"></i></a>
                                    <a onclick="return confirm('Are you sure?')" class="btn btn-danger" href="{{URL::to('/delete-product/'.$pro->product_id)}}"><i class="icon_close_alt2"></i></a>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
                <div class="container ">
                    <div class="row">
                        <div class="col-lg-4"></div>
                        <div class="col-lg-4">{!!$all_product->links()!!}</div>
                        <div class="col-lg-4"></div></div>


                </div>
            </section>
        </div>
    </div>
@endsection
