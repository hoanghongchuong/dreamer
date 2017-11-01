<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <?php 
        $setting = Cache::get('setting'); 
        $product_list = Cache::get('product_list');
    ?>
    <meta http-equiv="content-language" content="vi" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
    <meta name="robots" content="noindex, nofollow" />
    <meta name='revisit-after' content='1 days' /> 
    <title><?php if(!empty($title)) echo $title; else echo $setting->title; ?></title>
    <meta name="author" content="{!! $setting->website !!}" />
    <meta name="copyright" content="GCO" />
    <meta name="keywords" content="<?php if(!empty($keyword)) echo $keyword; else echo $setting->keyword; ?>" />
    <meta name="description" content="<?php if(!empty($description)) echo $description; else echo $setting->description; ?>" />
    <meta http-equiv="content-language" content="vi" />
    <meta property="og:title" content="<?php if(!empty($title)) echo $title; else echo $setting->title; ?>" />
    <meta property="og:locale" content="vi_VN"/>
    <meta property="og:url" content="{!! $setting->website !!}" />
    <meta property="og:site_name" content="<?php if(!empty($title)) echo $title; else echo $setting->title; ?>" />
    <meta property="og:type" content="website" />
    <meta property="og:image" content="<?php if(!empty($img_share)) echo $img_share; else echo asset('upload/hinhanh/'.$setting->photo) ?>" />
    <meta property="og:description" content="<?php if(!empty($description)) echo $description; else echo $setting->description; ?>" />

    <meta name="googlebot" content="all, index, follow" />
    <meta name="geo.region" content="VN" />
    <meta name="geo.position" content="10.764338, 106.69208" />
    <meta name="geo.placename" content="Hà Nội" />
    <meta name="Area" content="HoChiMinh, Saigon, Hanoi, Danang, Vietnam" />
    <link rel="shortcut icon" href="{!! asset('upload/hinhanh/'.$setting->favico) !!}" type="image/png" />

    <link rel="stylesheet" href="{{asset('public/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('public/css/font-awesome.min.css')}}">
    <link rel="stylesheet" href="{{asset('public/css/simple-line-icons.css')}}">
    <link rel="stylesheet" href="{{asset('public/css/swiper.min.css')}}"/>
    <link rel="stylesheet" href="{{asset('public/css/jquery.fancybox.min.css')}}"/>
    <link rel="stylesheet" href="{{asset('public/css/magnific-popup.min.css')}}"/>
    <link rel='stylesheet' href="{{asset('public/css/owl.carousel.min.css')}}"/>

    <!-- Build Main CSS -->
    <link href="{{asset('public/css/base.css')}}" rel='stylesheet' type='text/css'/>
    <link href="{{asset('public/css/style.css')}}" rel='stylesheet' type='text/css'/>
    <link href="{{asset('public/css/styles.css')}}" rel='stylesheet' type='text/css'/>
    <link href="{{asset('public/css/responsive.css')}}" rel='stylesheet' type='text/css'/>
    <link href="{{asset('public/css/animate.css')}}" rel='stylesheet' type='text/css'/>

    <!-- Header JS -->
    <script src="{{asset('public/js/jquery-2.2.3.min.js')}}" type='text/javascript'></script>


</head>
<body>
   <div id="page">
        <section id="page_content">
            @include('templates.layout.header')
            @yield('content')
            @include('templates.layout.footer')
        </section>
   </div>
    
    {{ $setting->codechat }}
    {{ $setting->analytics }}
    @yield('script')


<!-- Plugin JS -->
<script src="{{asset('public/js/owl.carousel.min.js')}}" type='text/javascript'></script>
<script src="{{asset('public/js/bootstrap.min.js')}}"></script>
<script src="{{asset('public/js/swiper.min.js')}}"></script>
<script src="{{asset('public/js/jquery.fancybox.min.js')}}"></script>
<script src="{{asset('public/js/jquery.magnific-popup.min.js')}}"></script>

<!-- Main JS -->
<script src="{{asset('public/js/main.js')}}" type='text/javascript'></script>
<script src="{{asset('public/js/js_custom.js')}}" type='text/javascript'></script>
<!-- Product detail JS,CSS -->


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
</body>
</html>