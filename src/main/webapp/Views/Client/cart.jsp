<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./layout/header.jsp"%>
<!-- ::::::  Start  Breadcrumb Section  ::::::  -->
<div class="page-breadcrumb">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<ul class="page-breadcrumb__menu">
					<li class="page-breadcrumb__nav"><a href="#">Home</a></li>
					<li class="page-breadcrumb__nav active">Cart Page</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<!-- ::::::  End  Breadcrumb Section  ::::::  -->

<!-- ::::::  Start  Main Container Section  ::::::  -->
<main id="main-container" class="main-container">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="section-content">
					<h5 class="section-content__title">Your cart items</h5>
				</div>
				<!-- Start Cart Table -->
				<div
					class="table-content table-responsive cart-table-content m-t-30">
					<table id="listCartTable">
						<thead class="gray-bg">
							<tr>
								<th>Ảnh</th>
								<th>Tên</th>
								<th>Size</th>
								<th>Màu</th>
								<th>Số Lượng</th>
								<th>Giá</th>
								<th>Chi Tiết</th>
							</tr>
						</thead>
						<tbody id="bodyListCart">
						</tbody>
					</table>
				</div>
				<!-- End Cart Table -->
				<!-- Start Cart Table Button -->
				<div class="cart-table-button m-t-10">
					<div class="cart-table-button--left">
						<a href="#"
							class="btn btn--box btn--large btn--gray btn--uppercase btn--weight m-t-20">CONTINUE
							SHOPPING</a>
					</div>
					<div class="cart-table-button--right">
						<a href="#"
							class="btn btn--box btn--large btn--gray btn--uppercase btn--weight m-t-20 m-r-20">UPDATE
							SHOPPING CART</a> <a href="#"
							class="btn btn--box btn--large btn--blue btn--uppercase btn--weight m-t-20">Clear
							Shopping Cart</a>
					</div>
				</div>
				<!-- End Cart Table Button -->
			</div>

		</div>
		<div class="row">
			<div class="col-lg-4 col-md-6">
				<div class="sidebar__widget gray-bg m-t-40">
					<div class="sidebar__box">
						<h5 class="sidebar__title">Estimate Shipping And Tax</h5>
					</div>
					<span>Enter your destination to get a shipping estimate.</span>
					<form action="#" method="post" class="form-box">
						<div class="form-box__single-group">
							<label for="form-country">* Country</label> <select
								id="form-country">
								<option value="BD" selected>Bangladesh</option>
								<option value="US">USA</option>
								<option value="UK">UK</option>
								<option value="TR">Turkey</option>
								<option value="CA">Canada</option>
							</select>
						</div>
						<div class="form-box__single-group">
							<label for="form-state">* Region / State</label> <select
								id="form-state">
								<option value="Dha" selected>Dhaka</option>
								<option value="Kha">Khulna</option>
								<option value="Raj">Rajshahi</option>
								<option value="Syl">Sylet</option>
								<option value="Chi">Chittagong</option>
							</select>
						</div>
						<div class="form-box__single-group">
							<label for="form-zipcode">* Zip/Postal Code</label> <input
								type="text" id="form-zipcode">
						</div>
						<div class="from-box__buttons m-t-25">
							<button
								class="btn btn--box btn--small btn--blue btn--uppercase btn--weight"
								type="submit">GET A QUOTE</button>
						</div>
					</form>
				</div>
			</div>
			<div class="col-lg-4 col-md-6">
				<div class="sidebar__widget gray-bg m-t-40">
					<div class="sidebar__box">
						<h5 class="sidebar__title">Use Coupon Code</h5>
					</div>
					<span>Enter your coupon code if you have one.</span>
					<form action="#" method="post" class="form-box">
						<div class="form-box__single-group">
							<label for="form-coupon">*Enter Coupon Code</label> <input
								type="text" id="form-coupon">
						</div>
						<div class="from-box__buttons m-t-25">
							<button
								class="btn btn--box btn--small btn--blue btn--uppercase btn--weight"
								type="submit">Apply Coupon</button>
						</div>
					</form>
				</div>
			</div>
			<div class="col-lg-4 col-md-6">
				<div class="sidebar__widget gray-bg m-t-40">
					<div class="sidebar__box">
						<h5 class="sidebar__title">Cart Total</h5>
					</div>
					<h6 class="total-cost">
						Total products Price<span>$260.00</span>
					</h6>
					<div class="total-shipping">
						<span>Total shipping</span>
						<ul class="shipping-cost m-t-10">
							<li><label for="ship-standard"> <input type="radio"
									class="shipping-select" name="shipping-cost" value="Standard"
									id="ship-standard" checked><span>Standard</span>
							</label> <span class="ship-price">$20.00</span></li>
							<li><label for="ship-express"> <input type="radio"
									class="shipping-select" name="shipping-cost" value="Express"
									id="ship-express"><span>Express</span>
							</label> <span class="ship-price">$30.00</span></li>
						</ul>
					</div>
					<h4 class="grand-total m-tb-25">
						Grand Total <span>$260.00</span>
					</h4>
					<button
						class="btn btn--box btn--small btn--blue btn--uppercase btn--weight"
						type="submit">PROCEED TO CHECKOUT</button>
				</div>
			</div>
		</div>
	</div>
