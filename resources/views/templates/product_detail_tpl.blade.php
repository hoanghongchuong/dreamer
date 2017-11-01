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
                <a  href="{{url('')}}" ><span >Trang chủ</span></a>
                <span><i class="fa fa-angle-right"></i></span>
            </li>


            <li>
                <a href="{{url('linh-vuc-hoat-dong')}}"><span >Lĩnh vực hoạt động</span></a>
                <span><i class="fa fa-angle-right"></i></span>
            </li>

            <li><strong><span >{{$product_detail->name}}</span></strong><li>

        </ul>

    </div>
</section>

<section class="product">
    <div class="container">
        <div class="hidden-md hidden-lg">
            <aside class="aside-item sidebar-category blog-category">
                <div class="aside-heading">
                    <button data-target=".bs-example-js-aside-category" data-toggle="collapse" type="button" class="navbar-toggle">
                        <i class="fa fa-bars" aria-hidden="true"></i>
                    </button>
                    <h2 class="title-head"><span>Danh sách dự án</span></h2>
                </div>
                <div class="aside-content">
                    <nav class="nav-category  navbar-toggleable-md navbar-collapse collapse navPillsDuc bs-example-js-aside-category" >
                        <ul class="nav navbar-pills">
                            <li class="nav-item">
                                <i class="fa fa-caret-right"></i>
                                <a class="nav-link" href="{{url('gioi-thieu')}}">Giới thiệu</a></li>
                            <li class="nav-item">
                                <i class="fa fa-caret-right"></i>
                                <a href="{{url('linh-vuc-hoat-dong')}}" class="nav-link">Lĩnh vực hoạt động</a>
                                <i class="fa fa-angle-down a" ></i>
                                <ul class="dropdown-menu">
                                    @foreach($cate_pro as $cate)
                                    <li class="nav-item">
                                        <i class="fa fa-caret-right"></i>
                                        <a class="nav-link" href="{{url('linh-vuc/'.$cate->alias)}}">{{$cate->name}}</a>
                                    </li>
                                    @endforeach
                                </ul>
                            </li>
                            <li class="nav-item">
                                <i class="fa fa-caret-right"></i>
                                <a class="nav-link" href="phat-trien.html">Phát triển bền vững</a>
                            </li>
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
        </div>
        <div class="row content-product">
            <div class="details-product col-lg-9 col-lg-push-3">
                <h1 class="title-heads" itemprop="name">{{$product_detail->name}}</h1>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="thumbs_gallery_vertical">
                            <div class="swiper-container gallery-top">
                                <div class="swiper-wrapper large-image zoom-gallery">
                                    @if(count($album_hinh)>0)
                                    @foreach($album_hinh as $img)
                                        <div class="swiper-slide">
                                            <a href="images/2-min.jpg">
                                                <img  src="{{asset('upload/hasp/'.$img->photo)}}" alt="">
                                            </a>
                                        </div>
                                    @endforeach
                                    @else
                                        <div class="swiper-slide">
                                            <a href="images/2-min.jpg">
                                                <img  src="{{asset('upload/product/'.$product_detail->photo)}}" alt="">
                                            </a>
                                        </div>
                                    @endif
                                </div>
                            </div>
                            <div class="swiper-container gallery-thumbs">
                                <div class="swiper-wrapper">
                                @if(count($album_hinh)>0)
                                    @foreach($album_hinh as $img)
                                    <div class="swiper-slide">
                                        <img  src="{{asset('upload/hasp/'.$img->photo)}}" alt="">
                                    </div>
                                    @endforeach
                                 @else
                                    <div class="swiper-slide">
                                        <img  src="{{asset('upload/product/'.$product_detail->photo)}}" alt="">
                                    </div>   
                                @endif
                                </div>
                            </div>
                            <!-- Add Arrows -->
                            <div class="swiper-button-next swiper-button-white"></div>
                            <div class="swiper-button-prev swiper-button-white"></div>

                            <!--<div class="fs-icon" title="Expand/Close"></div>-->
                        </div>
                    </div>

                    <div class="col-xs-12 details-pro">

                        <div class="product-summary product_description">
                            <div class="rte description">

                                <p><strong>Tên dự án: </strong>{{$product_detail->name}}<br />
                                    <strong>Khu vực:</strong> {{$product_detail->address}}<br />
                                    <strong>Diện tích:</strong> {{$product_detail->dientich}}<br />
                                    <strong>Quy mô dự án:</strong> {{$product_detail->quymo}}</p>

                            </div>
                        </div>

                        <div class="row">
                            <div class="form-product">
                                <form enctype="multipart/form-data" id="add-to-cart-form" action="" method="post" class="form-inline">
                                   
                                    <div class="col-xs-12 col-sm-6 col-md-9 col-lg-9">
                                        <div class="price-box">

                                            <div class="special-price">
                                                <span itemprop="price" class="price product-price">{{number_format($product_detail->price)}} ₫</span>
                                                <meta itemprop="priceCurrency" content="VND">
                                            </div> <!-- Giá -->

                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                                        <div class="phone-support" onclick="window.location.href='{{$setting->phone}}">
                                            <i class="fa fa-mobile" aria-hidden="true"></i>
                                            <div class="phone_rightx">
                                                <span class="sp">Gọi ngay để được hỗ trợ</span>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>


                        <span class="social_wish_right">
                            <ul class="share_product">
                                <li class="block-share-cs fb"><a title="{{$product_detail->name}} lên Facebook" target="_blank" href="http://www.facebook.com/sharer.php?u={{url('linh-vuc/'.$product_detail->alias.'.html')}}"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                </li>
                                <li class="block-share-cs googleplus"><a title="{{$product_detail->name}} lên Google plus" target="_blank" href="https://plus.google.com/share?url={{url('linh-vuc/'.$product_detail->alias.'.html')}}"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                                </li>
                                <li class="block-share-cs tw"><a title="{{$product_detail->name}} lên Twitter" target="_blank" href="http://twitter.com/share?url={{url('linh-vuc/'.$product_detail->alias.'.html')}}"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                </li>
                                <li class="block-share-cs pintrest"><a title="{{$product_detail->name}} lên Pintrest" target="_blank" href="http://www.pinterest.com/pin/create/button/?url={{url('linh-vuc/'.$product_detail->alias.'.html')}}"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a>
                                </li>
                                <li class="block-share-cs linkedin"><a title="{{$product_detail->name}} lên Linkedin" target="_blank" href="http://www.linkedin.com/shareArticle?url={{url('linh-vuc/'.$product_detail->alias.'.html')}}"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                </li>
                            </ul>
                        </span>
                    </div>
                </div>
                <div class="row">

                    <div class="col-xs-12">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs product-tabs-title nav-tab-detailspro" role="tablist">
                            <li class="nav-item nav-itemx li1 active">
                                <a class="nav-link nav-linkx" data-toggle="tab" href="#pd-1">Mô tả</a>
                            </li>
                            <li class="nav-item nav-itemx li2">
                                <a class="nav-link nav-linkx" data-toggle="tab" href="#pd-2">Bình luận</a>
                            </li><!-- 
                            <li class="nav-item nav-itemx li3">
                                <a class="nav-link nav-linkx" data-toggle="tab" href="#pd-3">Đánh giá(APP)</a>
                            </li> -->
                        </ul>
                        <div class="tab-content product-tabs-content tab-content-detailspro">

                            <div class="tab-pane fade in active rte" role="tabpanel" id="pd-1">
                                <div class="productdetail-l">
                                    <div class="product-body">
                                        <div class="content">
                                            {!! $product_detail->content !!}
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="tab-pane fade" id="pd-2" role="tabpanel">
                                <div class="fb-comments" data-href="{{url('linh-vuc/'.$product_detail->alias.'.html')}}" data-numposts="5"></div>
                            </div>
                            <!-- <div class="tab-pane fade" id="pd-3" role="tabpanel">
                                <div id="bizweb-product-reviews" class="bizweb-product-reviews" data-id="6827918">
                                </div>
                            </div> -->

                        </div>
                    </div>



                </div>
            </div>


            <aside class="sidebar left left-content col-lg-3 col-lg-pull-9">

                <div class="hidden-xs hidden-sm">
                    <aside class="aside-item sidebar-category blog-category">
                        <div class="aside-heading">
                            <button data-target=".bs-example-js-aside-category" data-toggle="collapse" type="button" class="navbar-toggle">
                                <i class="fa fa-bars" aria-hidden="true"></i>
                            </button>
                            <h2 class="title-head"><span>Danh sách dự án</span></h2>
                        </div>
                        <div class="aside-content">
                            <nav class="nav-category  navbar-toggleable-md navbar-collapse collapse navPillsDuc bs-example-js-aside-category" >
                                <ul class="nav navbar-pills">


                                    <li class="nav-item">
                                        <i class="fa fa-caret-right"></i>
                                        <a class="nav-link" href="{{url('gioi-thieu')}}">Giới thiệu</a></li>



                                    <li class="nav-item">
                                        <i class="fa fa-caret-right"></i>
                                        <a href="{{url('linh-vuc-hoat-dong')}}" class="nav-link">Lĩnh vực hoạt động</a>
                                        <i class="fa fa-angle-down a" ></i>
                                        <ul class="dropdown-menu">
                                            @foreach($cate_pro as $cate)
                                            <li class="nav-item">
                                                <i class="fa fa-caret-right"></i>
                                                <a class="nav-link" href="{{url('linh-vuc/'.$cate->alias)}}">{{$cate->name}}</a>
                                            </li>
                                            @endforeach

                                        </ul>
                                    </li>
                                    <li class="nav-item">
                                        <i class="fa fa-caret-right"></i>
                                        <a class="nav-link" href="phat-trien.html">Phát triển bền vững</a></li>



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
                </div>

                <div class="aside-item collection-aside">

                    <div class="aside-heading">
                        <h2 class="title-box-fu title-heading"><a href="">Dự án liên quan</a></h2>
                    </div>
                    <div class="aside-content">
                        <ul class="list_product_aside_collection Dlist_Uproduct_Csidebar">
                            @foreach($productSameCate as $p)
                            <li class="item">
                                <div class="product-box field_work_short_tab_content">
                                    <div class="product-thumbnail field_work_short_tab_content_img">
                                        <a href="{{url('linh-vuc/'.$p->alias.'.html')}}" title="{{$p->name}}">
                                            <img src="{{asset('upload/product/'.$p->photo)}}" alt="">
                                        </a>
                                    </div>
                                    <div class="product-info field_work_short_tab_content_title">
                                        <!-- <p>Trung tâm thương mại</p> -->
                                        <h3><a href="{{url('linh-vuc/'.$p->alias.'.html')}}" title="{{$p->name}}">{{$p->name}}</a></h3>
                                    </div>
                                </div>
                            </li>
                            @endforeach
                        </ul>

                    </div>
                </div>

            </aside>


        </div>
    </div>
