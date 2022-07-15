<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
	/* Thêm vào giỏ hàng  */
	function AddToCart() {
		let size = $('#product-size-real').val();
			let color = $('input[name="product-color-select"]:checked').val().split('-')[1];
			console.log(color);
			let quantity = $('#inputQuantity').val();
			let idProduct = $('#idProduct').val();
		$.ajax({
			url : '/TubeFashtion/CartProductController',
			dataType : 'json',
			data: {
				action: "create",
				idProduct: idProduct,
				size: size,
				color: color,
				quantity: quantity
			},
			success : function(data) {
				$('#listCartQuantity').html(JSON.parse(data.listCart).length);
				toastr.success('Thêm sản phẩm thành công!');
			},
			
			type : 'GET'
		});
	}
	
	/* Xem giỏ hàng  */
	function ViewToCart() {
		let element = $('#offcanvas-add-cart__box');
		element.addClass("offcanvas-open");
		$('.offcanvas-overlay').show();
		
		$.ajax({
			url : '/TubeFashtion/HomeController',
			dataType : 'json',
			success : function(data) {
				console.log(JSON.parse(data.listWishList));
				console.log(JSON.parse(data.listCart));
				/*Render ra listcart  */
				$('#offcanvas-add-cart__box').html(renderListCart(JSON.parse(data.listCart)));
				/* Xét số lượng cho wishlist và listcart  */
				$('#wishListQuantity').html(JSON.parse(data.listWishList).length);
				$('#listCartQuantity').html(JSON.parse(data.listCart).length);
				
				/*Gọi lại hàm js  */
				$.getScript("/TubeFashtion/assets/js/main.js", function() {
			    });
			},
			
			type : 'GET'
		});
		
	}
	/*Kết thúc xem giỏ hàng  */
	
	/* Xử lý list sản phẩm */
	function storeListProduct(listCart) {
		let html = ``;
		listCart.forEach(c => {
			html += `
				<!-- Start Single Add Cart Item-->
				<li class="offcanvas-add-cart__list pos-relative">
					<div class="offcanvas-add-cart__img-box pos-relative">
						<a href="single-1.html" class="offcanvas-add-cart__img-link img-responsive">
							<img src='<c:url value="/assets/img/product/\${c.image}"></c:url>'
							alt="" class="add-cart__img" style="height: 80px; width: 80px">
						</a> 
						<span class="offcanvas-add-cart__item-count pos-absolute">\${c.quantity}x</span>
					</div>
					<div class="offcanvas-add-cart__detail">
						<a href='<c:url value="/detail?id=\${c.idProduct}"></c:url>' class="offcanvas-add-cart__link">
							\${c.name}
						</a> 
						<span class="offcanvas-add-cart__price">\${formatPrice(c.total)}</span> 
						<span class="offcanvas-add-cart__info">Size: \${c.size}, Color: \${c.color}</span>
					</div>
					<button class="offcanvas-add-cart__item-dismiss pos-absolute" onclick="deleteProductInCart(\${c.idProduct})">&times;</button>
				</li>
				<!-- Start Single Add Cart Item-->
			`;
		})
		return html;
	}
	/* Kết thúc xử lý list sản phẩm */
	
	
	/*Render giỏ hàng  */
	function renderListCart(listCart) {
		let html = ``;
		let totalPrice = 0;
		let button = ``;
		if(listCart.length != 0 ) {
			button = `
				<a href='<c:url value="/checkout"></c:url>'
				class="btn btn--block btn--box btn--gray btn--large btn--uppercase btn--weight">Thanh toán</a>
			`;
		} else {
			button = `
				<a href='<c:url value="/shop-list-1"></c:url>'
				class="btn btn--block btn--box btn--gray btn--large btn--uppercase btn--weight">Tiếp tục mua sắm</a>
			`;
		}
		listCart.forEach(c => {
			totalPrice += parseInt(c.total);
		})
		html += `
			<div class="offcanvas-add-cart__top m-b-40">
				<span class="offcanvas-add-cart__top-text"><i
					class="icon-shopping-cart"></i> Tổng Sản Phẩm: \${listCart.length}</span>
				<button class=" offcanvas-close">&times;</button>
			</div>
			<!-- Start Add Cart Item Box-->
			<ul class="offcanvas-add-cart__menu">
				<!-- Render List Product in Cart-->
				\${storeListProduct(listCart)}
			</ul>
			<!-- Start Add Cart Item Box-->
			<!-- Start Add Cart Checkout Box-->
			<div class="offcanvas-add-cart__checkout-box-bottom">
				<!-- Start offcanvas Add Cart Checkout Info-->
				<ul class="offcanvas-add-cart__checkout-info">
					<!-- Start Single Add Cart Checkout Info-->
					<li class="offcanvas-add-cart__checkout-list"><span
						class="offcanvas-add-cart__checkout-left-info">Tổng tiền: </span> <span
						class="offcanvas-add-cart__checkout-right-info">\${formatPrice(totalPrice)}</span></li>
					<!-- End Single Add Cart Checkout Info-->
					<!-- Start Single Add Cart Checkout Info-->
					<li class="offcanvas-add-cart__checkout-list"><span
						class="offcanvas-add-cart__checkout-left-info">Phí Ship</span> <span
						class="offcanvas-add-cart__checkout-right-info">Miễn Phí</span></li>
					<!-- End Single Add Cart Checkout Info-->
					<!-- Start Single Add Cart Checkout Info-->
					<li class="offcanvas-add-cart__checkout-list"><span
						class="offcanvas-add-cart__checkout-left-info">Giảm Giá</span> <span
						class="offcanvas-add-cart__checkout-right-info">$0.00</span></li>
					<!-- End Single Add Cart Checkout Info-->
					<!-- Start Single Add Cart Checkout Info-->
					<li class="offcanvas-add-cart__checkout-list"><span
						class="offcanvas-add-cart__checkout-left-info">Tổng Hoá Đơn</span> <span
						class="offcanvas-add-cart__checkout-right-info">\${formatPrice(totalPrice)}</span></li>
					<!-- End Single Add Cart Checkout Info-->
				</ul>
				<!-- End offcanvas Add Cart Checkout Info-->

				<div class="offcanvas-add-cart__btn-checkout">
					\${button}
				</div>
			</div>
			<!-- End Add Cart Checkout Box-->
		`;
		
		return html;
	}
	
	/*Xử lý xoá sản phẩm ra khỏi danh sách giỏ hàng  */
	function deleteProductInCart(idProduct) {
		let checkDelete = confirm("Bạn có chắc chắn muốn xoá không?");
		if(checkDelete) {
			$.ajax({
				url : '/TubeFashtion/CartProductController',
				dataType : 'json',
				data: {
					action: "delete",
					idProduct: idProduct,
				},
				success : function(data) {
					/*Render ra listcart  */
					$('#offcanvas-add-cart__box').html(renderListCart(JSON.parse(data.listCart)));
					/* Xét số lượng cho wishlist và listcart  */
					$('#listCartQuantity').html(JSON.parse(data.listCart).length);
					
					/*Gọi lại hàm js  */
					$.getScript("/TubeFashtion/assets/js/main.js", function() {
				    });
					toastr.success('Xoá sản phẩm thành công!');
				},
				
				type : 'GET'
			});
		}
		
		
	}
	function formatPrice(price) {
        const formatter = new Intl.NumberFormat('en-US', {
            style: 'currency',
            currency: 'VND',
            minimumFractionDigits: 0
        });
        return formatter.format(price);
    }
	/* Kết thúc  */
</script>