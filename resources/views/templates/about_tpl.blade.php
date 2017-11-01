@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>
<section class="bread-crumb">
    <div class="container">

        <ul class="breadcrumb">
            <li class="home">
                <a href="{{url('')}}" ><span >Trang chủ</span></a>
                <span><i class="fa fa-angle-right"></i></span>
            </li>
            <li><strong >Giới thiệu</strong></li>

        </ul>
    </div>
</section>
<section class="page">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">

                <div class="content-page page_develop padding-bottom-50">
                    @include('templates.layout.slider')
                    <div class="page-mid">
                        <!-- Field Work -->
                        <div class="main_container_top">
                            <section class="field_work_main product-develop">

                                <div class="row">
                                    <div class="col-xs-12">
                                        {!!$about->content!!}
                                    </div>
                                    <div class="col-xs-12">
                                        <div id="field_work_nav_list_action" class="field_work_nav_list hidden-xs">
                                            <div class="field_work_nav_list_box">
                                                <ul class="field_work_short_tab">
                                                    <li class="active">
                                                        <i class="" aria-hidden="true"></i><a data-toggle="tab" href="#menu-1">Tất cả</a>
                                                    </li>

                                                    <li >
                                                        <i class="fa fa-home" aria-hidden="true"></i><a data-toggle="tab" href="#menu-2">Bất động sản</a>
                                                    </li>

                                                    <li >
                                                        <i class="fa fa-plane" aria-hidden="true"></i><a data-toggle="tab" href="#menu-3">Du lịch - Khách sạn</a>
                                                    </li>

                                                    <li >
                                                        <i class="fa fa-delicious" aria-hidden="true"></i><a data-toggle="tab" href="#menu-4">Vui chơi - Giải trí</a>
                                                    </li>

                                                    <li >
                                                        <i class="fa fa-medkit" aria-hidden="true"></i><a data-toggle="tab" href="#menu-5">Y tế</a>
                                                    </li>

                                                    <li >
                                                        <i class="fa fa-graduation-cap" aria-hidden="true"></i><a data-toggle="tab" href="#menu-6">Giáo dục</a>
                                                    </li>

                                                    <li >
                                                        <i class="fa fa-internet-explorer" aria-hidden="true"></i><a data-toggle="tab" href="#menu-7">Thương mại điện tử</a>
                                                    </li>

                                                    <li >
                                                        <i class="fa fa-internet-explorer" aria-hidden="true"></i><a data-toggle="tab" href="#menu-8">Trung tâm thương mại</a>
                                                    </li>

                                                    <li >
                                                        <i class="fa fa-dropbox" aria-hidden="true"></i><a data-toggle="tab" href="#menu-9">Kinh doanh bán lẻ</a>
                                                    </li>

                                                </ul>

                                            </div>
                                            <div class="field_work_nav_list_box_action">
                                                <a id="icon_prev" class="field_work_nav_list_icon prev" title="Lùi" data-toggle="tooltip" data-placement="top"><i class="fa fa-caret-left"></i></a>
                                                <a id="icon_next" class="field_work_nav_list_icon next" title="Tiến" data-toggle="tooltip" data-placement="top"><i class="fa fa-caret-right"></i></a>
                                            </div>
                                        </div>
                                        <div class="field_work_nav_list_box hidden-lg hidden-md hidden-sm visibily-xs">
                                            <ul class="field_work_short_tab">
                                                <li class="field_work_short_action"><span>Lĩnh vực hoạt động</span> <i
                                                        class="fa fa-caret-down pull-right"></i></li>
                                                <ul class="field_work_short_content">

                                                    <li class="active">
                                                        <a data-toggle="tab" href="#menu-1">Tất cả</a>
                                                    </li>

                                                    <li>
                                                        <a data-toggle="tab" href="#menu-2">Bất động sản</a>
                                                    </li>

                                                    <li>
                                                        <a data-toggle="tab" href="#menu-3">Du lịch - Khách sạn</a>
                                                    </li>

                                                    <li>
                                                        <a data-toggle="tab" href="#menu-4">Vui chơi - Giải trí</a>
                                                    </li>

                                                    <li>
                                                        <a data-toggle="tab" href="#menu-5">Y tế</a>
                                                    </li>

                                                    <li>
                                                        <a data-toggle="tab" href="#menu-6">Giáo dục</a>
                                                    </li>

                                                    <li>
                                                        <a data-toggle="tab" href="#menu-7">Thương mại điện tử</a>
                                                    </li>

                                                    <li>
                                                        <a data-toggle="tab" href="#menu-8">Trung tâm thương mại</a>
                                                    </li>

                                                    <li>
                                                        <a data-toggle="tab" href="#menu-9">Kinh doanh bán lẻ</a>
                                                    </li>

                                                </ul>
                                            </ul>
                                        </div>

                                        <div class="tab-content margin-top-30">
                                            <div id="menu-1" class="tab-pane fade in  active">
                                                <div class="row">
                                                    <div class="owl-field-work owl-carousel" data-md-items='4' data-sm-items='2'
                                                         data-xs-items="1" data-margin='0'>
                                                        <div class="col-xs-12">

                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href="linh-vuc-chi-tiet.html"
                                                                       title="Khu đô thị sinh thái Vinhomes Riverside">
                                                                        <img src="images/2-min.jpg"
                                                                             alt="Khu đô thị sinh thái Vinhomes Riverside">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Khu đô thị</p>
                                                                    <h3><a href="linh-vuc-chi-tiet.html" title="Khu đô thị sinh thái Vinhomes Riverside">Khu
                                                                        đô thị sinh thái Vinhomes Riverside</a></h3>

                                                                </div>

                                                            </div>
                                                        </div>

                                                        <div class="col-xs-12">

                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href="linh-vuc-chi-tiet.html" title="Dự án Vinhomes Đồng Khởi">
                                                                        <img src="images/8.jpg?v=1496047149063"
                                                                             alt="Dự án Vinhomes Đồng Khởi">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Trung tâm thương mại</p>
                                                                    <h3><a href="linh-vuc-chi-tiet.html" title="Dự án Vinhomes Đồng Khởi">Dự án Vinhomes
                                                                        Đồng Khởi</a></h3>


                                                                </div>


                                                            </div>
                                                        </div>

                                                        <div class="col-xs-12">


                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href="linh-vuc-chi-tiet.html" title="Khu đô thị phức hợp Vinhomes Times City">
                                                                        <img src="images/14.jpg?v=1496047191167"
                                                                             alt="Khu đô thị phức hợp Vinhomes Times City">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Trung tâm thương mại</p>
                                                                    <h3><a href="linh-vuc-chi-tiet.html" title="Khu đô thị phức hợp Vinhomes Times City">Khu
                                                                        đô thị phức hợp Vinhomes Times City</a></h3>


                                                                </div>


                                                            </div>
                                                        </div>

                                                        <div class="col-xs-12">


                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href="linh-vuc-chi-tiet.html" title="Khu đô thị phức hợp Vinhomes Royal City">
                                                                        <img src="images/17-min.jpg?v=1496052812713"
                                                                             alt="Khu đô thị phức hợp Vinhomes Royal City">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Khu đô thị</p>
                                                                    <h3><a href="linh-vuc-chi-tiet.html" title="Khu đô thị phức hợp Vinhomes Royal City">Khu
                                                                        đô thị phức hợp Vinhomes Royal City</a></h3>


                                                                </div>


                                                            </div>
                                                        </div>

                                                        <div class="col-xs-12">


                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href="linh-vuc-chi-tiet.html" title="Dự án Vinpearl Nha Trang Bay Resort & Villas">
                                                                        <img src="images/5-min.jpg?v=1496052831840"
                                                                             alt="Dự án Vinpearl Nha Trang Bay Resort & Villas">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Khu nghỉ dưỡng</p>
                                                                    <h3><a href="linh-vuc-chi-tiet.html"
                                                                           title="Dự án Vinpearl Nha Trang Bay Resort & Villas">Dự
                                                                        án Vinpearl Nha Trang Bay Resort & Villas</a></h3>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>


                                            <div id="menu-2" class="tab-pane fade in ">
                                                <div class="row">
                                                    <div class="owl-field-work owl-carousel" data-md-items='4' data-sm-items='2'
                                                         data-xs-items="1" data-margin='0'>


                                                        <div class="col-xs-12">

                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href="" title="Khu đô thị phức hợp Vinhomes Royal City">
                                                                        <img src="images/17-min.jpg?v=1496052812713"
                                                                             alt="Khu đô thị phức hợp Vinhomes Royal City">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Khu đô thị</p>
                                                                    <h3><a href="linh-vuc-chi-tiet.html" title="Khu đô thị phức hợp Vinhomes Royal City">Khu
                                                                        đô thị phức hợp Vinhomes Royal City</a></h3>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-xs-12">

                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href="" title="Khu đô thị phức hợp Vinhomes Times City">
                                                                        <img src="images/14.jpg?v=1496047191167"
                                                                             alt="Khu đô thị phức hợp Vinhomes Times City">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Trung tâm thương mại</p>
                                                                    <h3><a href="linh-vuc-chi-tiet.html" title="Khu đô thị phức hợp Vinhomes Times City">Khu
                                                                        đô thị phức hợp Vinhomes Times City</a></h3>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-xs-12">

                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href="" title="Dự án Vinhomes Đồng Khởi">
                                                                        <img src="images/8.jpg?v=1496047149063"
                                                                             alt="Dự án Vinhomes Đồng Khởi">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Trung tâm thương mại</p>
                                                                    <h3><a href="linh-vuc-chi-tiet.html" title="Dự án Vinhomes Đồng Khởi">Dự án Vinhomes
                                                                        Đồng Khởi</a></h3>

                                                                </div>

                                                            </div>
                                                        </div>

                                                        <div class="col-xs-12">

                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href="" title="Khu đô thị sinh thái Vinhomes Riverside">
                                                                        <img src="images/2-min.jpg?v=1496052790107"
                                                                             alt="Khu đô thị sinh thái Vinhomes Riverside">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Khu đô thị</p>
                                                                    <h3><a href="linh-vuc-chi-tiet.html" title="Khu đô thị sinh thái Vinhomes Riverside">Khu
                                                                        đô thị sinh thái Vinhomes Riverside</a></h3>
                                                                </div>

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>

                                            <div id="menu-3" class="tab-pane fade in ">
                                                <div class="row">
                                                    <div class="owl-field-work owl-carousel" data-md-items='4' data-sm-items='2'
                                                         data-xs-items="1" data-margin='0'>

                                                        <div class="col-xs-12">
                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href=""
                                                                       title="Khu nghỉ dưỡng Vinpearl Đà Nẵng Resort & Villas">
                                                                        <img src="images/ho-boi-jacuzzi-vinpearl-da-nang-ee82cb4b-e01e-4b0e-af21-102d71be8ca9.jpg?v=1495100222903"
                                                                             alt="Khu nghỉ dưỡng Vinpearl Đà Nẵng Resort & Villas">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Khu nghỉ dưỡng</p>
                                                                    <h3><a href=""
                                                                           title="Khu nghỉ dưỡng Vinpearl Đà Nẵng Resort & Villas">Khu
                                                                        nghỉ dưỡng Vinpearl Đà Nẵng Resort & Villas</a></h3>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-xs-12">
                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href="" title="Dự án Vinpearl Nha Trang Bay Resort & Villas">
                                                                        <img src="images/5-min.jpg?v=1496052831840"
                                                                             alt="Dự án Vinpearl Nha Trang Bay Resort & Villas">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Khu nghỉ dưỡng</p>
                                                                    <h3><a href=""
                                                                           title="Dự án Vinpearl Nha Trang Bay Resort & Villas">Dự
                                                                        án Vinpearl Nha Trang Bay Resort & Villas</a></h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                            <div id="menu-4" class="tab-pane fade in ">
                                                <div class="row">
                                                    <div class="owl-field-work owl-carousel" data-md-items='4' data-sm-items='2'
                                                         data-xs-items="1" data-margin='0'>
                                                        <div class="col-xs-12">
                                                            <div class="product-box field_work_short_tab_content ">
                                                                <div class="product-thumbnail field_work_short_tab_content_img ">
                                                                    <a href=""
                                                                       title="Khu nghỉ dưỡng Vinpearl Đà Nẵng Resort & Villas">
                                                                        <img src="images/ho-boi-jacuzzi-vinpearl-da-nang-ee82cb4b-e01e-4b0e-af21-102d71be8ca9.jpg?v=1495100222903"
                                                                             alt="Khu nghỉ dưỡng Vinpearl Đà Nẵng Resort & Villas">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Khu nghỉ dưỡng</p>
                                                                    <h3><a href=""
                                                                           title="Khu nghỉ dưỡng Vinpearl Đà Nẵng Resort & Villas">Khu
                                                                        nghỉ dưỡng Vinpearl Đà Nẵng Resort & Villas</a></h3>
                                                                </div>

                                                            </div>
                                                        </div>

                                                        <div class="col-xs-12">

                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href=""
                                                                       title="Dự án Vinpearl Nha Trang Bay Resort & Villas">
                                                                        <img src="images/5-min.jpg?v=1496052831840"
                                                                             alt="Dự án Vinpearl Nha Trang Bay Resort & Villas">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Khu nghỉ dưỡng</p>
                                                                    <h3><a href=""
                                                                           title="Dự án Vinpearl Nha Trang Bay Resort & Villas">Dự
                                                                        án Vinpearl Nha Trang Bay Resort & Villas</a></h3>

                                                                </div>

                                                            </div>
                                                        </div>

                                                        <div class="col-xs-12">

                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href=""
                                                                       title="Khu đô thị phức hợp Vinhomes Royal City">
                                                                        <img src="images/17-min.jpg?v=1496052812713"
                                                                             alt="Khu đô thị phức hợp Vinhomes Royal City">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Khu đô thị</p>
                                                                    <h3><a href=""
                                                                           title="Khu đô thị phức hợp Vinhomes Royal City">Khu đô
                                                                        thị phức hợp Vinhomes Royal City</a></h3>

                                                                </div>

                                                            </div>
                                                        </div>

                                                        <div class="col-xs-12">


                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href=""
                                                                       title="Khu đô thị phức hợp Vinhomes Times City">
                                                                        <img src="images/14.jpg?v=1496047191167"
                                                                             alt="Khu đô thị phức hợp Vinhomes Times City">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Trung tâm thương mại</p>
                                                                    <h3><a href=""
                                                                           title="Khu đô thị phức hợp Vinhomes Times City">Khu đô
                                                                        thị phức hợp Vinhomes Times City</a></h3>

                                                                </div>

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>


                                            <div id="menu-5" class="tab-pane fade in ">
                                                <div class="row">
                                                    <div class="owl-field-work owl-carousel" data-md-items='4' data-sm-items='2'
                                                         data-xs-items="1" data-margin='0'>

                                                        <div class="col-xs-12">


                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href=""
                                                                       title="Bệnh viện Đa khoa Quốc tế Vinmec Phú Quốc">
                                                                        <img src="images/1484794077641-1387114.jpg?v=1495156750610"
                                                                             alt="Bệnh viện Đa khoa Quốc tế Vinmec Phú Quốc">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Bệnh viện</p>
                                                                    <h3><a href="c"
                                                                           title="Bệnh viện Đa khoa Quốc tế Vinmec Phú Quốc">Bệnh
                                                                        viện Đa khoa Quốc tế Vinmec Phú Quốc</a></h3>

                                                                </div>

                                                            </div>
                                                        </div>

                                                        <div class="col-xs-12">


                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href=""
                                                                       title="Bệnh viện Đa khoa Quốc tế Vinmec Times City">
                                                                        <img src="images/golden-river-benh-vien.jpg"
                                                                             alt="Bệnh viện Đa khoa Quốc tế Vinmec Times City">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Bệnh viện</p>
                                                                    <h3><a href=""
                                                                           title="Bệnh viện Đa khoa Quốc tế Vinmec Times City">Bệnh
                                                                        viện Đa khoa Quốc tế Vinmec Times City</a></h3>

                                                                </div>

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>


                                            <div id="menu-6" class="tab-pane fade in ">
                                                <div class="row">
                                                    <div class="owl-field-work owl-carousel" data-md-items='4' data-sm-items='2'
                                                         data-xs-items="1" data-margin='0'>


                                                        <div class="col-xs-12">


                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">
                                                                    <a href=""
                                                                       title="Trường mầm non Vinschool Royal City">
                                                                        <img src="images/anh-1-lauu.jpg?v=1495156908293"
                                                                             alt="Trường mầm non Vinschool Royal City">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Trường học</p>
                                                                    <h3><a href=""
                                                                           title="Trường mầm non Vinschool Royal City">Trường mầm
                                                                        non Vinschool Royal City</a></h3>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>


                                            <div id="menu-7" class="tab-pane fade in ">
                                                <div class="row">
                                                    <div class="owl-field-work owl-carousel" data-md-items='4' data-sm-items='2'
                                                         data-xs-items="1" data-margin='0'>

                                                        <div class="col-xs-12">

                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href=""
                                                                       title="Tòa tháp Bitexco Financial Tower">
                                                                        <img src="images/bitexco-thanh-van-nguyen.jpg?v=1495157579467"
                                                                             alt="Tòa tháp Bitexco Financial Tower">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Trung tâm thương mại</p>
                                                                    <h3><a href=""
                                                                           title="Tòa tháp Bitexco Financial Tower">Tòa tháp Bitexco
                                                                        Financial Tower</a></h3>

                                                                </div>

                                                            </div>
                                                        </div>

                                                        <div class="col-xs-12">

                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href=""
                                                                       title="Hệ thống siêu thị Vinmart">
                                                                        <img src="images/1-e9d13c74-1250-49ca-a28f-716445622588.jpg?v=1496047283483"
                                                                             alt="Hệ thống siêu thị Vinmart">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Siêu thị</p>
                                                                    <h3><a href=""
                                                                           title="Hệ thống siêu thị Vinmart">Hệ thống siêu thị
                                                                        Vinmart</a></h3>

                                                                </div>

                                                            </div>
                                                        </div>

                                                        <div class="col-xs-12">

                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href=""
                                                                       title="Khu đô thị phức hợp Vinhomes Royal City">
                                                                        <img src="images/17-min.jpg?v=1496052812713"
                                                                             alt="Khu đô thị phức hợp Vinhomes Royal City">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Khu đô thị</p>
                                                                    <h3><a href=""
                                                                           title="Khu đô thị phức hợp Vinhomes Royal City">Khu đô
                                                                        thị phức hợp Vinhomes Royal City</a></h3>

                                                                </div>


                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>


                                            <div id="menu-8" class="tab-pane fade in ">
                                                <div class="row">
                                                    <div class="owl-field-work owl-carousel" data-md-items='4' data-sm-items='2'
                                                         data-xs-items="1" data-margin='0'>

                                                        <div class="col-xs-12">

                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href="/khu-do-thi-phuc-hop-vinhomes-royal-city"
                                                                       title="Khu đô thị phức hợp Vinhomes Royal City">
                                                                        <img src="images/17-min.jpg?v=1496052812713"
                                                                             alt="Khu đô thị phức hợp Vinhomes Royal City">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Khu đô thị</p>
                                                                    <h3><a href="/khu-do-thi-phuc-hop-vinhomes-royal-city"
                                                                           title="Khu đô thị phức hợp Vinhomes Royal City">Khu đô
                                                                        thị phức hợp Vinhomes Royal City</a></h3>

                                                                </div>

                                                            </div>
                                                        </div>

                                                        <div class="col-xs-12">

                                                            <div class="product-box field_work_short_tab_content ">
                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href="/to-hop-do-thi-phuc-hop-vinhomes-times-city"
                                                                       title="Khu đô thị phức hợp Vinhomes Times City">
                                                                        <img src="images/14.jpg?v=1496047191167"
                                                                             alt="Khu đô thị phức hợp Vinhomes Times City">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Trung tâm thương mại</p>
                                                                    <h3><a href="/to-hop-do-thi-phuc-hop-vinhomes-times-city"
                                                                           title="Khu đô thị phức hợp Vinhomes Times City">Khu đô
                                                                        thị phức hợp Vinhomes Times City</a></h3>

                                                                </div>

                                                            </div>
                                                        </div>

                                                        <div class="col-xs-12">

                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href="/du-an-vinhomes-dong-khoi"
                                                                       title="Dự án Vinhomes Đồng Khởi">
                                                                        <img src="images/8.jpg?v=1496047149063"
                                                                             alt="Dự án Vinhomes Đồng Khởi">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Trung tâm thương mại</p>
                                                                    <h3><a href="/du-an-vinhomes-dong-khoi"
                                                                           title="Dự án Vinhomes Đồng Khởi">Dự án Vinhomes Đồng
                                                                        Khởi</a></h3>

                                                                </div>

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>

                                            <div id="menu-9" class="tab-pane fade in ">
                                                <div class="row">
                                                    <div class="owl-field-work owl-carousel" data-md-items='4' data-sm-items='2'
                                                         data-xs-items="1" data-margin='0'>


                                                        <div class="col-xs-12">


                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href="linh-vuc-chi-tiet.html"
                                                                       title="Hệ thống siêu thị Vinmart">
                                                                        <img src="images/1-e9d13c74-1250-49ca-a28f-716445622588.jpg?v=1496047283483"
                                                                             alt="Hệ thống siêu thị Vinmart">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>Siêu thị</p>
                                                                    <h3><a href="linh-vuc-chi-tiet.html"
                                                                           title="Hệ thống siêu thị Vinmart">Hệ thống siêu thị
                                                                        Vinmart</a></h3>

                                                                </div>

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                        <!-- Field Work -->
                        <div class="dtkh padding-top-50">
                            <div class="bwt_title_main">
                                <h2><a href="#">Đối tác và khách hàng</a></h2>
                            </div>
                            <div class="field_work_short">
                                <?php $slogan = DB::table('slogan')->orderBy('id','asc')->get(); ?>
                                {!! $slogan[0]->content !!}
                            </div>
                        </div>
                    </div>
                    <div class="header_top_brands">
                        <div class="container">
                            <div class="row">
                                <div class="owl-brands owl-carousel" data-md-items='6' data-sm-items='3' data-xs-items="2"
                                     data-margin='0'>
                                   <?php $partners = DB::table('partner')->where('status',1)->get(); ?>
                                    @foreach($partners as $partner)
                                        <div class="col-xs-12">
                                            <a href="#">
                                                <img src="{{asset('upload/banner/'.$partner->photo)}}" alt="brand">
                                            </a>
                                        </div>
                                    @endforeach 
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
</section>
@endsection
