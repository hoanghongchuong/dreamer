@extends('index')
@section('content')
@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
?>
@extends('index')
@section('content')
<section class="bread-crumb">
    <div class="container">

        <ul class="breadcrumb">
            <li class="home">
                <a itemprop="url" href="{{url('')}}" ><span itemprop="title">Trang chủ</span></a>
                <span><i class="fa fa-angle-right"></i></span>
            </li>
            
            <li><strong><span itemprop="title"> Kết quả tìm kiếm</span></strong></li>
        </ul>

    </div>
</section>

<div class="container">
    <div class="row">
        <section class="main_container collection col-lg-12 ">
            <h1 class="title-head margin-top-20" style="font-size:27px;color:#575454;">Lĩnh vực hoạt động</h1>
            <div class="category-products products">

                <script>
                    $(function(){

                        $(".filter-vendor .sortby-2 li").click(function(){
                            var text = $('.filter-vendor .sortby-2 li.active a').text();
                            $(".droplist .select-name").text(text);
                        });

                        if ($(".filter-vendor .sortby-2 li").hasClass('active')) {
                            var text = $('.filter-vendor .sortby-2 li.active a').text();
                            $(".droplist .select-name").text(text);
                        } else {
                            $(".droplist .select-name").text('Nhà sản xuất');
                        }
                        $(".filter-type .sortby-1 li").click(function(){
                            var text = $('.filter-type .sortby-1 li.active a').text();
                            $(".droplist1 .select-name1").text(text);
                        });
                        if ($(".filter-type .sortby-1 li").hasClass('active')) {
                            var text = $('.filter-type .sortby-1 li.active a').text();
                            $(".droplist1 .select-name1").text(text);

                        } else {
                            $(".droplist1 .select-name1").text('Loại sản phẩm');
                        }
                    });
                </script>
                <section class="products-view products-view-grid">
                    <div class="row">
                        @foreach($products as $item)
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 product-gird-cl">
                            <div class="product-box field_work_short_tab_content ">
                                <div class="product-thumbnail field_work_short_tab_content_img ">
                                    <a href="{{url('linh-vuc/'.$item->alias.'.html')}}" title="{{$item->name}}">
                                        <img src="{{asset('upload/product/'.$item->photo)}}" alt="{{$item->name}}">
                                    </a>
                                </div>
                                <div class="product-info field_work_short_tab_content_title">
                                    
                                    <h3><a href="{{url('linh-vuc/'.$item->alias.'.html')}}" title="{{$item->name}}">{{$item->name}}</a></h3>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                    <div class="text-right">
                        
                        <div class="">{!! $products->links() !!}</div>
                    </div>
                </section>
            </div>
        </section>
    </div>
</div>

@endsection

@endsection

@endsection
