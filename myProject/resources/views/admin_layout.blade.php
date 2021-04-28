<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="images/favicon.png">

    <title>Trang quản trị</title>

    <!-- Bootstrap CSS -->
    <link href="{{asset('public/backend/css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="{{asset('public/backend/css/bootstrap-theme.css')}}" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="{{asset('public/backend/css/elegant-icons-style.css')}}" rel="stylesheet" />
    <link href="{{asset('public/backend/css/font-awesome.min.css')}}" rel="stylesheet" />
    <!-- full calendar css-->
    <link href="{{asset('public/backend/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css')}}" rel="stylesheet" />
    <link href="{{asset('public/backend/assets/fullcalendar/fullcalendar/fullcalendar.css')}}" rel="stylesheet" />
    <!-- easy pie chart-->
    <link href="{{asset('public/backend/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css')}}" rel="stylesheet" type="text/css" media="screen" />
    <!-- owl carousel -->
    <link rel="stylesheet" href="{{asset('public/backend/css/owl.carousel.css')}}" type="text/css">
    <link href="{{asset('public/backend/css/jquery-jvectormap-1.2.2.css')}}" rel="stylesheet">
    <!-- Custom styles -->
    <link rel="stylesheet" href="{{('public/backend/css/fullcalendar.css')}}">
    <link href="{{asset('public/backend/css/widgets.css')}}" rel="stylesheet">
    <link href="{{asset('public/backend/css/style.css')}}" rel="stylesheet">
    <link href="{{asset('public/backend/css/style-responsive.css')}}" rel="stylesheet" />
    <link href="{{asset('public/backend/css/xcharts.min.css')}}" rel=" stylesheet">
    <link href="{{asset('public/backend/css/jquery-ui-1.10.4.min.css')}}" rel="stylesheet">

</head>

<body>
<!-- container section start -->
<section id="container" class="">


    <header class="header dark-bg">
        <div class="toggle-nav">
            <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
        </div>

        <!--logo start-->
        <a href="{{URL::to('/dashboard')}}" class="logo"> SUP <span class="lite">ADMIN</span></a>
        <!--logo end-->

        <div class="nav search-row" id="top_menu">
            <!--  search form start -->
            <ul class="nav top-menu">
                <li>
                    <form class="navbar-form">
                        <input class="form-control" placeholder="Search" type="text">
                    </form>
                </li>
            </ul>
            <!--  search form end -->
        </div>

        <div class="top-nav notification-row">
            <!-- notificatoin dropdown start-->
            <ul class="nav pull-right top-menu">
                <!-- user login dropdown start-->
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="public/backend/images/avatar1_small.jpg">
                            </span>
                        <span class="username">
                            <?php
                            $name =Session::get('admin_name');
                            if($name){
                                echo $name;
                            }
                            ?>
                        </span>
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu extended logout">
                        <div class="log-arrow-up"></div>
                        <li class="eborder-top">
                            <a href="#"><i class="icon_profile"></i> My Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="icon_mail_alt"></i> My Inbox</a>
                        </li>
                        <li>
                            <a href="#"><i class="icon_clock_alt"></i> Timeline</a>
                        </li>
                        <li>
                            <a href="#"><i class="icon_chat_alt"></i> Chats</a>
                        </li>
                        <li>
                            <a href="{{URL::to('/admin-logout')}}"><i class="icon_key_alt"></i> Log Out</a>
                        </li>
                        <li>
                            <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                        </li>
                        <li>
                            <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                        </li>
                    </ul>
                </li>
                <!-- user login dropdown end -->
            </ul>
            <!-- notificatoin dropdown end-->
        </div>
    </header>
    <!--header end-->

    <!--sidebar start-->
    <aside>
        <div id="sidebar" class="nav-collapse ">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu">
                <li class="active">
                    <a class="" href="{{URL::to('/dashboard')}}">
                        <i class="icon_house_alt"></i>
                        <span>DASHBOARD</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon_bag_alt"></i>
                        <span>ORDER</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="{{URL::to('/manage-order')}}"> MANAGE ORDER </a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon_document_alt"></i>
                        <span>CATEGORY</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="{{URL::to('/add-category-product')}}"> ADD</a></li>
                        <li><a class="" href="{{URL::to('/all-category-product')}}"> ALL LIST</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon_genius"></i>
                        <span>BRAND</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="{{URL::to('/add-brand-product')}}"> ADD</a></li>
                        <li><a class="" href="{{URL::to('/all-brand-product')}}"> ALL LIST</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon_gift_alt"></i>
                        <span>PRODUCT</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="{{URL::to('/add-product')}}"> ADD</a></li>
                        <li><a class="" href="{{URL::to('/all-product')}}"> ALL LIST</a></li>
                    </ul>
                </li>

                <li>
                    <a class="" href="chart-chartjs.html">
                        <i class="icon_piechart"></i>
                        <span>Charts</span>

                    </a>

                </li>

                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon_table"></i>
                        <span>Tables</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="basic_table.html">Basic Table</a></li>
                    </ul>
                </li>

                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon_documents_alt"></i>
                        <span>Pages</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="profile.html">Profile</a></li>
                        <li><a class="" href="login.html"><span>Login Page</span></a></li>
                        <li><a class="" href="contact.html"><span>Contact Page</span></a></li>
                        <li><a class="" href="blank.html">Blank Page</a></li>
                        <li><a class="" href="404.html">404 Error</a></li>
                    </ul>
                </li>

            </ul>
            <!-- sidebar menu end-->
        </div>
    </aside>
    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            @yield('admin_content')

        </section>
    </section>
    <!--main content end-->