</section>


<link href="{{asset('public/css/lightbox.css')}}" rel='stylesheet' type='text/css' />

<script src="{{asset('public/js/jquery.elevatezoom308.min.js')}}" type='text/javascript'></script>



<script src="{{asset('public/js/jquery.prettyphoto.min005e.js')}}" type='text/javascript'></script>
<script src="{{asset('public/js/jquery.prettyphoto.init.min367a.js')}}" type='text/javascript'></script>


<link href="{{asset('public/css/ninja-slider.css')}}" rel='stylesheet' type='text/css' />
<script src="{{asset('public/js/ninja-slider.js')}}" type='text/javascript'></script>
<link href="{{asset('public/css/thumbnail-slider.css')}}" rel='stylesheet' type='text/css' />
<script src="{{asset('public/js/thumbnail-slider.js')}}" type='text/javascript'></script>
<script>
    var galleryTop = new Swiper('.gallery-top', {
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        spaceBetween: 0,
        loop: false,
        loopedSlides: 5 //looped slides should be the same
    });
    var galleryThumbs = new Swiper('.gallery-thumbs', {
        spaceBetween: 20,
        initialSlide: 5,
        slidesPerView: 5,
        loop: false,
        direction: 'vertical',
        mousewheelControl: true,
        centeredSlides: true,
        slideToClickedSlide: true
    });
    galleryTop.params.control = galleryThumbs;
    galleryThumbs.params.control = galleryTop;

