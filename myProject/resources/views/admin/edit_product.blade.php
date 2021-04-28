@extends('admin_layout')
@section('admin_content')
    <!-- Basic Forms -->
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i> EDIT PRODUCT</h3>
            <ol class="breadcrumb">
                <li><i class="icon_gift"></i><a href="#">Product</a></li>
                <li><i class="fa fa-pencil-square-o"></i>Edit product</li>
            </ol>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-8">
            <section class="panel">
                <header class="panel-heading">
                    <h3>EDIT PRODUCT</h3>
                </header>
                <div class="panel-body">
                    @foreach($edit_product as $key=>$pro)

                        <form role="form" action="{{URL::to('/update-product/'.$pro->product_id)}}" method="post" enctype="multipart/form-data">
                            {{csrf_field()}}
                            <div class="form-group">
                                <?php
                                $message =Session::get('message');
                                if($message){
                                    echo '<span class="text-alert">'.$message.'</span>';
                                    Session::put('message',null);
                                }
                                ?>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Name </label>
                                <input type="text" name="product_name" class="form-control" id="exampleInputEmail1" value="{{$pro->product_name}}">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Price </label>
                                <input type="text" name="product_price" class="form-control" id="exampleInputEmail1" value="{{$pro->product_price}}">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Thumbnails </label>
                                <input type="file" name="product_image" class="form-control" id="exampleInputEmail1" >
                                <img src="{{URL::to('public/uploads/product/'.$pro->product_img)}}" height="80" width="80">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Image 1 </label>
                                <input type="file" name="product_image1" class="form-control" id="exampleInputEmail1" >
                                <img src="{{URL::to('public/uploads/product/details_product/'.$pro->product_img1)}}" height="80" width="80">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Image 2 </label>
                                <input type="file" name="product_image2" class="form-control" id="exampleInputEmail1" >
                                <img src="{{URL::to('public/uploads/product/details_product/'.$pro->product_img2)}}" height="80" width="80">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Image 3 </label>
                                <input type="file" name="product_image3" class="form-control" id="exampleInputEmail1" >
                                <img src="{{URL::to('public/uploads/product/details_product/'.$pro->product_img3)}}" height="80" width="80">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputPassword1">Mô tả</label>
                                <textarea style="resize: none" rows="3" name="product_desc" class="form-control" >
                                    {{$pro->product_desc}}
                            </textarea>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Giới thiệu</label>
                                <textarea style="resize: none" rows="3" name="product_detail_desc" class="form-control" >
                                    {{$pro->product_detail_desc}}
                            </textarea>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Chi tiết sản phẩm</label>
                                <textarea style="resize: none" rows="3" name="product_content" class="form-control" id="exampleInputPassword1" >
                                    {{$pro->product_content}}
                        </textarea>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Category product</label>
                                <select class="form-control input-sm m-bot15" name="product_category">
                                    @foreach($category_product as $key =>$cate)
                                        @if($cate->category_id==$pro->category_id)
                                            <option selected value="{{$cate->category_id}}">{{$cate->category_name}} </option>
                                        @else
                                            <option  value="{{$cate->category_id}}">{{$cate->category_name}} </option>

                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Brand product</label>
                                <select class="form-control input-sm m-bot15" name="product_brand">
                                    @foreach($brand_product as $key =>$brand)
                                        @if($brand->brand_id==$pro->brand_id)
                                            <option selected value="{{$brand->brand_id}}"> {{$brand->brand_name}}</option>

                                        @else
                                            <option value="{{$brand->brand_id}}"> {{$brand->brand_name}}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputPassword1">Status</label>
                                <select class="form-control input-sm m-bot15" name="product_status">
                                    @foreach($edit_product as $key =>$status)
                                        @if($status->product_status==1){
                                        <option selected value="1">Enable</option>
                                        <option value="0">Disable</option>
                                        }
                                    @else{
                                        <option selected value="0">Disable</option>
                                        <option  value="1">Enable</option>}
                                    @endif
                                    @endforeach
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary">Update</button>
                        </form>
                    @endforeach
                </div>
            </section>
        </div>
        <div class="col-lg-2"></div>

    </div>
@endsection
