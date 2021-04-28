@extends('admin_layout')
@section('admin_content')
    <!-- Basic Forms -->
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i> EDIT CATEGORY</h3>
            <ol class="breadcrumb">
                <li><i class="icon_document_alt"></i><a href="#">Category</a></li>
                <li><i class="fa fa-pencil-square-o"></i>Edit category</li>
            </ol>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-8">
            <section class="panel">
                <header class="panel-heading">
                    <h3>EDIT CATEGORY PRODUCT</h3>
                </header>
                <div class="panel-body">
                    @foreach($edit_category_product as $key=>$edit_value)
                        <form role="form" action="{{URL::to('/update-category-product/'.$edit_value->category_id)}}" method="post">
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
                                <label for="exampleInputEmail1">Name category</label>
                                <input type="text" name="category_product_name" class="form-control" id="exampleInputEmail1" placeholder="Category's name" value="{{$edit_value->category_name}}">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Description</label>
                                <textarea style="resize: none" rows="5" name="category_product_desc" class="form-control" id="exampleInputPassword1" >{{$edit_value->category_name}}
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
