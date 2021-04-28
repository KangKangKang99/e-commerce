@extends('admin_layout')
@section('admin_content')
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-table"></i> LIST BRAND</h3>
            <ol class="breadcrumb">
                <li><i class="icon_genius"></i><a href="#">BRAND</a></li>
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
                    <h3>LIST BRAND PRODUCT</h3>
                </header>

                <table class="table table-striped table-advance table-hover">
                    <tbody>
                    <tr>
                        <th><i class="fa fa-list"></i> Name brand</th>
                        <th><i class="fa fa-toggle-on"></i> Status</th>
                        <th><i class="icon_calendar"></i> Date</th>
                        <th><i class="icon_cogs"></i> Action</th>

                    @foreach($all_brand_product as $key =>$cate_pro)
                        <tr>
                            <td>{{$cate_pro->brand_name}}</td>
                            <td>
                                <?php
                                if($cate_pro->brand_status==0){

                                ?>
                                <a href="{{URL::to('/unactive-brand-product/'.$cate_pro->brand_id)}}"><span class="fa-status-styling fa fa-times-circle"> </span> </a>
                                <?php
                                }
                                else{
                                ?>
                                <a href="{{URL::to('/active-brand-product/'.$cate_pro->brand_id)}}"><span class="fa-status-styling fa fa-check-circle"> </span> </a>
                                <?php
                                }
                                ?>
                            </td>
                            <td>28 - 7 - 2020</td>
                            <td>
                                <div class="btn-group">
                                    <a class="btn btn-primary" href="{{URL::to('/edit-brand-product/'.$cate_pro->brand_id)}}"><i class="fa fa-pencil-square-o"></i></a>
                                    <a onclick="return confirm('Are you sure?')" class="btn btn-danger" href="{{URL::to('/delete-brand-product/'.$cate_pro->brand_id)}}"><i class="icon_close_alt2"></i></a>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </section>
        </div>
    </div>
@endsection
