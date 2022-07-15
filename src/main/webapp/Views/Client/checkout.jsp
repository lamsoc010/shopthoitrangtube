<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp"%>
   <!-- ::::::  Start  Breadcrumb Section  ::::::  -->
    <div class="page-breadcrumb">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <ul class="page-breadcrumb__menu">
                        <li class="page-breadcrumb__nav"><a href="#">Home</a></li>
                        <li class="page-breadcrumb__nav active">Checkout Page</li>
                    </ul>
                </div>
            </div>
        </div>
    </div> <!-- ::::::  End  Breadcrumb Section  ::::::  -->

    <!-- ::::::  Start  Main Container Section  ::::::  -->
    <main id="main-container" class="main-container">
        <div class="container">
            <div class="row">
                <!-- Start Client Shipping Address -->
                <div class="col-lg-7">
                    <div class="section-content">
                        <h5 class="section-content__title">Chi tiết đặt hàng</h5>
                    </div>
                    <form action="#" method="post" class="form-box">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-box__single-group">
                                    <label for="form-first-name">Họ và tên</label>
                                    <input type="text" id="form-full-name">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-box__single-group">
                                    <label for="form-last-name">Số điện thoại</label>
                                    <input type="text" id="form-phone">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-box__single-group">
                                    <label for="form-company-name">Địa chỉ</label>
                                    <input type="text" id="form-address">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-box__single-group">
                                    <label for="form-country">Tỉnh thành</label>
                                    <select id="form-country-province">
                                        <option value="select-country" selected>Chọn Tỉnh/Thành Phố</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-box__single-group">
                                    <label for="form-country">Quận/Huyện</label>
                                    <select id="form-country-districts">
                                        <option value="select-country" selected>Chọn Quận/Huyện</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-box__single-group">
                                    <label for="form-country">Phường/Xã</label>
                                    <select id="form-country-wards">
                                        <option value="select-country" selected>Chọn Phường/Xã</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="m-tb-20">
                                    <label for="check-account">
                                        <input type="checkbox" name="check-account" class="creat-account"  id="check-account">
                                        <span>Create an account?</span>
                                    </label>
                                    <div class="toogle-form open-create-account">
                                        <div class="form-box__single-group">
                                            <label for="form-email-new-account">Email Address</label>
                                            <input type="email" id="form-email-new-account">
                                        </div>
                                        <div class="form-box__single-group">
                                            <label for="form-password-new-account">Password</label>
                                            <input type="password" id="form-password-new-account">
                                        </div>
                                        <div class="from-box__buttons m-t-25">
                                            <button class="btn btn--box btn--small btn--blue btn--uppercase btn--weight" type="submit">REGISTER</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-box__single-group">
                                    <h6>Thông tin gửi đến shop</h6>
                                    <label for="form-additional-info">Ghi chú</label>
                                    <textarea  id="form-additional-info" rows="5" ></textarea>
                                </div>
                            </div>
                            <!-- Add Another Shipping Address -->
                            <div class="col-md-12">
                                <div class="m-tb-20">
                                    <label for="shipping-account">
                                        <input type="checkbox" name="check-account" class="shipping-account"  id="shipping-account">
                                        <span>Ship to a different address?</span>
                                    </label>
                                    <div class="toogle-form open-shipping-account">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-box__single-group">
                                                    <label for="shipping-form-first-name">First Name</label>
                                                    <input type="text" id="shipping-form-first-name">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-box__single-group">
                                                    <label for="shipping-form-last-name">Last Name</label>
                                                    <input type="text" id="shipping-form-last-name">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-box__single-group">
                                                    <label for="shipping-form-company-name">Company Name</label>
                                                    <input type="text" id="shipping-form-company-name">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-box__single-group">
                                                    <label for="shipping-form-country">* Country</label>
                                                    <select id="shipping-form-country">
                                                        <option value="select-country" selected>Select a country</option>
                                                        <option value="BD">Bangladesh</option>
                                                        <option value="US">USA</option>
                                                        <option value="UK">UK</option>
                                                        <option value="TR">Turkey</option>
                                                        <option value="CA">Canada</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-box__single-group">
                                                    <label for="shipping-form-address-1">Street Address</label>
                                                    <input type="text" id="shipping-form-address-1" placeholder="House number and street name">
                                                    <input type="text" class="m-t-10" id="shipping-form-address-2" placeholder="Apartment, suite, unit etc.">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-box__single-group">
                                                    <label for="shipping-form-state">* Region / State</label>
                                                    <select id="shipping-form-state">
                                                        <option value="Dha" selected>Dhaka</option>
                                                        <option value="Kha">Khulna</option>
                                                        <option value="Raj">Rajshahi</option>
                                                        <option value="Syl">Sylet</option>
                                                        <option value="Chi">Chittagong</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-box__single-group">
                                                    <label for="shipping-form-zipcode">* Zip/Postal Code</label>
                                                    <input type="text" id="shipping-form-zipcode">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-box__single-group">
                                                    <label for="shipping-form-phone">Phone</label>
                                                    <input type="text" id="shipping-form-phone">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-box__single-group">
                                                    <label for="shipping-form-email">Email Address</label>
                                                    <input type="email" id="shipping-form-email">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>  <!-- End Another Shipping Address -->
                        </div>
                    </form> 
                </div> <!-- End Client Shipping Address -->
                
                <!-- Start Order Wrapper -->
                <div class="col-lg-5">
                    <div class="your-order-section">
                        <div class="section-content">
                            <h5 class="section-content__title">Giỏ hàng của bạn</h5>
                        </div>
                        <div class="your-order-box gray-bg m-t-40 m-b-30">
                            <div class="your-order-product-info">
                                <div class="your-order-top d-flex justify-content-between">
                                    <h6 class="your-order-top-left">Sản phẩm</h6>
                                    <h6 class="your-order-top-right">Giả tiền</h6>
                                </div>
                                <ul class="your-order-middle" id="your-order-middle">
                                    <!--Render list product in cart  -->
                                </ul>
                                <div class="your-order-bottom d-flex justify-content-between">
                                    <h6 class="your-order-bottom-left">Shipping</h6>
                                    <span class="your-order-bottom-right">Miễn phí ship</span>
                                </div>
                                <div class="your-order-total d-flex justify-content-between">
                                    <h5 class="your-order-total-left">Tổng tiền:</h5>
                                    <h5 class="your-order-total-right" id="totalPrice"></h5>
                                </div>
    
                                <div class="payment-method">
                                    <div class="payment-accordion element-mrg">
                                        <div class="panel-group" id="accordion">
                                            <div class="panel payment-accordion">
                                                <div class="panel-heading" id="method-one">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordion" href="#method1" aria-expanded="false" class="collapsed">
                                                            Direct bank transfer
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="method1" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <p>Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel payment-accordion">
                                                <div class="panel-heading" id="method-two">
                                                    <h4 class="panel-title">
                                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#method2" aria-expanded="false">
                                                            Check payments
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="method2" class="panel-collapse collapse" >
                                                    <div class="panel-body">
                                                        <p>Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel payment-accordion">
                                                <div class="panel-heading" id="method-three">
                                                    <h4 class="panel-title">
                                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#method3" aria-expanded="false">
                                                            Cash on delivery
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="method3" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <p>Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <button class="btn btn--block btn--small btn--blue btn--uppercase btn--weight" onclick="submitOrders()" type="submit">Thanh Toán</button>
                    </div>
                </div> <!-- End Order Wrapper -->
            </div>
        </div>
    </main> <!-- ::::::  End  Main Container Section  ::::::  -->

