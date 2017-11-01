<?php
    $setting = Cache::get('setting');
    $menu_top = Cache::get('menu_top');
    $cateProducts = Cache::get('cateProducts');
?>
<!-- Header -->
<header class="header_main">
    <div class="header_top_brands">
        <div class="container">
            <div class="row">
                <div class="owl-brands owl-carousel" data-md-items='6' data-sm-items='3' data-xs-items="2" data-margin='0'>
                <?php $partners = DB::table('partner')->where('status',1)->get(); ?>
                @foreach($partners as $partner)
                    <div class="col-xs-12">
                        <a href="{{$partner->url}}">
                            <img src="{{asset('upload/banner/'.$partner->photo)}}" alt="brand">
                        </a>
                    </div>
                @endforeach    
                </div>
            </div>
        </div>
    </div>
    <div class="header_top_slogan hidden-xs">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <?php $slogans = DB::table('slogan')->where('id',3)->first(); ?>
                    <h2>{!!$slogans->content!!}</h2>
                </div>
            </div>
        </div>
    </div>
    <div class="header_bottom">
        <div class="container">
            <div class="row">
                <!-- Menu mobile -->
                <div class="hidden-lg hidden-md visibile-sm visibile-xs">
                    <section id="menu-mobi" class="menu_mobile menu_mobile_button">
                        <div id="menu_mobile_button_line_main">
                            <span class="menu_mobile_button_line menu_mobile_button_line_1"></span>
                            <span class="menu_mobile_button_line menu_mobile_button_line_2"></span>
                            <span class="menu_mobile_button_line menu_mobile_button_line_3"></span>
                        </div>
                    </section>
                    <nav class="menu_mobile_list" style="display:none;">
                        <div class="menu_mobile_pushmenu menu_mobile_pushmenu_left">
                            <ul class="menu_mobile_list_inner">


                                <li class="level0 "><a href="{{url('gioi-thieu')}}">Giới thiệu</a></li>


                                <li class="level0 parent">
                                    <a href="">Lĩnh vực hoạt động</a>
                                    <i class="fa fa-angle-down fa-icon-action"></i>
                                    <ul class="menu_mobile_list_submenu lv1" style="display:none;">
                                        @foreach($cateProducts as $cate)
                                        <li class="level1">
                                            <a class="menu_mobile_list_submenu_link" href="{{url('linh-vuc/'.$cate->alias.'.html')}}">{{$cate->name}}</a>
                                        </li>
                                        @endforeach
                                    </ul>
                                </li>

                                <li class="level0 "><a href="{{url('phat-trien.html')}}">Phát triển bền vững</a></li>

                                <li class="{{url('tin-tuc')}}"><a href="tin-tuc.html">Tin tức sự kiện</a></li>

                                <li class="level0 "><a href="{{asset('lien-he')}}">Liên hệ</a></li>

                            </ul>
                        </div>
                    </nav>
                </div>
                <!-- End Menu mobile -->

                <!-- Logo -->
                <div class="col-md-3 col-sm-10 col-xs-6 col-xs-offset-3 col-lg-offset-0 col-sm-offset-1 col-md-offset-0">
                    <div class="logo">
                        <a href="{{url('')}}"><img src="{{asset('upload/hinhanh/'.$setting->photo)}}" alt="logo " class="img-responsive"></a>
                    </div>
                </div>
                <!-- End Logo -->
                <div class="col-md-9 col-sm-12 col-xs-12">
                    <!-- Menu -->
                    <nav class="menu_main hidden-sm hidden-xs pull-right">
                        <div class="menu_main_list">
                            <ul id="nav">
                                <li class="nav-item "><a class="nav-link" href="{{url('gioi-thieu')}}">Giới thiệu</a></li>
                                <li class="nav-item level0 ">
                                    <a href="{{url('linh-vuc-hoat-dong')}}" class="nav-link">Lĩnh vực hoạt động</a>
                                    <ul class="menu_main_list_sub_menu">
                                        @foreach($cateProducts as $cate)
                                        <li class="nav-item-lv2s">
                                            <a class="nav-link" href="{{url('linh-vuc/'.$cate->alias)}}">{{$cate->name}}</a>
                                        </li>
                                        @endforeach
                                    </ul>
                                </li>

                                <li class="nav-item "><a class="nav-link" href="{{url('phat-trien.html')}}">Phát triển bền
                                    vững</a></li>
                                <li class="nav-item "><a class="nav-link" href="{{asset('tin-tuc')}}">Tin tức sự kiện</a></li>

                                <li class="nav-item "><a class="nav-link" href="{{asset('lien-he')}}">Liên hệ</a></li>

                            </ul>
                        </div>
                    </nav>
                    <!-- End Menu -->
                    <!-- Search -->
                    <div class="searchboxlager">
                        <div class="searchfromtop">
                            <form action="{{route('search')}}" method="get" autocomplete="off">
                                <input type="text" class="form-control" maxlength="70" name="txtSearch" id="search"
                                       placeholder="Nhập từ khóa tìm kiếm và ấn enter">
                            </form>
                            <a class="hidesearchfromtop"><i class="fa fa-times"></i></a>
                        </div>
                    </div>
                    <div class="search_form_main">
                        <div class="search_form_icon"><i class="fa fa-search"></i></div>
                    </div>
                    <!-- End Search -->
                </div>
            </div>
        </div>
    </div>
</header>
<!-- End Header -->