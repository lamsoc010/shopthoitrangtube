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
					<li class="page-breadcrumb__nav active">Shop 4 Grid Page</li>
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
			<!-- Start Rightside - Content -->
			<div class="col-12">
				<!-- ::::::  Start banner Section  ::::::  -->
				<div class="banner">
					<div class="row">
						<div class="col-12">
							<div class="banner__box">
								<a href="single-1.html" class="banner__link"> <img
									src="assets/img/banner/banner-shop-1-img-1.jpg" alt=""
									class="banner__img">
								</a>
							</div>
						</div>
					</div>
				</div>
				<!-- ::::::  End banner Section  ::::::  -->

				<!-- ::::::  Start Sort Box Section  ::::::  -->
				<div class="sort-box m-tb-30">
					<!-- Start Sort Left Side -->
					<div class="sort-box__left">
						<div class="sort-box__tab">
							<ul class="sort-box__tab-list nav">
								<li><a class="sort-nav-link active" data-toggle="tab"
									href="#sort-grid"><i class="icon-grid"></i> </a></li>
								<li><a class="sort-nav-link" data-toggle="tab"
									href="#sort-list"><i class="icon-list"></i></a></li>
							</ul>
						</div>
						<span>There Are 13 Products.</span>
					</div>
					<!-- Start Sort Left Side -->

					<div class="sort-box__right">
						<span>Sắp xếp:</span>
						<div class="sort-box__option">
							<label class="select-sort__arrow"> <select
								name="select-sort" class="select-sort" id="select-sort">
									<option value="timeUp">Mới nhất</option>
									<option value="timeDown">Cũ nhất</option>
									<option value="nameUp">Tên, từ A đến Z</option>
									<option value="nameDown">Tên, từ Z to A</option>
									<option value="priceUp">Giá, từ thấp đến cao</option>
									<option value="priceDown">Giá, từ cao đến thấp</option>
							</select>
							</label>
						</div>
					</div>
				</div>
				<!-- ::::::  Start Sort Box Section  ::::::  -->

				<div class="product-tab-area">
					<div class="tab-content ">
						<div class="tab-pane show active clearfix" id="sort-grid">
							<!-- render listProduct  -->
						</div>
						<div class="tab-pane shop-list" id="sort-list">
							<!-- Start Single List Product -->
							<div class="product__box product__box--list">
								<div class="row">
									<div class="col-md-4">
										<div class="product__img-box">
											<a href="single-1.html" class="product__img--link"> <img
												class="product__img"
												src="assets/img/product/size-normal/product-home-1-img-1.jpg"
												alt="">
											</a> <span class="product__tag product__tag--discount">-12%</span>

										</div>
									</div>
									<div class="col-md-5 pos-relative">
										<div class="border-right pos-absolute"></div>
										<div class="product__price">
											<span class="product__price-del">$11.90</span> <span
												class="product__price-reg">$10.71</span>
										</div>
										<a href="single-1.html"
											class="product__link product__link--underline product__link--weight-light m-t-15">
											SonicFuel Wireless Over-Ear Headphones </a>
										<div class="product__desc m-t-25 m-b-30">
											<p>The ATH-S700BT offers clear, full-bodied audio
												reproduction with Bluetooth® wireless operation. The
												headphones are equipped with a mic, and music and volume
												controls, allowing you to ...</p>
										</div>
									</div>
									<div class="col-md-3">
										<div>
											<ul class="shop__list-link">
												<li><a href="#modalAddCart" data-toggle="modal"
													class="btn btn--block btn--small btn--border-blue btn--uppercase btn--weight m-b-15">Add
														to cart</a></li>
												<li><a href="wishlist.html"
													class="link--gray link--icon-left shop__wishlist-icon m-b-5"><i
														class="icon-heart"></i>Add To Wishlist</a></li>
												<li><a href="#modalQuickView" data-toggle="modal"
													class="link--gray link--icon-left shop__quickview-icon"><i
														class="icon-eye"></i>Quick View</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!-- Start Single List Product -->
							<!-- Start Single List Product -->
							<div class="product__box product__box--list">
								<div class="row">
									<div class="col-md-4">
										<div class="product__img-box">
											<a href="single-1.html" class="product__img--link"> <img
												class="product__img"
												src="assets/img/product/size-normal/product-home-1-img-2.jpg"
												alt="">
											</a> <span class="product__tag product__tag--discount">-12232%</span>

										</div>
									</div>
									<div class="col-md-5 pos-relative">
										<div class="border-right pos-absolute"></div>
										<div class="product__price">
											<span class="product__price-del">$11.90</span> <span
												class="product__price-reg">$10.71</span>
										</div>
										<a href="single-1.html"
											class="product__link product__link--underline product__link--weight-light m-t-15">
											SonicFuel Wireless Over-Ear Headphones </a>
										<div class="product__desc m-t-25 m-b-30">
											<p>The ATH-S700BT offers clear, full-bodied audio
												reproduction with Bluetooth® wireless operation. The
												headphones are equipped with a mic, and music and volume
												controls, allowing you to ...</p>
										</div>
									</div>
									<div class="col-md-3">
										<div>
											<ul class="shop__list-link">
												<li><a href="#modalAddCart" data-toggle="modal"
													class="btn btn--block btn--small btn--border-blue btn--uppercase btn--weight m-b-15">Add
														to cart</a></li>
												<li><a href="wishlist.html"
													class="link--gray link--icon-left shop__wishlist-icon m-b-5"><i
														class="icon-heart"></i>Add To Wishlist</a></li>
												<li><a href="#modalQuickView" data-toggle="modal"
													class="link--gray link--icon-left shop__quickview-icon"><i
														class="icon-eye"></i>Quick View</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!-- Start Single List Product -->
							<!-- Start Single List Product -->
							<div class="product__box product__box--list">
								<div class="row">
									<div class="col-md-4">
										<div class="product__img-box">
											<a href="single-1.html" class="product__img--link"> <img
												class="product__img"
												src="assets/img/product/size-normal/product-home-1-img-3.jpg"
												alt="">
											</a> <span class="product__tag product__tag--discount">-12%</span>

										</div>
									</div>
									<div class="col-md-5 pos-relative">
										<div class="border-right pos-absolute"></div>
										<div class="product__price">
											<span class="product__price-del">$11.90</span> <span
												class="product__price-reg">$10.71</span>
										</div>
										<a href="single-1.html"
											class="product__link product__link--underline product__link--weight-light m-t-15">
											SonicFuel Wireless Over-Ear Headphones </a>
										<div class="product__desc m-t-25 m-b-30">
											<p>The ATH-S700BT offers clear, full-bodied audio
												reproduction with Bluetooth® wireless operation. The
												headphones are equipped with a mic, and music and volume
												controls, allowing you to ...</p>
										</div>
									</div>
									<div class="col-md-3">
										<div>
											<ul class="shop__list-link">
												<li><a href="#modalAddCart" data-toggle="modal"
													class="btn btn--block btn--small btn--border-blue btn--uppercase btn--weight m-b-15">Add
														to cart</a></li>
												<li><a href="wishlist.html"
													class="link--gray link--icon-left shop__wishlist-icon m-b-5"><i
														class="icon-heart"></i>Add To Wishlist</a></li>
												<li><a href="#modalQuickView" data-toggle="modal"
													class="link--gray link--icon-left shop__quickview-icon"><i
														class="icon-eye"></i>Quick View</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!-- Start Single List Product -->

						</div>
					</div>
				</div>

				<div class="page-pagination">
					<!-- render pagination  -->

				</div>
			</div>
			<!-- Start Rightside - Content -->
		</div>
	</div>
