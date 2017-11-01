@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $cateProducts = Cache::get('cateProducts');
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

                                        {!!$pt->content!!}
                                    </div>
                                    <div class="col-xs-12">
                                        <div id="field_work_nav_list_action" class="field_work_nav_list hidden-xs">
                                            <div class="field_work_nav_list_box">
                                                <ul class="field_work_short_tab">
                                                @foreach($cateProducts as $key => $cate)    
                                                    <li class="@if($key == 0) active @endif">
                                                        <i class="" aria-hidden="true"></i><a data-toggle="tab" href="#menu-{{$key}}">{{$cate->name}}</a>
                                                    </li>
                                                @endforeach        

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
                                                    @foreach($cateProducts as $k => $cates)
                                                    <li class="@if($k == 0) active @endif">
                                                        <a data-toggle="tab" href="#menu-{{$k}}">{{$cates->name}}</a>
                                                    </li>
                                                    @endforeach
                                                </ul>
                                            </ul>
                                        </div>

                                        <div class="tab-content margin-top-30">
                                            @foreach($cateProducts as $k => $cates)
                                            <?php $products = DB::table('products')->where('cate_id', $cates->id)->where('status',1)->where('noibat',1)->get(); ?>
                                            <div id="menu-{{$k}}" class="tab-pane fade in  @if($k == 0) active @endif">
                                                <div class="row">
                                                    <div class="owl-field-work owl-carousel" data-md-items='4' data-sm-items='2'
                                                         data-xs-items="1" data-margin='0'>
                                                        @foreach($products as $product)
                                                        <div class="col-xs-12">
                                                            <div class="product-box field_work_short_tab_content ">

                                                                <div class="product-thumbnail field_work_short_tab_content_img ">

                                                                    <a href="{{url('linh-vuc/'.$product->alias.'.html')}}"
                                                                       title="{{$product->name}}">
                                                                        <img src="{{asset('upload/product/'.$product->photo)}}"
                                                                             alt="{{$product->name}}">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info field_work_short_tab_content_title">
                                                                    <p>{{$cates->name}}</p>
                                                                    <h3><a href="linh-vuc-chi-tiet.html" title="{{$product->name}}">{{$product->name}}</a></h3>

                                                                </div>

                                                            </div>
                                                        </div>
                                                        @endforeach
                                                    </div>
                                                </div>
                                            </div>
                                            @endforeach
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
