<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<%@ include file="layout/header.jsp"%>


<!-- ::::::  Start  Breadcrumb Section  ::::::  -->
<div class="page-breadcrumb">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<ul class="page-breadcrumb__menu">
					<li class="page-breadcrumb__nav"><a href="#">Home</a></li>
					<li class="page-breadcrumb__nav active">Single Product Page</li>
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
			<!-- Start Product Details Gallery -->
			<div class="col-12">
				<div class="product-details">
					<!-- render product-details -->
					<div class="row" id="productDetail">
					</div>
				</div>
			</div>
			<!-- End Product Details Gallery -->

			<!-- Start Product Details Tab -->
			<div class="col-12">
				<div
					class="product product--1 border-around product-details-tab-area">
					<div class="row">
						<div class="col-12">
							<div class="section-content--border">
								<ul
									class="tablist tablist--style-black tablist--style-title tablist--style-gap-70 nav">
									<li><a class="nav-link active" data-toggle="tab"
										href="#product-desc">Description</a></li>
									<li><a class="nav-link" data-toggle="tab"
										href="#product-dis">Product Details</a></li>
									<li><a class="nav-link" data-toggle="tab"
										href="#product-review">Reviews</a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-12">
							<div class="product-details-tab-box m-t-50">
								<div class="tab-content">
									<!-- Start Tab - Product Description -->
									<div class="tab-pane show active" id="product-desc">
										<div class="para__content">
											<p class="para__text">Use the Canon VIXIA GX10 Camcorder
												to capture UHD 4K video at 60 fps, recording in MP4 to dual
												SD memory card slots. This camcorder packs several pro-style
												features into its compact form, including Dual-Pixel
												Autofocus (DPAF). The GX10's 1" 8.29MP CMOS sensor and dual
												DIGIC DV 6 image processors support Wide DR Gamma with high
												sensitivity and low noise. Slow and fast-motion recording up
												to 120 fps offers special looks for highlighting sports and
												other special events. Smooth, steady shooting is assisted by
												the GX10's five-axis optical image stabilization. For
												composing and viewing your footage, the VIXIA GX10
												incorporates a flip-out 3.5" touchscreen LCD, and a 0.24"
												electronic viewfinder.</p>

											<p class="para__text">Additional GX10 features include an
												HDMI 2.0 port for outputting your 4K UHD footage, assignable
												user buttons, and remote control using the included WL-D89
												controller. Wi-Fi connectivity offers live streaming, FTP
												file sharing, and remote control via iOS and Android apps.</p>

											<h6 class="para__title">Product Highlights:</h6>
											<ul class="para__list">
												<li>UHD 4K Output up to 60 fps</li>
												<li>8.29MP, 1" CMOS Sensor</li>
												<li>Dual-Pixel CMOS Autofocus Feature</li>
												<li>Integrated 15x Optical Zoom Lens</li>
												<li>2 x DIGIC DV 6 Processors</li>
												<li>5-Axis Optical Image Stabilization</li>
												<li>Wide Dynamic Range Support</li>
												<li>Records 4K UHD/HD to Dual SD Card Slots</li>
												<li>3.5" Touchscreen LCD & 0.24" EVF</li>
												<li>Live Stream/FTP/Remote App via Wi-Fi</li>
											</ul>
										</div>
									</div>
									<!-- End Tab - Product Description -->

									<!-- Start Tab - Product Details -->
									<div class="tab-pane" id="product-dis">
										<div class="product-dis__content">
											<a href="#" class="product-dis__img m-b-30"><img
												src="assets/img/logo/another-logo.jpg" alt=""></a>
											<div class="table-responsive-md">
												<table class="product-dis__list table table-bordered">
													<tbody>
														<tr>
															<td class="product-dis__title">Weight</td>
															<td class="product-dis__text">400 g</td>
														</tr>
														<tr>
															<td class="product-dis__title">Materials</td>
															<td class="product-dis__text">60% cotton, 40%
																polyester</td>
														</tr>
														<tr>
															<td class="product-dis__title">Dimensions</td>
															<td class="product-dis__text">10 x 10 x 15 cm</td>
														</tr>
														<tr>
															<td class="product-dis__title">Other Info</td>
															<td class="product-dis__text">American heirloom jean
																shorts pug seitan letterpress</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<!-- End Tab - Product Details -->
									<!-- Start Tab - Product Review -->
									<div class="tab-pane " id="product-review">
										<!-- Start - Review Comment -->
										<ul class="comment">
											<!-- Start - Review Comment list-->
											<li class="comment__list">
												<div class="comment__wrapper">
													<div class="comment__img">
														<img src="assets/img/user/image-1.png" alt="">
													</div>
													<div class="comment__content">
														<div class="comment__content-top">
															<div class="comment__content-left">
																<h6 class="comment__name">Kaedyn Fraser</h6>
																<ul class="product__review">
																	<li class="product__review--fill"><i
																		class="icon-star"></i></li>
																	<li class="product__review--fill"><i
																		class="icon-star"></i></li>
																	<li class="product__review--fill"><i
																		class="icon-star"></i></li>
																	<li class="product__review--fill"><i
																		class="icon-star"></i></li>
																	<li class="product__review--blank"><i
																		class="icon-star"></i></li>
																</ul>
															</div>
															<div class="comment__content-right">
																<a href="#" class="link--gray link--icon-left m-b-5"><i
																	class="fas fa-reply"></i>Reply</a>
															</div>
														</div>

														<div class="para__content">
															<p class="para__text">Lorem ipsum dolor sit amet,
																consectetur adipisicing elit. Tempora inventore dolorem
																a unde modi iste odio amet, fugit fuga aliquam,
																voluptatem maiores animi dolor nulla magnam ea!
																Dignissimos aspernatur cumque nam quod sint provident
																modi alias culpa, inventore deserunt accusantium amet
																earum soluta consequatur quasi eum eius laboriosam,
																maiores praesentium explicabo enim dolores quaerat!
																Voluptas ad ullam quia odio sint sunt. Ipsam officia,
																saepe repellat.</p>
														</div>
													</div>
												</div> <!-- Start - Review Comment Reply-->
												<ul class="comment__reply">
													<li class="comment__reply-list">
														<div class="comment__wrapper">
															<div class="comment__img">
																<img src="assets/img/user/image-2.png" alt="">
															</div>
															<div class="comment__content">
																<div class="comment__content-top">
																	<div class="comment__content-left">
																		<h6 class="comment__name">Oaklee Odom</h6>
																	</div>
																	<div class="comment__content-right">
																		<a href="#" class="link--gray link--icon-left m-b-5"><i
																			class="fas fa-reply"></i>Reply</a>
																	</div>
																</div>

																<div class="para__content">
																	<p class="para__text">Lorem ipsum dolor sit amet,
																		consectetur adipisicing elit. Tempora inventore
																		dolorem a unde modi iste odio amet, fugit fuga
																		aliquam, voluptatem maiores animi dolor nulla magnam
																		ea! Dignissimos aspernatur cumque nam quod sint
																		provident modi alias culpa, inventore deserunt
																		accusantium amet earum soluta consequatur quasi eum
																		eius laboriosam, maiores praesentium explicabo enim
																		dolores quaerat! Voluptas ad ullam quia odio sint
																		sunt. Ipsam officia, saepe repellat.</p>
																</div>
															</div>
														</div>
													</li>
												</ul> <!-- End - Review Comment Reply-->
											</li>
											<!-- End - Review Comment list-->
											<!-- Start - Review Comment list-->
											<li class="comment__list">
												<div class="comment__wrapper">
													<div class="comment__img">
														<img src="assets/img/user/image-3.png" alt="">
													</div>
													<div class="comment__content">
														<div class="comment__content-top">
															<div class="comment__content-left">
																<h6 class="comment__name">Jaydin Jones</h6>
																<ul class="product__review">
																	<li class="product__review--fill"><i
																		class="icon-star"></i></li>
																	<li class="product__review--fill"><i
																		class="icon-star"></i></li>
																	<li class="product__review--fill"><i
																		class="icon-star"></i></li>
																	<li class="product__review--fill"><i
																		class="icon-star"></i></li>
																	<li class="product__review--blank"><i
																		class="icon-star"></i></li>
																</ul>
															</div>
															<div class="comment__content-right">
																<a href="#" class="link--gray link--icon-left m-b-5"><i
																	class="fas fa-reply"></i>Reply</a>
															</div>
														</div>

														<div class="para__content">
															<p class="para__text">Lorem ipsum dolor sit amet,
																consectetur adipisicing elit. Tempora inventore dolorem
																a unde modi iste odio amet, fugit fuga aliquam,
																voluptatem maiores animi dolor nulla magnam ea!
																Dignissimos aspernatur cumque nam quod sint provident
																modi alias culpa, inventore deserunt accusantium amet
																earum soluta consequatur quasi eum eius laboriosam,
																maiores praesentium explicabo enim dolores quaerat!
																Voluptas ad ullam quia odio sint sunt. Ipsam officia,
																saepe repellat.</p>
														</div>
													</div>
												</div>
											</li>
											<!-- End - Review Comment list-->
										</ul>
										<!-- End - Review Comment -->

										<a href="#modalReview" data-toggle="modal"
											class="btn btn--box btn--small btn--blue btn--uppercase btn--weight m-t-30">Write
											a review</a>
									</div>
									<!-- Start Tab - Product Review -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Product Details Tab -->

			<div class="col-12">
				<!-- ::::::  Start  Product Style - Default Section  ::::::  -->
				<div class="product product--1 swiper-outside-arrow-hover">
					<div class="row">
						<div class="col-12">
							<div
								class="section-content section-content--border d-flex align-items-center justify-content-between">
								<h5 class="section-content__title">Sản phẩm liên quan:</h5>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="swiper-outside-arrow-fix pos-relative">
								<div
									class="product-default-slider-5grid overflow-hidden  m-t-50">
									<div class="swiper-wrapper" id="listCategorySame">
										<!-- Render list san pham lien quan -->
									</div>
									<div class="swiper-buttons">
										<!-- Add Arrows -->
										<div
											class="swiper-button-next default__nav default__nav--next">
											<i class="fal fa-chevron-right"></i>
										</div>
										<div
											class="swiper-button-prev default__nav default__nav--prev">
											<i class="fal fa-chevron-left"></i>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
				<!-- ::::::  End  Product Style - Default Section  ::::::  -->
			</div>
		</div>
	</div>
