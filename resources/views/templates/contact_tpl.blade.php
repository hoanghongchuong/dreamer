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
                <a href="{{asset('')}}" ><span>Trang chủ</span></a>
                <span><i class="fa fa-angle-right"></i></span>
            </li>
            <li><strong>Liên hệ</strong></li>
        </ul>
    </div>
</section>
<div class="container contact padding-top-30">
    <div class="box-maps">
        <div class="iFrameMap">
            <div class="google-map">
                <div class="map_container">{!! $setting->iframemap !!}</div>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 20px;">
        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
            <div class="widget-item info-contact">
                <div class="headquarters_contact">
                    <h3></h3>
                </div>
                <ul>
                    <li class="contact-i">
                        <div class="icon_contact"><i class="fa fa-map-signs"></i></div>
                        <div class="text_contact">
                            {{$setting->address}}
                        </div>
                    </li>
                    <li class="contact-i">
                        <div class="icon_contact"><i class="fa fa-paper-plane"></i></div>
                        <div class="text_contact"><a href="mailto: {{$setting->email}}">{{$setting->email}}</a></div>
                    </li>
                    <li class="contact-i">
                        <div class="icon_contact" style="font-size: 17px;"><i class="fa fa-phone"></i></div>
                        <div class="text_contact"><a href="tel: {{$setting->phone}}">{{$setting->phone}}</a></div>
                    </li>
                </ul>

            </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
            <div class="page-login page_contact">
                <div id="login-contact">
                    <h1 class="title-head hidden"><span>Liên hệ</span></h1>

                    <form accept-charset='UTF-8' action="{{route('postContact')}}" id='contact' method='post'>
                       <input type="hidden" name="_token" value="{!! csrf_token() !!}" />
                        <input name='FormType' type='hidden' value='contact' />
                        <input name='utf8' type='hidden' value='true' />

                        <div id="emtry_contact" class="form-signup form_contact clearfix">
                            <fieldset class="form-group-contact" style="float: left">
                                <input type="text" name="name" id="name" class="form-control form-control-lg form-contact-a form-contact-1" placeholder="Nhập tên" required>
                            </fieldset>
                            <fieldset class="form-group-contact">
                                <input type="email" name="email"  id="email" placeholder="Email" class="form-control form-control-lg form-contact-a" required>
                            </fieldset>
                            <fieldset class="form-group-contact">
                                <textarea name="content" id="comment" class="form-control form-control-lg form-contact-a"  rows="5" placeholder="Nội dung" required="" data-validation-required-message="Vui lòng nhập bình luận" minlength="5" data-validation-minlength-message="Tối thiểu là 5 ký tự" maxlength="500"></textarea>
                                <div class="f-right btn-submit-contact">
                                    <button tyle="submit" class="btn btn-primary btn-contact-plane" >
                                        <i class="fa fa-paper-plane-o" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </fieldset>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
