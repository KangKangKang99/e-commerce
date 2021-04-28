@extends('admin_layout')
@section('admin_content')
    <!-- Basic Forms -->
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i> EDIT BRAND</h3>
            <ol class="breadcrumb">
                <li><i class="icon_genius"></i><a href="#">Brand</a></li>
                <li><i class="fa fa-pencil-square-o"></i>Edit brand</li>
            </ol>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-8">
            <section class="panel">
                <header class="panel-heading">
                    <h3>EDIT BRAND PRODUCT</h3>
                </header>
                <div class="panel-body">
                    @foreach($edit_brand_product as $key=>$edit_value)
                        <form role="form" action="{{URL::to('/update-brand-product/'.$edit_value->brand_id)}}" method="post">
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
                                <label for="exampleInputEmail1">Name brand</label>
                                <input type="text" name="brand_product_name" class="form-control" id="exampleInputEmail1" placeholder="brand's name" value="{{$edit_value->brand_name}}">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Description</label>
                                <textarea style="resize: none" rows="5" name="brand_product_desc" class="form-control" id="exampleInputPassword1" >{{$edit_value->brand_name}}
                        </textarea>
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
