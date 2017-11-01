<?php
	$slider = DB::table('slider')->select()->where('status',1)->where('com','gioi-thieu')->orderBy('created_at','desc')->get();

?>
@if(isset($slider))


	<div class="page-slider padding-top-15">
        <div class="home-slider owl-carousel" data-md-items='1' data-sm-items='1' data-xs-items="1" data-margin='0'>
            @foreach($slider as $item)
            <div class="item">
                <a href="{{$item->link}}" class="clearfix">
                    <img src="{{ asset('upload/hinhanh/'.$item->photo) }}" alt="">
                </a>
            </div>
            @endforeach
        </div>
    </div>
@endif