@extends('index')
@section('content')

<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
?>
<section class="bread-crumb">
    <div class="container">
        <ul class="breadcrumb">
            <li class="home">
                <a href="" ><span>Trang chủ</span></a>
                <span><i class="fa fa-angle-right"></i></span>
            </li>
            <li class="home">
                <a href="" ><span>Tin tức</span></a>
            </li>
            <li><strong>Chi tiết tin tức</strong></li>
        </ul>
    </div>
</section>
<div class="container">
    <div class="row">
        <div class="full-content-blog">
            <section class="right-content col-lg-9 col-lg-push-3">
                <article class="article-main" >
                    <div class="news_details_page_title">
                        <div class="news_home_content_short_time"><i class="fa fa-clock-o"></i> {{date('d/m/Y', strtotime($news_detail->created_at))}}</div>
                        <h1><a href="">{{$news_detail->name}}</a></h1>
                    </div>
                    <div class="news_details_page_content" itemprop="description">
                        {!! $news_detail->content !!}
                    </div>
                    <!-- <div class="col-xs-12">
                        <div class="row row-noGutter tag-share">

                            <div class="col-xs-12 col-sm-6 tag_article ">
                                <span class="inline"><i class="fa fa-tags"></i> </span>

                                <a href="">khu phức hợp</a>,

                                <a href="">bất động sản</a>

                            </div>

                        </div>
                    </div>
 -->
                    <!-- Tin khác -->
                    <div class="news_related">
                        <h2 class="title_related">Các tin khác</h2>
                        @foreach($tinkhac as $tk)
                        <div class="news_details_page_list">
                            <ul>
                                <li><h3><a href="{{url('tin-tuc/'.$tk->alias.'.html')}}">{{$tk->name}}</a><span class="time-article-blog">{{date('d/m/Y', strtotime($tk->created_at))}}</span></h3></li>

                            </ul>
                        </div>
                        @endforeach

                    </div>
                    <!-- End tin khác -->
                </article>
            </section>
        </div>
        <aside class="left left-content col-lg-3 col-lg-pull-9">

            <aside class="aside-item sidebar-category blog-category">
                <div class="aside-title">
                    <h2 class="title-head"><span>Danh mục bài viết</span></h2>
                </div>
                <div class="aside-content">
                    <nav class="nav-category navbar-toggleable-md" >
                        <ul class="nav navbar-pills">

                            <li class="nav-item">
                                <i class="fa fa-caret-right"></i>
                                <a class="nav-link" href="{{url('gioi-thieu')}}">Giới thiệu</a></li>

                            <li class="nav-item">
                                <i class="fa fa-caret-right"></i>
                                <a href="" class="nav-link">Lĩnh vực hoạt động</a>
                                <i class="fa fa-angle-down a" ></i>
                                <ul class="dropdown-menu">

                                    <li class="nav-item">
                                        <i class="fa fa-caret-right"></i>
                                        <a class="nav-link" href="">Bất động sản</a>
                                    </li>


                                    <li class="nav-item">
                                        <i class="fa fa-caret-right"></i>
                                        <a class="nav-link" href="">Du lịch</a>
                                    </li>


                                    <li class="nav-item">
                                        <i class="fa fa-caret-right"></i>
                                        <a class="nav-link" href="">Vui chơi - Giải trí</a>
                                    </li>


                                    <li class="nav-item">
                                        <i class="fa fa-caret-right"></i>
                                        <a class="nav-link" href="">Y tế</a>
                                    </li>


                                    <li class="nav-item">
                                        <i class="fa fa-caret-right"></i>
                                        <a class="nav-link" href="">Giáo dục</a>
                                    </li>


                                    <li class="nav-item">
                                        <i class="fa fa-caret-right"></i>
                                        <a class="nav-link" href="">Thương mại điện tử</a>
                                    </li>



                                    <li class="nav-item">
                                        <i class="fa fa-caret-right"></i>
                                        <a class="nav-link" href="">Trung tâm thương mại</a>
                                    </li>


                                    <li class="nav-item">
                                        <i class="fa fa-caret-right"></i>
                                        <a class="nav-link" href="">Kinh doanh bán lẻ</a>
                                    </li>
                                </ul>
                            </li>


                            <li class="nav-item">
                                <i class="fa fa-caret-right"></i>
                                <a class="nav-link" href="">Phát triển bền vững</a></li>



                            <li class="nav-item">
                                <i class="fa fa-caret-right"></i>
                                <a class="nav-link" href="{{url('tin-tuc')}}">Tin tức sự kiện</a></li>



                            <li class="nav-item">
                                <i class="fa fa-caret-right"></i>
                                <a class="nav-link" href="{{url('lien-he')}}">Liên hệ</a></li>

                        </ul>
                    </nav>
                </div>
            </aside>

        </aside>

    </div>
</div>
<div class="ab-module-article-mostview"></div>
@endsection