</section>
<!-- container section start -->

<!-- javascripts -->
<script src="public/backend/js/jquery.js"></script>
<script src="public/backend/js/jquery-ui-1.10.4.min.js"></script>
<script src="public/backend/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="public/backend/js/jquery-ui-1.9.2.custom.min.js"></script>
<!-- bootstrap -->
<script src="public/backend/js/bootstrap.min.js"></script>
<!-- nice scroll -->
<script src="public/backend/js/jquery.scrollTo.min.js"></script>
<script src="public/backend/js/jquery.nicescroll.js" type="text/javascript"></script>
<!-- charts scripts -->
<script src="public/backend/assets/jquery-knob/js/jquery.knob.js"></script>
<script src="public/backend/js/jquery.sparkline.js" type="text/javascript"></script>
<script src="public/backend/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
<script src="public/backend/js/owl.carousel.js"></script>
<!-- jQuery full calendar -->
<<script src="public/backend/js/fullcalendar.min.js"></script>
<!-- Full Google Calendar - Calendar -->
<script src="public/backend/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
<!--script for this page only-->
<script src="public/backend/js/calendar-custom.js"></script>
<script src="public/backend/js/jquery.rateit.min.js"></script>
<!-- custom select -->
<script src="public/backend/js/jquery.customSelect.min.js"></script>
<script src="public/backend/assets/chart-master/Chart.js"></script>

<!--custome script for all page-->
<script src="public/backend/js/scripts.js"></script>
<!-- custom script for this page-->
<script src="public/backend/js/sparkline-chart.js"></script>
<script src="public/backend/js/easy-pie-chart.js"></script>
<script src="public/backend/js/jquery-jvectormap-1.2.2.min.js"></script>
<script src="public/backend/js/jquery-jvectormap-world-mill-en.js"></script>
<script src="public/backend/js/xcharts.min.js"></script>
<script src="public/backend/js/jquery.autosize.min.js"></script>
<script src="public/backend/js/jquery.placeholder.min.js"></script>
<script src="public/backend/js/gdp-data.js"></script>
<script src="public/backend/js/morris.min.js"></script>
<script src="public/backend/js/sparklines.js"></script>
<script src="public/backend/js/charts.js"></script>
<script src="public/backend/js/jquery.slimscroll.min.js"></script>
<script>
    //knob
    $(function() {
        $(".knob").knob({
            'draw': function() {
                $(this.i).val(this.cv + '%')
            }
        })
    });

    //carousel
    $(document).ready(function() {
        $("#owl-slider").owlCarousel({
            navigation: true,
            slideSpeed: 300,
            paginationSpeed: 400,
            singleItem: true

        });
    });

    //custom select box

    $(function() {
        $('select.styled').customSelect();
    });

    /* ---------- Map ---------- */
    $(function() {
        $('#map').vectorMap({
            map: 'world_mill_en',
            series: {
                regions: [{
                    values: gdpData,
                    scale: ['#000', '#000'],
                    normalizeFunction: 'polynomial'
                }]
            },
            backgroundColor: '#eef3f7',
            onLabelShow: function(e, el, code) {
                el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
            }
        });
    });
</script>

</body>

</html>
