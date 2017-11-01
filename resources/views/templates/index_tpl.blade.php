@extends('index')
@section('content')

<?php
$setting = Cache::get('setting');
$cateProducts = Cache::get('cateProducts');

?>
<h1 class="hidden">Dreamer - </h1>
<section class="main_container">

    <section class="banner">
        <div class=" banner-slide">
            <?php $banner = DB::table('banner_content')->where('position',1)->first(); ?>
            <img src="{{asset('upload/banner/'.$banner->image)}}" alt="" title="">
        </div>
    </section>


    <section class="awe-section-2">
        <!-- Field Work -->

        <div class="main_container_top">
            <section class="field_work_main">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="bwt_title_main">
                                <h2><a href="#">Lĩnh vực hoạt động</a></h2>
                            </div>
                            <div class="field_work_short">
                                <?php $slogan = DB::table('slogan')->orderBy('id','asc')->get(); ?>
                                {!! $slogan[1]->content !!}
                            </div>
                        </div>
                        <div class="col-xs-12">
                            <div id="field_work_nav_list_action" class="field_work_nav_list hidden-xs">
                                <div class="field_work_nav_list_box">
                                    <ul class="field_work_short_tab list_link">

                                        <!-- <li class="active">
                                            <i class="" aria-hidden="true"></i><a data-toggle="tab" href="#menu-x">Tất
                                            cả</a>
                                        </li> -->
                                        <?php $cates = DB::table('product_categories')->get(); ?>
                                        @foreach($cates as $key => $cate)
                                        <li>
                                            <i class="fa fa-home" aria-hidden="true"></i><a data-toggle="tab" class="@if($key ==0) active @endif" href="#menu-{{$key}}">{{$cate->name}}</a>
                                        </li>
                                        @endforeach

                                    </ul>
                                </div>
                                <div class="field_work_nav_list_box_action nav_ hidden">
                                    <a id="icon_prev" class="field_work_nav_list_icon prev" title="Lùi"
                                       data-toggle="tooltip" data-placement="top"><i class="fa fa-caret-left"></i></a>
                                    <a id="icon_next" class="field_work_nav_list_icon next" title="Tiến"
                                       data-toggle="tooltip" data-placement="top"><i class="fa fa-caret-right"></i></a>
                                </div>
                            </div>
                            <div class="field_work_nav_list_box hidden-lg hidden-md hidden-sm visibily-xs">
                                <ul class="field_work_short_tab">
                                    <li class="field_work_short_action"><span>Lĩnh vực hoạt động</span> <i
                                            class="fa fa-caret-down pull-right"></i></li>
                                    <ul class="field_work_short_content">
                                        @foreach($cates as $key => $cate)    
                                        <li class="@if($key ==0) active @endif">
                                            <a data-toggle="tab" href="#menu-{{$key}}">{{$cate->name}}</a>
                                        </li>
                                        @endforeach

                                    </ul>
                                </ul>
                            </div>

                            <div class="tab-content margin-top-30">

                                @foreach($cates as $k => $cate)
                                <div id="menu-{{$k}}" class="tab-pane fade in  @if($k ==0) active @endif">
                                    <div class="row">
                                        <div class="owl-field-work owl-carousel" data-md-items='4' data-sm-items='2'
                                             data-xs-items="1" data-margin='0'>
                                        <?php $products = DB::table('products')->where('cate_id', $cate->id)->where('status',1)->where('noibat',1)->get(); ?>
                                        @foreach($products as $product)
                                            <div class="col-xs-12">
                                                <div class="product-box field_work_short_tab_content ">
                                                    <div class="product-thumbnail field_work_short_tab_content_img ">
                                                        <a href="{{url('linh-vuc/'.$product->alias.'.html')}}"
                                                           title="Khu đô thị sinh thái Vinhomes Riverside">
                                                            <img src="{{asset('upload/product/'.$product->photo)}}" alt="{{$product->name}}">
                                                        </a>
                                                    </div>
                                                    <div class="product-info field_work_short_tab_content_title">
                                                        <p>{{$cate->name}}</p>
                                                        <h3><a href="{{url('linh-vuc/'.$product->alias.'.html')}}" title="{{$product->name}}">{{$product->name}}</a></h3>
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
                </div>
            </section>
        </div>
        <script>
            $(window).on("load resize", function (e) {
                if ($('.list_link li').length > 7) {
                    $('.nav_').removeClass('hidden');
                } else {
                    $('.nav_').addClass('hidden');
                    $('.list_link li').css('margin-right', '33px');
                }
            });
        </script>
    </section>

    <section class="awe-section-3">
        <!-- News -->
        <section class="news_home_main">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="bwt_title_main">
                            <h2><a href="">Tin tức & Sự kiện</a></h2>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 no-padding">
                        <!-- Bai viet big destop-->
                        <div class="col=xs-12 col-sm-12 col-md-6 col-lg-6 hidden-xs mobi_big_blog">


                            <div class="news_home_content">
                                <figure class="news_home_content_img">

                                    <a href="<?php echo url('tin-tuc/'.$hot_news[0]->alias.'.html') ?>">
                                        <picture>
                                            <source media="(max-width: 480px)" srcset="<?php echo asset('upload/news/'.$hot_news[0]->photo)?>">
                                            <source media="(min-width: 481px) and (max-width: 767px)" srcset="<?php echo asset('upload/news/'.$hot_news[0]->photo)?>">
                                            <source media="(min-width: 768px) and (max-width: 1023px)" srcset="<?php echo asset('upload/news/'.$hot_news[0]->photo)?>"> <source media="(min-width: 1024px) and (max-width: 1199px)"
                                                    srcset="<?php echo asset('upload/news/'.$hot_news[0]->photo)?>">
                                            <source media="(min-width: 1200px)"
                                                    srcset="<?php echo asset('upload/news/'.$hot_news[0]->photo)?>">
                                            <img src="<?php echo asset('upload/news/'.$hot_news[0]->photo)?>" title="<?php echo $hot_news[0]->name ?>" alt="<?php echo $hot_news[0]->name ?>">
                                        </picture>
                                    </a>

                                </figure>
                                <div class="news_home_content_short_big">
                                    <div class="news_home_content_short_time"><i class="fa fa-clock-o"></i>  <?php echo date('d/m/Y', strtotime($hot_news[0]->created_at)) ?>
                                    </div>

                                    <div class="news_home_content_short_info">
                                        <a href="<?php echo url('tin-tuc/'.$hot_news[0]->alias.'.html') ?>"><?php echo $hot_news[0]->name ?></a>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!-- End Bai viet big destop -->
                        <!-- Bai viet big mobile -->
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 hidden-lg hidden-md hidden-sm visibile-xs no-padding padding-bottom-25">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 small-blog-home">
                                <div class="news_home_content">
                                    <figure class="news_home_content_img">

                                        <a href="<?php echo url('tin-tuc/'.$hot_news[0]->alias.'.html') ?>">
                                            <picture>
                                                <source media="(max-width: 480px)" srcset="<?php echo url('tin-tuc/'.$hot_news[0]->alias.'.html') ?>">
                                                <source media="(min-width: 481px) and (max-width: 767px)"  srcset="<?php echo url('tin-tuc/'.$hot_news[0]->alias.'.html') ?>">
                                                <source media="(min-width: 768px) and (max-width: 1023px)" srcset="<?php echo url('tin-tuc/'.$hot_news[0]->alias.'.html') ?>">
                                                <source media="(min-width: 1024px) and (max-width: 1199px)"
                                                        srcset="images/6-min.jpg">
                                                <source media="(min-width: 1200px)" srcset="<?php echo url('tin-tuc/'.$hot_news[0]->alias.'.html') ?>">
                                                <img src="<?php echo url('tin-tuc/'.$hot_news[0]->alias.'.html') ?>"
                                                     title="<?php echo $hot_news[0]->name ?>" alt="<?php echo $hot_news[0]->name ?>">
                                            </picture>
                                        </a>

                                        <div class="news_home_content_icon">
                                            <a href="<?php echo url('tin-tuc/'.$hot_news[0]->alias.'.html') ?>"
                                               title="<?php echo $hot_news[0]->name ?>"><i class="fa fa-expand"></i></a>
                                        </div>
                                    </figure>
                                    <div class="news_home_content_short">
                                        <div class="news_home_content_short_time"><i class="fa fa-clock-o"></i>
                                            <?php echo date('d/m/Y', strtotime($hot_news[0]->created_at)) ?>
                                        </div>
                                        <h3 class="news_home_content_short_title"><a
                                                href=""><?php echo $hot_news[0]->name ?></a></h3>
                                        <div class="news_home_content_short_info">
                                            <?php echo $hot_news[0]->mota ?>
                                        </div>
                                        <div class="news_home_content_short_readmore">
                                            <a href="<?php echo url('tin-tuc/'.$hot_news[0]->alias.'.html') ?>">Xem tiếp <span><i
                                                    class="fa fa-arrow-circle-o-right"></i></span></a>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                        <!-- End Bai viet big mobile -->
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="row">


                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 small-blog-home">
                                    <div class="news_home_content">
                                        <figure class="news_home_content_img">

                                            <a href="<?php echo url('tin-tuc/'.$hot_news[1]->alias.'.html') ?>">
                                                <picture>
                                                    <source media="(max-width: 480px)"
                                                            srcset="<?php echo asset('upload/news/'.$hot_news[1]->photo)?>">
                                                    <source media="(min-width: 481px) and (max-width: 767px)"
                                                            srcset="<?php echo asset('upload/news/'.$hot_news[1]->photo)?>">
                                                    <source media="(min-width: 768px) and (max-width: 1023px)"
                                                            srcset="<?php echo asset('upload/news/'.$hot_news[1]->photo)?>">
                                                    <source media="(min-width: 1024px) and (max-width: 1199px)" srcset="<?php echo asset('upload/news/'.$hot_news[1]->photo)?>">
                                                    <source media="(min-width: 1200px)" srcset="<?php echo asset('upload/news/'.$hot_news[1]->photo)?>">
                                                    <img src="<?php echo asset('upload/news/'.$hot_news[1]->photo)?>"
                                                         title="<?php echo $hot_news[1]->name ?>" alt="<?php echo $hot_news[1]->name ?>">
                                                </picture>
                                            </a>

                                            <div class="news_home_content_icon">
                                                <a href="<?php echo url('tin-tuc/'.$hot_news[1]->alias.'.html') ?>"
                                                   title="<?php echo $hot_news[1]->name ?>"><i
                                                        class="fa fa-expand"></i></a>
                                            </div>
                                        </figure>
                                        <div class="news_home_content_short">
                                            <div class="news_home_content_short_time"><i class="fa fa-clock-o"></i>
                                                <?php echo date('d/m/Y', strtotime($hot_news[1]->created_at)) ?>
                                            </div>
                                            <h3 class="news_home_content_short_title"><a href="<?php echo url('tin-tuc/'.$hot_news[1]->alias.'.html') ?>"><?php echo $hot_news[1]->name ?></a></h3>
                                            <div class="news_home_content_short_info">
                                                <?php echo $hot_news[1]->mota ?>
                                            </div>
                                            <div class="news_home_content_short_readmore">
                                                <a href="<?php echo url('tin-tuc/'.$hot_news[1]->alias.'.html') ?>">Xem tiếp <span><i class="fa fa-arrow-circle-o-right"></i></span></a>
                                            </div>
                                        </div>

                                    </div>
                                </div>


                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 small-blog-home">
                                    <div class="news_home_content">
                                        <figure class="news_home_content_img">
                                            <a href="<?php echo url('tin-tuc/'.$hot_news[2]->alias.'.html') ?>">
                                                <picture>
                                                    <source media="(max-width: 480px)"
                                                            srcset="<?php echo asset('upload/news/'.$hot_news[2]->photo)?>">
                                                    <source media="(min-width: 481px) and (max-width: 767px)"
                                                            srcset="<?php echo asset('upload/news/'.$hot_news[2]->photo)?>">
                                                    <source media="(min-width: 768px) and (max-width: 1023px)"
                                                            srcset="<?php echo asset('upload/news/'.$hot_news[2]->photo)?>">
                                                    <source media="(min-width: 1024px) and (max-width: 1199px)"
                                                            srcset="<?php echo asset('upload/news/'.$hot_news[2]->photo)?>">
                                                    <source media="(min-width: 1200px)"
                                                            srcset="<?php echo asset('upload/news/'.$hot_news[2]->photo)?>">
                                                    <img src="<?php echo asset('upload/news/'.$hot_news[2]->photo)?>"
                                                         title="<?php echo $hot_news[2]->name ?>"
                                                         alt="<?php echo $hot_news[2]->name ?>">
                                                </picture>
                                            </a>

                                            <div class="news_home_content_icon">
                                                <a href="<?php echo url('tin-tuc/'.$hot_news[2]->alias.'.html') ?>"
                                                   title="<?php echo $hot_news[2]->name ?>"><i
                                                        class="fa fa-expand"></i></a>
                                            </div>
                                        </figure>
                                        <div class="news_home_content_short">
                                            <div class="news_home_content_short_time"><i class="fa fa-clock-o"></i>
                                                <?php echo date('d/m/Y', strtotime($hot_news[2]->created_at)) ?>
                                            </div>
                                            <h3 class="news_home_content_short_title"><a href="<?php echo url('tin-tuc/'.$hot_news[2]->alias.'.html') ?>"><?php echo $hot_news[2]->name ?></a></h3>
                                            <div class="news_home_content_short_info">
                                                <?php echo $hot_news[2]->mota ?>
                                            </div>
                                            <div class="news_home_content_short_readmore">
                                                <a href="<?php echo url('tin-tuc/'.$hot_news[2]->alias.'.html') ?>">Xem
                                                    tiếp <span><i class="fa fa-arrow-circle-o-right"></i></span></a>
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
        <!-- End News -->
    </section>


    <section class="awe-section-4">
        <!-- About And Video -->
        <section class="about_video_main">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-6 col-xs-6 full-xs">
                        <div class="bwt_title_main bwt_title_introduction">
                            <h2><a href="gioi-thieu.html">Giới thiệu</a></h2>
                        </div>

                        <div class="about_video_content">
                            <figure class="about_video_content_img">
                                <a href="gioi-thieu.html">
                                    <picture>
                                        <source media="(max-width: 480px)" srcset="{{asset('upload/hinhanh/'.$about->photo)}}">
                                        <source media="(min-width: 481px) and (max-width: 767px)" srcset="{{asset('upload/hinhanh/'.$about->photo)}}">
                                        <source media="(min-width: 768px) and (max-width: 1023px)" srcset="{{asset('upload/hinhanh/'.$about->photo)}}">
                                        <source media="(min-width: 1024px) and (max-width: 1199px)" srcset="{{asset('upload/hinhanh/'.$about->photo)}}">
                                        <source media="(min-width: 1200px)" srcset="{{asset('upload/hinhanh/'.$about->photo)}}">
                                        <img src="{{asset('upload/hinhanh/'.$about->photo)}}" alt="Dreamer" class="img-responsive">
                                    </picture>
                                </a>
                            </figure>
                            <div class="about_video_content_short">
                                <p>{!! $about->mota !!}</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-6 full-xs">
                        <div class="bwt_title_main  bwt_title_devloper">
                            <h2><a href="phat-trien.html">Phát triển bền vững</a></h2>
                        </div>
                        <div class="about_video_content">
                            <figure class="about_video_content_img">

                                <a href="linh-vuc-chi-tiet.html">
                                    <picture>
                                        <source media="(max-width: 480px)" srcset="{{asset('public/images/img2.jpg')}}">
                                        <source media="(min-width: 481px) and (max-width: 767px)" srcset="{{asset('public/images/img2.jpg')}}">
                                        <source media="(min-width: 768px) and (max-width: 1023px)" srcset="{{asset('public/images/img2.jpg')}}">
                                        <source media="(min-width: 1024px) and (max-width: 1199px)" srcset="{{asset('public/images/img2.jpg')}}">
                                        <source media="(min-width: 1200px)" srcset="{{asset('public/images/img2.jpg')}}">
                                        <img src="{{asset('public/images/img2.jpg')}}" alt="Dreamer" class="img-responsive">
                                    </picture>
                                </a>
                            </figure>
                            <div class="about_video_content_short">
                                <ul>
                                    <li><a href="#"><i class="fa fa-forumbee" aria-hidden="true"></i> Văn hóa doanh
                                        nghiệp & sứ mệnh</a></li>
                                    <li><a href="#"><i class="fa fa-bullhorn" aria-hidden="true"></i> Giá trị cốt lỗi &
                                        chiến lược phát triển</a></li>
                                    <li><a href="#"><i class="fa fa-user" aria-hidden="true"></i> Chiến lược con người
                                        toàn diện</a></li>
                                    <li><a href="#"><i class="fa fa-spinner" aria-hidden="true"></i> Cơ cấu tổ chức &
                                        lĩnh vực hoạt động</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-xs-12 video">
                        <div class="bwt_title_main bwt_title_video">
                            <h2><a href="">Thư viện ảnh & Video</a></h2>
                        </div>
                        <div class="about_video_content">
                            <figure class="about_video_content_img">
                                <a class="about_video_icon fancybox_video fancybox.iframe"
                                   href="https://www.youtube.com/embed/V7YbJHSLAmE">
                                    <div class="about_video_content_icon"><i class="fa fa-play-circle-o"></i></div>
                                </a>
                                <picture>
                                    <source media="(max-width: 480px)"
                                            srcset="{{asset('public/images/img_about.png')}}">
                                    <source media="(min-width: 481px) and (max-width: 767px)"
                                            srcset="{{asset('public/images/img_about.png')}}">
                                    <source media="(min-width: 768px) and (max-width: 1023px)"
                                            srcset="{{asset('public/images/img_about.png')}}">
                                    <source media="(min-width: 1024px) and (max-width: 1199px)"
                                            srcset="{{asset('public/images/img_about.png')}}">
                                    <source media="(min-width: 1200px)"
                                            srcset="{{asset('public/images/img_about.png')}}">
                                    <img src="{{asset('public/images/img_about.png')}}" alt="Dreamer" class="img-responsive">
                                </picture>

                                <h2><a class="fancybox_video fancybox.iframe"
                                       href="https://www.youtube.com/embed/V7YbJHSLAmE"></a></h2>
                            </figure>

                            <div class="about_video_content_short">
                                <ul>
                                    <li><span class="about_video_content_text">Xem & download thư viện hình ảnh, video clip, ấn phẩm tiêu biểu của tập đoàn</span>
                                    </li>
                                    <li><a href="#"><i class="fa fa-camera" aria-hidden="true"></i> Tham quan văn phòng
                                        của Dreamer</a></li>
                                    <li><a href="#"><i class="fa fa-play-circle-o" aria-hidden="true"></i> Video giới
                                        thiệu & sản phẩm, dự án</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End About And Video -->
    </section>


    <section class="awe-section-5">
        <!-- Feedback Customers -->
        <section class="feedback_customers">
            <div class="container">
                <div class="feedback_customers_inner">
                    <div id="sync1" class="owl-carousel owl-theme not-dqowl">

                        @foreach($feedbacks as $feedback)
                        <div class="item">
                            <figure class="feedback_customers_icon">
                                <img src="{{asset('public/images/dau-hoi.png')}}" alt="Dreamer">
                            </figure>
                            <div class="feedback_customers_content text-center">
                                <em> {!! $feedback->content !!}</em>
                            </div>
                        </div>
                        @endforeach

                    </div>
                    <div class="feedback_customers_inner_line"></div>
                    <div id="sync2" class="owl-carousel owl-theme not-dqowl">
                     @foreach($feedbacks as $feedback)
                        <div class="item">
                            <figure class="feedback_customers_avatar_icon">
                                <img src="{{asset('upload/hinhanh/'.$feedback->photo)}}" alt="{{$feedback->name}}">
                            </figure>
                            <div class="feedback_customers_avatar_content">
                                <h2><strong>{{$feedback->name}}</strong></h2>
                                <em>Marketing</em>
                                <div class="feedback_customers_avatar_content_star">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                        </div>
                    @endforeach
                    </div>
                </div>
            </div>
        </section>
        <!-- End Feedback Customers -->
    </section>

</section>
@endsection