</main>
<!-- ::::::  End  Main Container Section  ::::::  -->

<!-- ::::::  Start  Footer Section  ::::::  -->
<%@ include file="layout/footer.jsp"%>
<!-- material-scrolltop button -->
<button class="material-scrolltop" type="button"></button>


<!-- ::::::::::::::All Javascripts Files here ::::::::::::::-->

<!-- Vendor JS Files -->
<%@ include file="./layout/scripts.jsp"%>
<script>
    $(document).ready(function() {
    	$.ajax({
			url : '/TubeFashtion/CartProductController',
			data: {
				action: "views"
			},
			dataType : 'json',
			success : function(data) {
				renderListCart(JSON.parse(data.listCart))
				
			},
			
			type : 'GET'
		});
    });
    
    function renderListCart(listCart) {
    	let check = false;
    	listCart.forEach(c => {
    		$.ajax({
    			url : '/TubeFashtion/CartProductController',
    			data: {
    				action: "detail",
    				id: c.idProduct,
    				size: c.size
    			},
    			dataType : 'json',
    			success : function(data) {
    				$('#bodyListCart').html(renderDetailCart(listCart, JSON.parse(data.listColor), JSON.parse(data.listSize)))
    				if(!check) {
	    				$.getScript("/TubeFashtion/assets/js/plugin/in-number.js", function() {
	    			    });
    					check = true;
    				}
    			},
    			
    			type : 'GET'
    		});
    	})
    	
    }
    
    function renderDetailCart(listCart, listColor, listSize) {
    	let html = ``;
    	listCart.forEach(c => {
    		html += `
    			<tr>
   					<td>
   						<img class="img-fluid" src='<c:url value="/assets/img/product/\${c.image}"></c:url>' style="height:100px; width:100px">
   					</td>
   					<td>\${c.name}</td>
   					<td>
   						\${c.size}
   					</td>
   					<td>
   						<label class="product-color"><input name="product-color-select" type="radio" class="product-color-select" value="color-\${c.color}"><span></span></label>
   					</td>
   					<td>
	   					<div class="quantity" id="quantity">
	                    	\${renderQuantity(listColor, c.color, c.quantity)}
	                	</div>
   					</td>
   					<td>\${c.total}</td>
   					<td>\${c.name}</td>
    			</tr>
    		`;
    	})
    	return html;
    }
    
    /* Xử lý số lượng tối đa khi click chọn màu */
    function renderQuantity(listColor, currentColor, quantity) {
    	let html = ``;
    	listColor.forEach(c => {
    		if(c.color == currentColor) {
		    	html += `<input type="number" min="1" max="\${c.quantity}" step="1" value="\${quantity}" id="inputQuantity"/>`;
    		}
    	})
    	return html;
    }
    
    $('#inputQuantity').on("change", function() {
    	console.log($('#inputQuantity').val())
    })
    
    </script>
</body>

</html>
