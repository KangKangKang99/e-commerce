@extends('admin_layout')
@section('admin_content')
    <!-- Basic Forms -->
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i> ADD BRAND</h3>
            <ol class="breadcrumb">
                <li><i class="icon_genius"></i><a href="#">Brand</a></li>
                <li><i class="fa fa-plus-square-o"></i>Add brand</li>
            </ol>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-8">
            <section class="panel">
                <header class="panel-heading">
                    <h3>ADD BRAND PRODUCT</h3>
                </header>
                <div class="panel-body">
                    <form role="form" action="{{URL::to('/save-brand-product')}}" method="post">
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
                            <label for="exampleInputEmail1">Add brand</label>
                            <input type="text" name="brand_product_name" class="form-control" id="exampleInputEmail1" placeholder="Brand's name">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Description</label>
                            <textarea style="resize: none" rows="5" name="brand_product_desc" class="form-control" id="exampleInputPassword1" placeholder="Mô tả danh mục">
                        </textarea>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Status</label>
                            <select class="form-control input-sm m-bot15" name="brand_product_status">
                                <option value="0">Disable </option>
                                <option value="1">Enable </option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Add</button>
                    </form>

                </div>
            </section>
        </div>
        <div class="col-lg-2"></div>

    </div>
@endsection