</main>
<!-- ::::::  End  Main Container Section  ::::::  -->
<!-- material-scrolltop button -->
<button class="material-scrolltop" type="button"></button>

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

<!-- Start Modal Quickview cart -->
<div class="modal fade" id="modalQuickView" tabindex="-1" role="dialog"
	aria-hidden="true">
	<div class="modal-dialog  modal-dialog-centered modal-xl"
		role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title text-center">Quick View</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">
							<div class="product-gallery-box m-b-60">
								<div class="modal-product-image--large overflow-hidden">
									<div class="swiper-wrapper">
										<div class="swiper-slide">
											<img class="img-fluid"
												src="assets/img/product/gallery/gallery-large/product-gallery-large-1.jpg"
												alt="">
										</div>
										<div class="swiper-slide">
											<img class="img-fluid"
												src="assets/img/product/gallery/gallery-large/product-gallery-large-2.jpg"
												alt="">
										</div>
										<div class="swiper-slide">
											<img class="img-fluid"
												src="assets/img/product/gallery/gallery-large/product-gallery-large-3.jpg"
												alt="">
										</div>
										<div class="swiper-slide">
											<img class="img-fluid"
												src="assets/img/product/gallery/gallery-large/product-gallery-large-4.jpg"
												alt="">
										</div>
										<div class="swiper-slide">
											<img class="img-fluid"
												src="assets/img/product/gallery/gallery-large/product-gallery-large-5.jpg"
												alt="">
										</div>
									</div>
								</div>
								<div class="pos-relative">
									<div
										class="modal-product-image--thumb overflow-hidden swiper-outside-arrow-hover m-lr-30">
										<div class="swiper-wrapper ">
											<div class="swiper-slide">
												<img class="img-fluid"
													src="assets/img/product/gallery/gallery-thumb/product-gallery-thumb-1.jpg"
													alt="">
											</div>
											<div class="swiper-slide">
												<img class="img-fluid"
													src="assets/img/product/gallery/gallery-thumb/product-gallery-thumb-2.jpg"
													alt="">
											</div>
											<div class="swiper-slide">
												<img class="img-fluid"
													src="assets/img/product/gallery/gallery-thumb/product-gallery-thumb-3.jpg"
													alt="">
											</div>
											<div class="swiper-slide">
												<img class="img-fluid"
													src="assets/img/product/gallery/gallery-thumb/product-gallery-thumb-4.jpg"
													alt="">
											</div>
											<div class="swiper-slide">
												<img class="img-fluid"
													src="assets/img/product/gallery/gallery-thumb/product-gallery-thumb-5.jpg"
													alt="">
											</div>
										</div>
									</div>
									<div class="swiper-buttons">
										<!-- Add Arrows -->
										<div
											class="swiper-button-next gallery__nav gallery__nav--next">
											<i class="fal fa-chevron-right"></i>
										</div>
										<div
											class="swiper-button-prev gallery__nav gallery__nav--prev">
											<i class="fal fa-chevron-left"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="product-details-box">
								<h5 class="section-content__title">Canon Vista Fhd 4k
									Camcorder 2214c002</h5>
								<span class="text-reference">Reference: Jhon Doe</span>
								<div class="review-box">
									<ul class="product__review m-t-10 m-b-15">
										<li class="product__review--fill"><i class="icon-star"></i></li>
										<li class="product__review--fill"><i class="icon-star"></i></li>
										<li class="product__review--fill"><i class="icon-star"></i></li>
										<li class="product__review--fill"><i class="icon-star"></i></li>
										<li class="product__review--blank"><i class="icon-star"></i></li>
									</ul>
								</div>
								<div class="product__price">
									<span class="product__price-del">$35.90</span> <span
										class="product__price-reg">$31.69</span>
								</div>
								<div class="product__desc m-t-25 m-b-30">
									<p>The ATH-S700BT offers clear, full-bodied audio
										reproduction with Bluetooth® wireless operation. The
										headphones are equipped with a mic, and music and volume
										controls, allowing you to ...</p>
								</div>
								<div class="product-var p-t-30">
									<div class="product-size product-var__item">
										<span class="product-var__text">Size</span> <select
											id="product-size">
											<option value="small">S</option>
											<option value="medium">M</option>
											<option value="large">L</option>
											<option value="extraLarge">XL</option>
											<option value="doubleLarge">XXL</option>
										</select>
									</div>
									<div class="product-color product-var__item">
										<span class="product-var__text">Color</span>
										<div class="sidebar__color-filter ">
											<label class="product-color"><input
												name="product-color" type="radio"
												class="product-color-select" value="color-red"><span></span></label>
											<label class="product-color"><input
												name="product-color" type="radio"
												class="product-color-select" value="color-green" checked><span></span></label>
											<label class="product-color"><input
												name="product-color" type="radio"
												class="product-color-select" value="color-blue"><span></span></label>
										</div>
									</div>
									<div class="product-quantity product-var__item">
										<span class="product-var__text">Quantity</span>
										<div class="product-quantity-box">
											<div class="quantity">
												<input type="number" min="1" max="9" step="1" value="1">
											</div>
											<a href="#modalAddCart" data-toggle="modal"
												data-dismiss="modal"
												class="btn btn--box btn--small btn--blue btn--uppercase btn--weight m-l-20">Add
												to cart</a>
										</div>

									</div>
								</div>
								<div class="product-links ">
									<div class="product-social m-tb-30">
										<span>Share</span>
										<ul class="product-social-link">
											<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
											<li><a href="#"><i class="fab fa-twitter"></i></a></li>
											<li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
											<li><a href="#"><i class="fab fa-pinterest"></i></a></li>
										</ul>
									</div>
									<a href="wishlist.html"
										class="link--gray link--icon-left shop__wishlist-icon m-b-5"><i
										class="icon-heart"></i>Add To Wishlist</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Modal Quickview cart -->