<%@ include file="layout/footer.jsp"%>
    <!-- material-scrolltop button -->
    <button class="material-scrolltop" type="button"></button>
    

    <!-- ::::::::::::::All Javascripts Files here ::::::::::::::-->

    <!-- Vendor JS Files -->
    <%@ include file="layout/scripts.jsp"%>
    <script>
    $(document).ready(function() {
		$.ajax({
			url : '/TubeFashtion/HomeController',
			dataType : 'json',
			success : function(data) {
				$('#your-order-middle').html(renderListProductInCart(JSON.parse(data.listCart)));
				$('#totalPrice').html(formatPrice(storeTotalPrice(JSON.parse(data.listCart))));
				/*Gọi lại hàm js  */
				$.getScript("/TubeFashtion/assets/js/main.js", function() {
			    });
			},
			
			type : 'GET'
		});
		
		/*Lấy Api tỉnh thành  */
		$.ajax({
			url : 'https://provinces.open-api.vn/api/?depth=1',
			dataType : 'json',
			success : function(data) {
				$('#form-country-province').append(renderListOption(data));
			},
			
			type : 'GET'
		})
		/*Khi tỉnh thay đổi thì lấy API huyện  */
		$('#form-country-province').change(()=> {
			let codeProvince = $('#form-country-province').val();
			$.ajax({
				url : `https://provinces.open-api.vn/api/p/\${codeProvince}?depth=2`,
				dataType : 'json',
				success : function(data) {
					$('#form-country-districts').append(renderListOption(data.districts));
				},
				type : 'GET'
			})
		})
		/*Khi huyện thay đổi thì lấy API xã  */
		$('#form-country-districts').change(()=> {
			let codeDistricts = $('#form-country-districts').val();
			$.ajax({
				url : `https://provinces.open-api.vn/api/d/\${codeDistricts}?depth=2`,
				dataType : 'json',
				success : function(data) {
					console.log(data)
					$('#form-country-wards').append(renderListOption(data.wards));
				},
				type : 'GET'
			})
		})
	})
	
	function renderListOption(list) {
    	let html = ``;
    	list.forEach(l => {
    		html += `
    			<option value="\${l.code}">\${l.name}</option>
    		`;
    	})
    	return html;
    }
	
	function renderListProductInCart(listCart) {
    	let html = ``;
    	listCart.forEach(c => {
    		html += `
	    		<li class="d-flex justify-content-between">
	                <span class="your-order-middle-left">
	                <img src='<c:url value="/assets/img/product/\${c.image}"></c:url>' 
	                	style="height: 100px; width: 100px"> X \${c.quantity}
	                </span>
	                <span class="your-order-middle-right">\${formatPrice(c.total)}</span>
	            </li>
    		`;
    	})
    	return html;
    }
	
	/* Khi bấm thanh toán  */
	function submitOrders() {
		let fullname = $('#form-full-name').val()
		let phone = $('#form-phone').val()
		let address = $('#form-address').val()
		let message = $('#form-additional-info').val()
		let province = $('#form-country-province').find(":selected").text()
		let districts = $('#form-country-districts').find(":selected").text()
		let wards = $('#form-country-wards').find(":selected").text()
		
		let detailAddress = `\${address} , \${wards}, \${districts}, \${province}`;
		console.log(detailAddress);
		$.ajax({
			url : `/TubeFashtion/CheckoutController`,
			dataType : 'json',
			data: {
				fullname: fullname,
				phone: phone,
				address: detailAddress,
				message: message
			},
			success : function(data) {
				if(data.message == "success") {
					toastr.success('Đặt hàng thành công!');
					setTimeout(function() {
						window.location = "/TubeFashtion";
					}, 2000)
				}
				console.log(data)
			},
			type : 'GET'
		})
	}
	
    function storeTotalPrice(listCart) {
    	let total = 0;
    	listCart.forEach(c => {
    		total += c.total;
    	}) 
    	return total;
    }
    </script>
</body>

</html>
