@extends('index')
@section('content')
<section class="bread-crumb">
    <div class="container">

        <ul class="breadcrumb">
            <li class="home">
                <a itemprop="url" href="{{url('')}}" ><span itemprop="title">Trang chủ</span></a>
                <span><i class="fa fa-angle-right"></i></span>
            </li>
            <li class="home">
                <a itemprop="url" href="{{url('linh-vuc-hoat-dong')}}" ><span itemprop="title"> Lĩnh vực hoạt động</span></a>
                <span><i class="fa fa-angle-right"></i></span>
            </li>
            <!-- <li><strong><span itemprop="title"> > </span></strong></li> -->
            <li><strong><span itemprop="title"> {{$product_cate->name}}</span></strong></li>
        </ul>

    </div>
</section>

<div class="container">
    <div class="row">
        <section class="main_container collection col-lg-12 ">
            <h1 class="title-head margin-top-20" style="font-size:27px;color:#575454;">Lĩnh vực hoạt động</h1>
            <div class="category-products products">

                <!-- <div class="sortPagiBar">
                    <div class="collection-filter-panel">
                        <div class="filter-type btn-group">
                            <button class="btn btn-2 dropdown-toggle button-1 droplist1" data-toggle="dropdown">
                                <i class="icon-exchange"></i><span class="select-name1" >Loại sản phẩm</span>
                                <i class="icon-chevron-down"></i>
                            </button>
                            <ul class="dropdown-menu drop-sortby sortby-1" role="menu">
                                <li><a href='' title='Bệnh viện'>Bệnh viện</a></li>
                                <li><a href='' title='Khu căn hộ'>Khu căn hộ</a></li>
                                <li><a href='' title='Khu đô thị'>Khu đô thị</a></li>
                                <li><a href='' title='Khu nghỉ dưỡng'>Khu nghỉ dưỡng</a></li>
                                <li><a href='' title='Trung tâm thương mại'>Trung tâm thương mại</a></li>
                                <li><a href='' title='Trường học'>Trường học</a></li>
                            </ul>
                        </div>
                        <div class="filter-vendor btn-group">
                            <button class="btn btn-2 dropdown-toggle button-2 droplist" data-toggle="dropdown">
                                <i class="icon-exchange"></i><span class="select-name">Nhà sản xuất</span>
                                <i class="icon-chevron-down"></i>
                            </button>
                            <ul class="dropdown-menu drop-sortby sortby-2" role="menu">
                                <li><a href='' title='Bitexco'>Bitexco</a></li>
                                <li><a href='' title='DKT'>DKT</a></li>
                                <li><a href='' title='Garden'>Garden</a></li>
                                <li><a href='' title='Novaland'>Novaland</a></li>
                                <li><a href='' title='Vingroup'>Vingroup</a></li>
                            </ul>
                        </div>
                    </div>
                </div> -->
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
                        @foreach($product as $item)
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 product-gird-cl">
                            <div class="product-box field_work_short_tab_content ">
                                <div class="product-thumbnail field_work_short_tab_content_img ">
                                    <a href="{{url('linh-vuc/'.$item->alias.'.html')}}" title="{{$item->name}}">
                                        <img src="{{asset('upload/product/'.$item->photo)}}" alt="{{$item->name}}">
                                    </a>
                                </div>
                                <div class="product-info field_work_short_tab_content_title">
                                    <p>{{$product_cate->name}}</p>
                                    <h3><a href="{{url('linh-vuc/'.$item->alias.'.html')}}" title="{{$item->name}}">{{$item->name}}</a></h3>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                    <div class="text-right">
                        <!-- <nav>
                            <ul class="pagination clearfix">
                                <li class="page-item"><a class="page-link" href=""><i class="fa fa-angle-left" aria-hidden="true"></i></a></li>
                                <li class="page-item disabled"><a class="page-link" href="#"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li>


                                <li class="active page-item disabled"><a class="page-link" href="#">1</a></li>

                                <li class="page-item"><a class="page-link" href="">2</a></li>


                                <li class="page-item"><a class="page-link" href=""><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                <li class="page-item disabled"><a class="page-link" href="#"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                            </ul>
                        </nav> -->
                        <div class="">{!! $product->links() !!}</div>
                    </div>
                </section>
