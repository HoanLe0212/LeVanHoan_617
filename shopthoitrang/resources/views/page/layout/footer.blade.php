<div class="footer_area">
    <div class="footer_top">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer_widget">
                        <h3>WM FASHION</h3>
                        <div class="footer_widget_contect">
                            <p><i class="fa fa-map-marker" aria-hidden="true"></i> 99 Phan Châu Trinh, Phước Ninh, Hải Châu, Đà Nẵng</p>

                            <p><i class="fa fa-mobile" aria-hidden="true"></i> 033.2222.888 - 033.2222.999 </p>
                            <a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i> WMFashion@gmail.com </a>
                            <ul>
                                <li>Thời gian làm việc: Thứ 2 - Chủ nhật.</li>
                                <li>&nbsp; Sáng: 8h00 - 12h00</li>
                                <li>&nbsp; Chiều: 13h00 - 22h00</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer_widget">
                        <h3>Danh mục sản phẩm</h3>
                        <ul>
                            @foreach($menu_f as $menu)
                            @if(count($menu->productType) > 0)
                            <li><a>{{$menu->name}}</a></li>
                            @endif
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer_widget">
                        <h3>Tài khoản</h3>
                        <ul>
                            <li><a href="{{route('information')}}">Thông tin</a></li>
                            <li><a href="{{route('change_password')}}">Đổi mật khẩu</a></li>
                            <li><a href="{{route('order')}}">Lịch sử đặt hàng</a></li>
                            <li><a href="{{route('register')}}">Đăng ký</a></li>
                            <li><a href="{{route('login')}}">Đăng nhập</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer_widget">
                        <h3>Địa điểm kinh doanh</h3>
                        <iframe style="width: 100%; height: 100%;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d960.0612259096025!2d108.35124686685435!3d15.738178401537544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31420a0a3c177ce7%3A0x452467908e180c98!2zU2hvcCBUaOG7nWkgVHJhbmcgTOG7jSBMZW0!5e0!3m2!1svi!2s!4v1611562849585!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer_bottom">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6">
                    <div class="copyright_area">
                        <p>WM Fashion</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="footer_social text-right">
                        <ul>
                            <li><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="https://accounts.google.com/"><i class="fa fa-envelope" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