</main>
<!-- ::::::  End  Main Container Section  ::::::  -->

<!-- ::::::  Start  Footer Section  ::::::  -->
<%@ include file="layout/footer.jsp"%>
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

<!-- Start Modal Review cart -->
<div class="modal fade" id="modalReview" tabindex="-1" role="dialog"
	aria-hidden="true">
	<div class="modal-dialog  modal-dialog-centered modal-sm"
		role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title text-center">WRITE YOUR REVIEW</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">
							<div class="modal-review-img">
								<img class="img-fluid  border-around"
									src="assets/img/product/size-large/product-home-1-lg-img-1.jpg"
									alt="">
							</div>
							<span class="modal__product-title m-t-25">SonicFuel
								Wireless Over-Ear Headphones</span>
							<div class="product__desc m-t-15">
								<p>The ATH-S700BT offers clear, full-bodied audio
									reproduction with Bluetooth® wireless operation. The headphones
									are equipped with a mic, and music and volume controls,
									allowing you to ...</p>
							</div>
						</div>
						<div class="col-md-6">
							<h6>Write Your Review</h6>
							<div class="review-box">
								<span>Quality</span>
								<ul class="product__review">
									<li class="product__review--fill"><i class="icon-star"></i></li>
									<li class="product__review--fill"><i class="icon-star"></i></li>
									<li class="product__review--fill"><i class="icon-star"></i></li>
									<li class="product__review--fill"><i class="icon-star"></i></li>
									<li class="product__review--blank"><i class="icon-star"></i></li>
								</ul>
							</div>
							<form action="#" method="post" class="form-box">
								<div class="form-box__single-group">
									<label for="form-message">Title for your review*</label> <input
										type="text" id="form-message">
								</div>
								<div class="form-box__single-group">
									<label for="form-review">Your review*</label>
									<textarea id="form-review" rows="5"></textarea>
								</div>
								<div class="form-box__single-group">
									<label for="form-name">Your name*</label> <input type="text"
										id="form-name">
								</div>
								<div
									class="from-box__buttons d-flex justify-content-between d-flex-warp m-t-25 align-items-center">
									<div class="from-box__left">
										<span>* Required fields</span>
									</div>
									<div class="form-box-right">
										<button
											class="btn btn--box btn--small btn--blue btn--uppercase btn--weight"
											type="submit">Send</button>
										or
										<button
											class="btn btn--box btn--small btn--blue btn--uppercase btn--weight"
											type="button" data-dismiss="modal" aria-label="Close">Cancel</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Modal Quickview cart -->