<!-- 
                <div class="ensure">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="bwt_title_main">
                                <h2><a href="#">Phát triển dự án</a></h2>
                            </div>
                            <div class="ensure_work_short">
                                Với mong muốn đem đến cho thị trường những sản phẩm - dịch vụ theo tiêu chuẩn quốc tế và những trải nghiệm hoàn toàn mới về phong cách sống hiện đại, ở bất cứ lĩnh vực nào  cũng chứng tỏ vai trò tiên phong, dẫn dắt sự thay đổi xu hướng tiêu dùng. Chúng tôi đã làm nên những điều kỳ diệu để tôn vinh thương hiệu Việt và tự hào là một trong những Tập đoànkinh tế tư nhân hàng đầu Việt Nam.
                            </div>
                            <div class="ensure_content_2">
                                <div class="row">

                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 ensure_cl">

                                        <div class="item-ensure">
                                            <figure class="ensure_icon">
                                                <i class="fa fa-home " aria-hidden="true"></i>
                                            </figure>
                                            <div class="ensure_content">
                                                <a class="bold-ensure" href="#">Bất động sản</a>
                                                <span>Khách sạn & Du lịch</span>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 ensure_cl">

                                        <div class="item-ensure">
                                            <figure class="ensure_icon">
                                                <i class="fa fa-graduation-cap " aria-hidden="true"></i>
                                            </figure>
                                            <div class="ensure_content">
                                                <a class="bold-ensure" href="#">Du lịch & Giáo dục</a>
                                                <span>Khách sạn & Du lịch</span>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 ensure_cl">

                                        <div class="item-ensure">
                                            <figure class="ensure_icon">
                                                <i class="fa fa-home " aria-hidden="true"></i>
                                            </figure>
                                            <div class="ensure_content">
                                                <a class="bold-ensure" href="#">Vui chơi - Giải trí</a>
                                                <span>Khách sạn & Du lịch</span>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 ensure_cl">

                                        <div class="item-ensure">
                                            <figure class="ensure_icon">
                                                <i class="fa fa-delicious " aria-hidden="true"></i>
                                            </figure>
                                            <div class="ensure_content">
                                                <a class="bold-ensure" href="#">Trung tâm Thương mại</a>
                                                <span>Vinpearl Nha Trang, Royal City, Times </span>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 ensure_cl">

                                        <div class="item-ensure">
                                            <figure class="ensure_icon">
                                                <i class="fa fa-home " aria-hidden="true"></i>
                                            </figure>
                                            <div class="ensure_content">
                                                <a class="bold-ensure" href="#">Thương mại điển tử viễn thông</a>
                                                <span>Khách sạn & Du lịch</span>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 ensure_cl">

                                        <div class="item-ensure">
                                            <figure class="ensure_icon">
                                                <i class="fa fa-plane " aria-hidden="true"></i>
                                            </figure>
                                            <div class="ensure_content">
                                                <a class="bold-ensure" href="#">Du lịch & Khám phá</a>
                                                <span>Khách sạn & Du lịch</span>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 ensure_cl">

                                        <div class="item-ensure">
                                            <figure class="ensure_icon">
                                                <i class="fa fa-home " aria-hidden="true"></i>
                                            </figure>
                                            <div class="ensure_content">
                                                <a class="bold-ensure" href="#">Trung tâm Ẩm thực & Hội nghị</a>
                                                <span>Khách sạn & Du lịch</span>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 ensure_cl">

                                        <div class="item-ensure">
                                            <figure class="ensure_icon">
                                                <i class="fa fa-home " aria-hidden="true"></i>
                                            </figure>
                                            <div class="ensure_content">
                                                <a class="bold-ensure" href="#">Du lịch & Khám phá</a>
                                                <span>Khách sạn & Du lịch</span>
                                            </div>
                                        </div>

                                    </div>


                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 ensure_cl">

                                        <div class="item-ensure">
                                            <figure class="ensure_icon">
                                                <i class="fa fa-plane " aria-hidden="true"></i>
                                            </figure>
                                            <div class="ensure_content">
                                                <a class="bold-ensure" href="#">Du lịch & Khám phá</a>
                                                <span>Khách sạn & Du lịch</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> -->
            </div>
        </section>
    </div>
</div>

@endsection
