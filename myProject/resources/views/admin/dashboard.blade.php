@extends('admin_layout')
@section('admin_content')
    <h1 style="text-align: center" ><B>WELCOME</B></h1>
    <!--overview start-->
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-laptop"></i> Dashboard</h3>
            <ol class="breadcrumb">
                <li><i class="fa fa-laptop"></i>Dashboard</li>
            </ol>
        </div>
    </div>

    <!--/.row-->


    <div class="row">
        <div class="col-lg-12 col-md-12">

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h2><i class="fa fa-map-marker red"></i><strong>Countries</strong></h2>
                    <div class="panel-actions">
                        <a href="index.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                        <a href="index.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                        <a href="index.html#" class="btn-close"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="panel-body-map">
                    <div id="map" style="height:380px;"></div>
                </div>

            </div>
        </div>
    </div>
@endsection