<input type="hidden" value='<%=request.getAttribute("idProduct")%>'
	id="idProduct" />
<!-- ::::::::::::::All Javascripts Files here ::::::::::::::-->
<%@ include file="layout/scripts.jsp"%>


<script type="text/javascript">
    $(document).ready(function() {
    	let idProduct = $('#idProduct').val();
		$.ajax({
			url : '/TubeFashtion/DetailProductController',
			dataType : 'json',
			data: {
				id: idProduct,
				size: "S"
			},
			success : function(data) {
				console.log(JSON.parse(data.listProductSame))
				$('#productDetail').html(renderProductDetail(JSON.parse(data.product), JSON.parse(data.listImage), JSON.parse(data.listSize), JSON.parse(data.listColor) ));
				$('#listCategorySame').html(renderListProductSame(JSON.parse(data.listProductSame)))
				/* Xử lý thay đổi size thì color thay đổi theo */
				$('#product-size-real').on("change", function() {
					let size = $('#product-size-real').val();
					$.ajax({
						url : '/TubeFashtion/DetailProductController',
						dataType : 'json',
						data: {
							id: idProduct,
							size: size,
						},
						success : function(data) {
							$('#color-filter').html(renderListColor(JSON.parse(data.listColor)));
							/* Xử lý khi click chọn màu thì số lượng tối đa được set */
							$('.product-color-select').on("click", function(e) {
								let color = e.currentTarget.value.split('-')[1];
								$('#quantity').html(renderQuantity(JSON.parse(data.listColor), color));
								$.getScript("/TubeFashtion/assets/js/plugin/in-number.js", function() {
							    });
							})
							/* Kết thúc  */
						},
						type : 'GET'
					});
				})
				/* Kết thúc xử lý thay đổi size */
				
				/* Xử lý khi click chọn màu thì số lượng tối đa được set */
				$('.product-color-select').on("click", function(e) {
					let color = e.currentTarget.value.split('-')[1];
					$('#quantity').html(renderQuantity(JSON.parse(data.listColor), color));
					$.getScript("/TubeFashtion/assets/js/plugin/in-number.js", function() {
				    });
				})
				/* Kết thúc  */
				
			},
			/*Gọi làm hàm script sau khi load ajax xong  */
			complete: function() {
			     $.getScript("/TubeFashtion/assets/js/plugin/in-number.js", function() {
			     });
			     $.getScript("/TubeFashtion/assets/js/plugin/swiper.min.js", function() {
			     });
			     $.getScript("/TubeFashtion/assets/js/main.js", function() {
			     });
			},
			type : 'GET'
		});
    });
    
    /*Render ra list ảnh của sản phẩm  */
    function renderListImage(product, listImage) {
    	let html = ``;
    	/*Render ra từng slider  */
    	let swiper_slide = ``;
    	listImage.forEach(image => {
    		swiper_slide += `
   			<div class="swiper-slide">
				<a 
					data-image='<c:url value="/assets/img/product/\${image.image}"></c:url>'
					data-zoom-image='<c:url value="/assets/img/product/\${image.image}"></c:url>'>
					<img class="img-fluid"
					src='<c:url value="/assets/img/product/\${image.image}"></c:url>'
					alt="" style="height: 115px; width: 115px">
				</a>
			</div>
    		`;
    	})
    	html += `
    		<div class="col-md-6">
			<div class="product-gallery-box m-b-60">
				<div class="product-image--large overflow-hidden">
					<img class="img-fluid" id="img-zoom"
						src='<c:url value="/assets/img/product/\${product.image}"></c:url>'
						data-zoom-image='<c:url value="/assets/img/product/\${product.image}"></c:url>'
						alt="" style="width:555px; height:555px">
				</div>
				<div class="pos-relative m-t-30">
					<div id="gallery-zoom"
						class="product-image--thumb product-image--thumb-horizontal overflow-hidden swiper-outside-arrow-hover m-lr-30">
						<div class="swiper-wrapper">
							\${swiper_slide}
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
    	`;
    	return html;
    }
    
    /* Xử lý render listSize của sản phẩm */
    function renderListSize(listSize) {
    	let html = ``;
    	listSize.forEach(size => {
    		html += `<option value="\${size.size}">\${size.size}</option>`
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
    
    /* Xử lý render List Color theo idSize ban đầu */
    function renderListColor(listColor) {
    	let html = ``;
    	listColor.forEach(color => {
    		html += `
    			<label class="product-color"><input name="product-color-select" type="radio" class="product-color-select" value="color-\${color.color}"><span></span></label>
    		`;
    	})
    	return html;
    }
    
    /* Xử lý số lượng tối đa khi click chọn màu */
    function renderQuantity(listColor, currentColor) {
    	let html = ``;
    	listColor.forEach(c => {
    		if(c.color == currentColor) {
		    	html += `<input type="number" min="1" max="\${c.quantity}" step="1" value="1" id="inputQuantity"/>`;
    		}
    	})
    	return html;
    }
    
    
    /* Render ra toàn bộ chi tiết sản phẩm */
    function renderProductDetail(product, listImage, listSize, listColor) {
    	let html = ``;
    	/* Xử lý giá sản phẩm  */
    	let priceSale = ``;
    	if(product.sale == 0) {
    		priceSale = `<span class="product__price-reg" id="priceProduct">\${formatPrice(product.price)}</span>`;
    	} else {
    		priceSale = `
    			<span class="product__price-del">\${formatPrice(product.price)}</span> 
                <span class="product__price-reg" id="priceProduct">\${formatPrice(product.price - product.price*product.sale/100)}</span>
    		`;
    	}
    	html += `
    		\${renderListImage(product, listImage)}
            <div class="col-md-6">
                <div class="product-details-box">
                    <h5 class="section-content__title">\${product.name}</h5>
                    <span class="text-reference">Reference: Jhon Doe</span>
                    <div class="review-box">
                        <ul class="product__review m-t-10 m-b-15">
                            \${renderRatingProduct(product.rating)}
                        </ul>
                        <a href="#product-review" class="link--gray link--icon-left  m-b-5"><i class="fal fa-comment-dots"></i>Read reviews (1) </a>
                        <a href="#modalReview" data-toggle="modal" class="link--gray link--icon-left m-b-5"><i class="fal fa-edit"></i> Write a review</a>
                    </div>
                    <div class="product__price">
                       \${priceSale}
                    </div>
                    <div class="product__desc m-t-25 m-b-30">
                        <p>\${product.descreption}</p>
                    </div>
                    <div class="product-var p-t-30">
                        <div class="product-size product-var__item">
                            <span class="product-var__text">Size</span>
                            <select id="product-size-real">
                                \${renderListSize(listSize)};
                            </select>
                        </div>
                        <div class="product-color product-var__item">
                            <span class="product-var__text">Color</span>
                            <div class="color-filter " id="color-filter">
                            	\${renderListColor(listColor)}
                            </div>
                        </div>
                        <div class="product-quantity product-var__item">
                            <span class="product-var__text">Quantity</span>
                            <div class="product-quantity-box">
                                <div class="quantity" id="quantity">
                                    \${renderQuantity(listColor, "red")}
                                </div>
                                <a onclick="AddToCart()" data-toggle="modal" data-dismiss="modal" class="btn btn--box btn--small btn--blue btn--uppercase btn--weight m-l-20">Add to cart</a>
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
                        <a href="wishlist.html" class="link--gray link--icon-left shop__wishlist-icon m-b-5"><i class="icon-heart"></i>Add To Wishlist</a>
                    </div>
                </div>
            </div>
        
    	`;
    	
    	return html;
    }
    
    /*Render list sản phẩm liên quan  */
    function renderListProductSame(listProductSame) {
    	let html = ``;
        let storeSale = ``;
        let storePrice = ``;
        listProductSame.forEach(product => {
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
                    class="product__box product__box--default product__box--border-hover swiper-slide text-center">
                    <div class="product__img-box">
                        <a href="<c:url value="/detail?id=\${product.id}"></c:url>" class="product__img--link"> <img
                            class="product__img"
                            src='<c:url value="/assets/img/product/\${product.image}"></c:url>'
                            alt="">
                        </a> <a href="#modalAddCart" data-toggle="modal"
                            class="btn btn--box btn--small btn--gray btn--uppercase btn--weight btn--hover-zoom product__upper-btn">Add
                            to cart</a> \${storeSale}
                        <a onclick="addWishList(\${product.id})" class="product__wishlist-icon"><i
                            class="icon-heart"></i></a>
                    </div>
                    <div class="product__price m-t-10">
                        \${storePrice}
                    </div>
                    <a href='<c:url value="/detail?id=\${product.id}"></c:url>'
                        class="product__link product__link--underline product__link--weight-light m-t-15">
                        \${product.name} </a>
                </div>
                <!-- End Single Default Product -->
            `;
        });
        return html;
    }
    
   	
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
