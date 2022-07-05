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
					<li class="page-breadcrumb__nav active">Wishlist Page</li>
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
					<h5 class="section-content__title">Your Wishlist items</h5>
				</div>
				<!-- Start Wishlist Table -->
				<div
					class="table-content table-responsive cart-table-content m-t-30">
					<table>
						<thead>
							<tr>
								<th>Ảnh</th>
								<th>Tên</th>
								<th>Sale</th>
								<th>Giá</th>
								<th>Đánh Giá</th>
								<th>Chi Tiết</th>
							</tr>
						</thead>
						<tbody id="listWishList">
							<!-- render listWishList -->
						</tbody>
					</table>
				</div>
				<!-- End Wishlist Table -->
			</div>
		</div>
	</div>
</main>
<!-- ::::::  End  Main Container Section  ::::::  -->

<!-- ::::::  Start  Footer Section  ::::::  -->
<%@ include file="layout/footer.jsp"%>

<!-- Start Modal Add cart -->
<div class="modal fade" id="modalAddCart" tabindex="-1" role="dialog"
	aria-hidden="true">
	<div class="modal-dialog  modal-dialog-centered modal-xl"
		role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title text-center">Product Successfully Added
					To Your Shopping Cart</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">
							<div class="row">
								<div class="col-md-6">
									<div class="modal__product-img">
										<img class="img-fluid"
											src="assets/img/product/size-normal/product-home-1-img-1.jpg"
											alt="">
									</div>
								</div>
								<div class="col-md-6">
									<span class="modal__product-title">SonicFuel Wireless
										Over-Ear Headphones</span> <span class="modal__product-price m-tb-15">$31.59</span>
									<ul class="modal__product-info ">
										<li>Size:<span> S</span></li>
										<li>Quantity:<span>3</span></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-6 modal__border">
							<span class="modal__product-cart-item">There are 3 items
								in your cart.</span>
							<ul class="modal__product-shipping-info m-tb-15">
								<li>Total products:<span>$94.78</span></li>
								<li>Total shipping:<span>$7.00</span></li>
								<li>Taxes:<span>$0.00</span></li>
								<li>Total: <span>$101.78 (tax excl.)</span></li>
							</ul>

							<div class="modal__product-cart-buttons">
								<a href="#"
									class="btn btn--box btn--large btn--blue btn--uppercase btn--weight"
									data-dismiss="modal">Continue Shopping</a> <a
									href="checkout.html"
									class="btn btn--box btn--large btn--blue btn--uppercase btn--weight">Process
									to checkout</a>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Modal Add cart -->

<!-- material-scrolltop button -->
<button class="material-scrolltop" type="button"></button>


<!-- ::::::::::::::All Javascripts Files here ::::::::::::::-->

<%@ include file="layout/scripts.jsp"%>
<script>
    	$(document).ready(function() {
    		$.ajax({
    			url : '/TubeFashtion/WishListController',
    			dataType : 'json',
    			success : function(data) {
    				/* $('#wishlist-item').html(JSON.parse(data.listWishList).length);  */
    				console.log(JSON.parse(data.listWishList));
    				console.log(JSON.parse(data.message));
    				$('#listWishList').html(renderListWishList(JSON.parse(data.listWishList)));
    			},
    			
    			type : 'GET'
    		});
    	})
    	
    	
    	function renderListWishList(listWishList) {
    		let html = ``;
    		let storePrice = ``;
    		listWishList.forEach(w => {
	    		if(w.sale != 0) {
	    			storePrice = formatPrice(w.price - w.price*w.sale/100);
	        	} else {
	        		storePrice = formatPrice(w.price);
	        	}
    			html += `
	    			<tr>
	                    <td class="product-thumbnail">
	                        <a href="#"><img class="img-fluid" src='<c:url value="/assets/img/product/\${w.image}"></c:url>' alt=""></a>
	                    </td>
	                    <td class="product-name"><a href="#">\${w.name}</a></td>
	                    <td class="product-name"><a href="#">\${w.sale}%</a></td>
	                    <td class="product-price-cart"><span class="amount">\${storePrice}</span></td>
	                    <td class="product-price-cart"><span class="rating">\${renderRatingProduct(w.rating)}</span></td>
	                    <td class="product-add-cart">
	                        <a href='<c:url value="/detail?id=\${w.idProduct}"></c:url>' class="btn btn--box btn--small btn--blue btn--uppercase btn--weight">Xem sản phẩm</a>
	                    </td>
	                </tr>
    			`;
    		})
    		return html;
    	}
    	
    	/* Xử lý render đánh giá sản phẩm */
        function renderRatingProduct(rating) {
        	let html = ``;
        	for(let i = 1; i <= rating; i++) {
        		html += `
        			<li class="product__review--fill"><i class="icon-star"></i></li>
        		`;
        	}
        	if(rating < 5) {
    	    	for(let i = rating; i <= 5; i++) {
    	    		html += `
    	    			<li class="product__review--blank"><i class="icon-star"></i></li>
    	    		`;
    	    	}	
        	}
        	return html;
        }
    	
    	/* Xử lý tiền tệ  */
    	function formatPrice(price) {
            const formatter = new Intl.NumberFormat('en-US', {
                style: 'currency',
                currency: 'VND',
                minimumFractionDigits: 0
            });
            return formatter.format(price);
        }
    </script>
</body>

</html>
