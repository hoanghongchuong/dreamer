<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
?>
<!-- Footer -->
<footer class="footer_main">
    <div class="footer_top">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-6 full-xs">
                    <div class="footer_top_title">
                        <h4>Kết nối cộng đồng</h4>
                    </div>
                    <div class="footer_top_social">
                        <ul class="inline-list social-icons">
                            <li>
                                <a class="icon-fallback-text" href="{{$setting->twitter}}">
                                    <span class="fa fa-twitter" aria-hidden="true"></span>
                                </a>
                            </li>
                            <li>
                                <a class="icon-fallback-text" href="{{$setting->facebook}}">
                                    <span class="fa fa-facebook" aria-hidden="true"></span>
                                </a>
                            </li>
                            <li>
                                <a class="icon-fallback-text" href="#">
                                    <span class="fa fa-pinterest" aria-hidden="true"></span>
                                </a>
                            </li>
                            <li>
                                <a class="icon-fallback-text" href="{{$setting->google}}" rel="publisher">
                                    <span class="fa fa-google-plus" aria-hidden="true"></span>
                                </a>
                            </li>
                            <li>
                                <a class="icon-fallback-text" href="#">
                                    <span class="fa fa-instagram" aria-hidden="true"></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer_bottom padding-top-30 padding-bottom-30">
        <div class="container">

            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-6 full-xs">

                    <span class="wsp"><span class="mobile">Bản quyền thuộc về <span>GCO</span></span></span>
                    <p>{{$setting->address}}</p>

                </div>
                <div class="col-md-6 col-sm-6 col-xs-6 full-xs text-right text-left-mobile">

                    <p>Điện thoại: <a href="#"> {{$setting->phone}}</a></p>

                    <p>Email: <a href="#">{{$setting->email}}</a></p>

                </div>
            </div>

        </div>
    </div>
</footer>
<!-- End Footer -->

<div id="fb-root"></div>
<script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.6&appId=124844007858325";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>