<%@ include file="layout/footer.jsp"%>
<%@ include file="layout/scripts.jsp"%>
<script type="text/javascript">
	$(document).ready(function() {
		$.ajax({
			url : '/TubeFashtion/ProductController',
			dataType : 'json',
			data: {
				value: "timeUp"
			},
			error : function(error) {
				console.log(error);
				$('#result').html("loix")
			},
			success : function(data) {
				console.log(JSON.parse(data.listProduct)); 
				console.log(JSON.parse(data.listSale)); 
				console.log(JSON.parse(data.pagination)[0]);  
				console.log(JSON.parse(data.pagination)[0].totalPage);  
				$('#sort-grid').html(showProductList(JSON.parse(data.listProduct)));
				$('.page-pagination').html(showPagination(JSON.parse(data.pagination)[0]));
			},
			
			type : 'GET'
		});
		$('#select-sort').on("change", function() {
			let valueSort = $('#select-sort').val();
			$.ajax({
				url : '/TubeFashtion/ProductController',
				dataType : 'json',
				data: {
					value: valueSort,
				},
				success : function(data) {
					$('#sort-grid').html(showProductList(JSON.parse(data.listProduct)));
					$('.page-pagination').html(showPagination(JSON.parse(data.pagination)[0]));
				},
				
				type : 'GET'
			});
		})
	})
	function formatPrice(price) {
        const formatter = new Intl.NumberFormat('en-US', {
            style: 'currency',
            currency: 'VND',
            minimumFractionDigits: 0
        });
        return formatter.format(price);
    }
	
	function showProductList(listProduct, listSale) {
        let html = ``;
        let storeSale = ``;
        let storePrice = ``;
        listProduct.forEach(product => {
        	if(product.sale != 0) {
        		storeSale = `<span class="product__tag product__tag--discount">-\${product.sale}%</span>`;
        		storePrice = `
        			<span class="product__price-del">\${formatPrice(product.price)}</span> 
                    <span class="product__price-reg">\${formatPrice(product.price - product.price*product.sale/100)}</span>
        		`;
        	} else {
        		storeSale = ``;
        		storePrice = `<span class="product__price-reg">\${formatPrice(product.price)}</span>`;
        	}
            html += `
                <!-- Start Single Default Product -->
                <div
                    class="product__box product__box--default product__box--border-hover text-center float-left float-4">
                    <div class="product__img-box">
                        <a href="single-1.html" class="product__img--link"> <img
                            class="product__img"
                            src='<c:url value="/assets/img/product/male/nam-polo-01.jpg"></c:url>'
                            alt="">
                        </a> <a href="#modalAddCart" data-toggle="modal"
                            class="btn btn--box btn--small btn--gray btn--uppercase btn--weight btn--hover-zoom product__upper-btn">Add
                            to cart</a> \${storeSale}
                        <a href="wishlist.html" class="product__wishlist-icon"><i
                            class="icon-heart"></i></a>
                    </div>
                    <div class="product__price m-t-10">
                        \${storePrice}
                    </div>
                    <a href="single-1.html"
                        class="product__link product__link--underline product__link--weight-light m-t-15">
                        \${product.name} </a>
                </div>
                <!-- End Single Default Product -->
            `;
        });
        return html;
    }
	
	function showPagination(pagination) {
		let html = ``;
		
		<!-- Hiển thị danh sách phân trang -->
		let number = ``;
		for(let i = 1; i <= pagination.totalPage; i++) {
			if(i == pagination.pageCurrent) {
				number += `
					<li class="page-pagination__item"><a class="page-pagination__link active btn btn--gray" onclick="CLickPaginationProduct(\${i})">\${i}</a></li>
				`;
			} else {
				number += `
					<li class="page-pagination__item"><a class="page-pagination__link btn btn--gray" onclick="CLickPaginationProduct(\${i})">\${i}</a></li>
				`;
			}
		}
		
		<!-- Hiển thị previous và next -->
		let previous, next;
		if(pagination.pageCurrent > 1) {
			previous = `<li class="page-pagination__item"><a class="page-pagination__link btn btn--gray" onclick="CLickPaginationProduct(\${pagination.pageCurrent - 1})" ><i class="icon-chevron-left"></i> Previous</a></li>`;
		} else {
			previous = ``;
		}
		if(pagination.pageCurrent < pagination.totalPage) {
			next = `<li class="page-pagination__item"><a class="page-pagination__link btn btn--gray" onclick="CLickPaginationProduct(\${pagination.pageCurrent + 1})" >Next<i class="icon-chevron-right"></i></a></li>`;
		} else {
			next = ``;
		}
		
		html += `
			<ul class="page-pagination__list">
				\${previous}
				\${number}
				\${next}
			</ul>
		`;
		return html;
	}
	
	function CLickPaginationProduct(pageCurrent) {
		let valueSort = $('#select-sort').val();
		$.ajax({
			url : '/TubeFashtion/ProductController',
			dataType : 'json',
			data: {
				action: "sort",
				value: valueSort,
				pageCurrent: pageCurrent
			},
			error : function(error) {
				console.log(error);
				$('#result').html("loix")
			},
			success : function(data) {
				console.log(JSON.parse(data.listProduct)); 
				console.log(JSON.parse(data.listSale)); 
				console.log(JSON.parse(data.pagination)[0]);  
				console.log(JSON.parse(data.pagination)[0].totalPage);  
				$('#sort-grid').html(showProductList(JSON.parse(data.listProduct)));
				$('.page-pagination').html(showPagination(JSON.parse(data.pagination)[0]));
			},
			
			type : 'GET'
		});
	}
	
</script>
</body>

</html>