</script>
<script>
    $(document).ready(function () {
        $('.zoom-gallery').magnificPopup({
            delegate: 'a',
            type: 'image',
            closeOnContentClick: false,
            closeBtnInside: false,
            mainClass: 'mfp-with-zoom mfp-img-mobile',
            gallery: {
                enabled: true
            },
            zoom: {
                enabled: true,
                duration: 300, // don't foget to change the duration also in CSS
                opener: function (element) {
                    return element.find('img');
                }
            }

        })
    });
</script>
<script>
    $(document).ready(function(){
        $(".fs-icon").click(function(){
            $(".thumbs_gallery_vertical").toggleClass("thumbs_gallery_vertical_zoom");
        });
    });
</script>

<script>


    if($(window).width()<768){

        $('.nav-tab-detailspro .nav-itemx:nth-child(1) ').append('<div class="tab-content thongtin"></div>');
        $('.nav-tab-detailspro .nav-itemx:nth-child(1) .tab-content').append($('#pd-1').html());
        $('.nav-tab-detailspro .nav-itemx:nth-child(1)').addClass('active');

        $('.nav-tab-detailspro .nav-itemx:nth-child(2)').append('<div class="tab-content danhgia"></div>');
        $('.nav-tab-detailspro .nav-itemx:nth-child(2) .tab-content').append($('#pd-2').html());

        $('.nav-tab-detailspro .nav-itemx:nth-child(3)').append('<div class="tab-content tags"></div>');
        $('.nav-tab-detailspro .nav-itemx:nth-child(3) .tab-content').append($('#pd-3').html());

        $('.tab-content-detailspro').hide();
        /*$('.nav-itemx').click(function(e){
         $(this).toggleClass('active');
         $(this).find('.nav-linkx').addClass('active');
         e.preventDefault();
         })*/
        $(".li1 .nav-link").click(function(){
            $(".thongtin").toggle();
        });
        $(".li2 .nav-link").click(function(){
            $(".danhgia").toggle();
        });
        $(".li3 .nav-link").click(function(){
            $(".tags").toggle();
        });


    }




    
    jQuery(function($) {


        // Add label if only one product option and it isn't 'Title'. Could be 'Size'.





        // Hide selectors if we only have 1 variant and its title contains 'Default'.

        $('.selector-wrapper').hide();

        $('.selector-wrapper').css({
            'text-align':'left',
            'margin-bottom':'15px'
        });
    });

    jQuery('.swatch :radio').change(function() {
        var optionIndex = jQuery(this).closest('.swatch').attr('data-option-index');
        var optionValue = jQuery(this).val();
        jQuery(this)
            .closest('form')
            .find('.single-option-selector')
            .eq(optionIndex)
            .val(optionValue)
            .trigger('change');
    });

    $('.qtyplus').click(function(e){
        e.preventDefault();
        fieldName = $(this).attr('data-field');
        var currentVal = parseInt($('input[data-field='+fieldName+']').val());
        if (!isNaN(currentVal)) {
            $('input[data-field='+fieldName+']').val(currentVal + 1);
        } else {
            $('input[data-field='+fieldName+']').val(0);
        }

    })

    $(".qtyminus").click(function(e) {
        e.preventDefault();
        fieldName = $(this).attr('data-field');
        var currentVal = parseInt($('input[data-field='+fieldName+']').val());
        if (!isNaN(currentVal) && currentVal > 1) {
            $('input[data-field='+fieldName+']').val(currentVal - 1);
        } else {
            $('input[data-field='+fieldName+']').val(1);
        }

    })

    $(document).ready(function() {
        $('#zoom_01').elevateZoom({
            gallery:'gallery_01',
            zoomWindowWidth:420,
            zoomWindowHeight:500,
            zoomWindowOffetx: 10,
            easing : true,
            scrollZoom : true,
            cursor: 'pointer',
            galleryActiveClass: 'active',
            imageCrossfade: true

        });
    });
    $('#gallery_01 img, .swatch-element label').click(function(e){
        $('.checkurl').attr('href',$(this).attr('src'));
        setTimeout(function(){
            $('.zoomContainer').remove();
            $('#zoom_01').elevateZoom({
                gallery:'gallery_01',
                zoomWindowWidth:420,
                zoomWindowHeight:500,
                zoomWindowOffetx: 10,
                easing : true,
                scrollZoom : true,
                cursor: 'pointer',
                galleryActiveClass: 'active',
                imageCrossfade: true

            });

        },300);

    })
</script>


@endsection
