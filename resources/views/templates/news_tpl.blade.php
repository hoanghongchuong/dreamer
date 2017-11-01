@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $cateProducts = Cache::get('cateProducts');
?>
<section class="bread-crumb">
    <div class="container">
        <ul class="breadcrumb">
            <li class="home">
                <a href="{{asset('')}}" ><span>Trang chủ</span></a>
                <span><i class="fa fa-angle-right"></i></span>
            </li>

            <li><strong>Tin tức</strong></li>
        </ul>
    </div>
</section>
<div class="container">
    <div class="row">
        <div class="full-content-blog">
            <section class="right-content col-lg-9 col-lg-push-3">
                <div class="row">
                    <section class="list-blogs blog-main">
                        @foreach($tintuc as $item)
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 item-blog-cl">
                            <article class="blog-item">
                                <figure class="news_home_content_img">
                                    <a href="{{url('tin-tuc/'.$item->alias.'.html')}}">
                                        <picture>
                                            <source media="(max-width: 480px)" srcset="{{asset('upload/news/'.$item->photo)}}">
                                            <source media="(min-width: 481px) and (max-width: 767px)" srcset="{{asset('upload/news/'.$item->photo)}}">
                                            <source media="(min-width: 768px) and (max-width: 1023px)" srcset="{{asset('upload/news/'.$item->photo)}}">
                                            <source media="(min-width: 1024px) and (max-width: 1199px)" srcset="{{asset('upload/news/'.$item->photo)}}">
                                            <source media="(min-width: 1200px)" srcset="{{asset('upload/news/'.$item->photo)}}">
                                            <img src="{{asset('upload/news/'.$item->photo)}}" title="{{$item->name}}" alt="{{$item->name}}">
                                        </picture>
                                    </a>
                                    <div class="news_home_content_icon">
                                        <a href="{{url('tin-tuc/'.$item->alias.'.html')}}" title="{{$item->name}}"><i class="fa fa-expand"></i></a>
                                    </div>
                                </figure>
                                <div class="news_home_content_short">
                                    <div class="news_home_content_short_time"><i class="fa fa-clock-o"></i> {{date('d/m/Y', strtotime($item->created_at))}}</div>
                                    <h3 class="news_home_content_short_title"><a href="{{url('tin-tuc/'.$item->alias.'.html')}}">{{$item->name}}</a></h3>
                                    <div class="news_home_content_short_info">
                                        {{$item->mota}}
                                    </div>
                                    <div class="news_home_content_short_readmore">
                                        <a href="{{url('tin-tuc/'.$item->alias.'.html')}}">Xem tiếp <span><i class="fa fa-arrow-circle-o-right"></i></span></a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        @endforeach
                     

                    </section>
                </div>
                <div class="col-xs-12 text-right">

                </div>

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
                                <a class="nav-link" href="{{url('gioi-thieu')}}">Giới thiệu</a>
                            </li>
                            <li class="nav-item">
                                <i class="fa fa-caret-right"></i>
                                <a href="" class="nav-link">Lĩnh vực hoạt động</a>
                                <i class="fa fa-angle-down a" ></i>
                                <ul class="dropdown-menu">
                                    @foreach($cateProducts as $cate)    
                                    <li class="nav-item">
                                        <i class="fa fa-caret-right"></i>
                                        <a class="nav-link" href="{{url('linh-vuc/'.$cate->alias)}}">{{$cate->name}}</a>
                                    </li>
                                    @endforeach
                                </ul>
                            </li>
                            <li class="nav-item">
                                <i class="fa fa-caret-right"></i>
                                <a class="nav-link" href="">Phát triển bền vững</a></li>
                            <li class="nav-item">
                                <i class="fa fa-caret-right"></i>
                                <a class="nav-link" href="{{url('tin-tuc')}}">Tin tức sự kiện</a>
                            </li>
                            <li class="nav-item">
                                <i class="fa fa-caret-right"></i>
                                <a class="nav-link" href="{{url('lien-he')}}">Liên hệ</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </aside>

        </aside>

    </div>
</div>
<div class="ab-module-article-mostview"></div>
@endsection
