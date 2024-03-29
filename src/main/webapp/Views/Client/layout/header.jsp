<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<title>Tube</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- ::::::::::::::Favicon icon::::::::::::::-->
<link rel="shortcut icon"
	href='<c:url value="/assets/img/favicon.png"></c:url>'
	type="image/png">

<!-- ::::::::::::::All CSS Files here :::::::::::::: -->

<!-- Vendor CSS Files -->
<link rel="stylesheet"
	href='<c:url value="/assets/css/vendor/jquery-ui.min.css"></c:url>'>
<link rel="stylesheet"
	href='<c:url value="/assets/css/vendor/fontawesome.css"></c:url>'>
<link rel="stylesheet"
	href='<c:url value="/assets/css/vendor/plaza-icon.css"></c:url>'>
<link rel="stylesheet"
	href='<c:url value="/assets/css/vendor/bootstrap.min.css"></c:url>'>

<!-- Plugin CSS Files -->
<link rel="stylesheet"
	href='<c:url value="/assets/css/plugin/swiper.min.css"></c:url>'>
<link rel="stylesheet"
	href='<c:url value="/assets/css/plugin/material-scrolltop.css"></c:url>'>
<link rel="stylesheet"
	href='<c:url value="/assets/css/plugin/price_range_style.css"></c:url>'>
<link rel="stylesheet"
	href='<c:url value="/assets/css/plugin/in-number.css"></c:url>'>
<link rel="stylesheet"
	href='<c:url value="/assets/css/plugin/venobox.min.css"></c:url>'>

<!-- Use the minified version files listed below for better performance and remove the files listed above -->
<!-- <link rel="stylesheet" href="assets/css/vendor/vendor.min.css"/>
    <link rel="stylesheet" href="Views/Client/assets/css/plugin/plugins.min.css"/>
    <link rel="stylesheet" href="Views/Client/assets/css/main.min.css"> -->
<!--Toarst  -->
 <link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" />
<!-- Main Style CSS File -->
<link rel="stylesheet"
	href='<c:url value="/assets/css/main.css"></c:url>'>
</head>

<body>
	<!-- ::::::  Start  Header Section  ::::::  -->
	<header>
		<!-- ::::::  Start Large Header Section  ::::::  -->
		<div class="header header--1">
			<!-- Start Header Top area -->
			<div class="header__top header__top--style-1">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="header__top-content">
								<div class="header__top-content--left">
									<div class="contact_cms">
										<span class="cms1">Telephone: </span> <span class="cms2">0777.241.999</span>
										<% session.getAttribute("listCategory"); %>
									</div>
								</div>
								<div class="header__top-content--right">
									<div class="user-info user-set-role">
									<c:set var ="user" scope = "session" value ='<%= session.getAttribute("user") %>'/>
										<c:choose>
											<c:when test="${user != null }"> 
												<input type="hidden" value="<%= session.getAttribute("userId") %>" id="idUser"/>
												<a class="user-set-role__button" href="#"
													data-toggle="dropdown" aria-haspopup="true">Xin chào, ${user } <i
													class="fal fa-chevron-down"></i></a>
												<ul class="expand-dropdown-menu dropdown-menu">
													<li><a href="my-account.html">My account</a></li>
													<li><a href="wishlist.html">My wishlist</a></li>
													<li><a href="checkout.html">Checkout</a></li>
													<li><a href='<c:url value="/logout"/>'>Đăng Xuất</a></li>
												</ul>
											</c:when>
											<c:otherwise>
												<a href='<c:url value="/login"/>'>Đăng Nhập</a>
												<a href='<c:url value="/register"/>'>Đăng Ký</a>
											</c:otherwise>
										</c:choose> 

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Start Header Top area -->

			<!-- Start Header Middle area -->
			<div class="header__middle header__top--style-1 p-tb-30">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-lg-3">
							<div class="header__logo">
								<a href="index.html" class="header__logo-link"> <img
									src="assets/img/logo/logo-color.jpg" alt=""
									class="header__logo-img">
								</a>
							</div>
						</div>
						<div class="col-lg-9">
							<div class="row align-items-center">
								<div class="col-lg-10">
									<form class="header__search-form" action="#">
										<div class="header__search-category">
											<select class="bootstrap-select" name="poscats">
												<option value="0">Tất cả</option>
												<option value="12">Đồ Nam</option>
												<option value="27">Đồ Nữ</option>
												<option value="30">Đồ Đôi</option>
												<option value="31">Đồ Trẻ Em</option>

											</select>
										</div>
										<div class="header__search-input">
											<input type="search" placeholder="Nhập vào để tìm kiếm">
											<button
												class="btn btn--submit btn--blue btn--uppercase btn--weight "
												type="submit" style="min-width: 100px">Tìm Kiếm</button>
										</div>
									</form>
								</div>
								<div class="col-lg-2">
									<div class="header__wishlist-box">
										<!-- Start Header Wishlist Box -->
										<div class="header__wishlist pos-relative">
											<a href='<c:url value="/wishlist"></c:url>' class="header__wishlist-link"> <i
												class="icon-heart"></i> 
												<span class="wishlist-item-count pos-absolute" id="wishListQuantity"></span>
											</a>
										</div>
										<!-- End Header Wishlist Box -->

										<!-- Start Header Add Cart Box -->
										<div class="header-add-cart pos-relative m-l-40">
											<a onclick="ViewToCart()" id="viewToCart">
												<i class="icon-shopping-cart"></i> 
												<span class="wishlist-item-count pos-absolute" id="listCartQuantity"></span>
											</a>
										</div>
										<!-- End Header Add Cart Box -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Header Middle area -->

			<!-- Start Header Menu Area -->
			<div class="header-menu">
				<div class="container">
					<div class="row col-12">
						<nav>
							<ul class="header__nav">
								<!--Start Single Nav link-->
								<li class="header__nav-item pos-relative"><a
									href='<c:url value="/"></c:url>' class="header__nav-link">Trang Chủ</a></li>
								<!-- End Single Nav link-->

								<c:forEach items="${listCategory}" var="c">
								
								<!--Start Single Nav link-->
								<li class="header__nav-item pos-relative"><a href='<c:url value="/shop-list-${c.id}"></c:url>' class="header__nav-link">${c.name} <i class="icon-chevron-down"></i></a> 
									<!--Single Dropdown Menu-->
									<ul class="dropdown__menu pos-absolute">
									<c:forEach items="${listSubCategory}" var="sub">
										<c:if test="${sub.idCategory == c.id }">
											<li class="dropdown__list"><a href="#" class="dropdown__link">${sub.name}</a></li>
										</c:if>	
									</c:forEach>
									</ul> <!--Single Dropdown Menu--></li>
								<!-- End Single Nav link-->
								</c:forEach>

								<!--Start Single Nav link-->
								<li class="header__nav-item pos-relative"><a href="#"
									class="header__nav-link">Shop <i class="icon-chevron-down"></i></a>
									<!-- Megamenu Menu-->
									<ul class="mega-menu pos-absolute">
										<li class="mega-menu__box">
											<!--Single Megamenu Item Menu-->
											<div class="mega-menu__item-box">
												<span class="mega-menu__title">Shop Page Grid</span>
												<ul class="mega-menu__item">
													<li class="mega-menu__list"><a href="single-1.html"
														class="mega-menu__link">Shop Default</a></li>
													<li class="mega-menu__list"><a href='<c:url value="/shop-list"></c:url>'
														class="mega-menu__link">Shop 4grid</a></li>
													<li class="mega-menu__list"><a href="shop-5-grid.html"
														class="mega-menu__link">Shop 5grid</a></li>
													<li class="mega-menu__list"><a
														href="shop-grid-left-sidebar.html" class="mega-menu__link">Shop
															Left Sidebar</a></li>
													<li class="mega-menu__list"><a
														href="shop-grid-right-sidebar.html"
														class="mega-menu__link">Shop Right Sidebar</a></li>
												</ul>
											</div> <!--Single Megamenu Item Menu--> <!--Single Megamenu Item Menu-->
											<div class="mega-menu__item-box">
												<span class="mega-menu__title">Shop Page List</span>
												<ul class="mega-menu__item">
													<li class="mega-menu__list"><a href="shop-list.html"
														class="mega-menu__link">Shop List</a></li>
													<li class="mega-menu__list"><a
														href="shop-list-left-sidebar.html" class="mega-menu__link">Shop
															Left Sidebar</a></li>
													<li class="mega-menu__list"><a
														href="shop-list-right-sidebar.html"
														class="mega-menu__link">Shop Right Sidebar</a></li>
												</ul>
											</div> <!--Single Megamenu Item Menu--> <!--Single Megamenu Item Menu-->
											<div class="mega-menu__item-box">
												<span class="mega-menu__title">Product Single</span>
												<ul class="mega-menu__item">
													<li class="mega-menu__list"><a href="single-1.html"
														class="mega-menu__link">Single</a></li>
													<li class="mega-menu__list"><a
														href="single-variable.html" class="mega-menu__link">Variable</a></li>
													<li class="mega-menu__list"><a
														href="single-left-tab.html" class="mega-menu__link">Left
															Tab</a></li>
													<li class="mega-menu__list"><a
														href="single-right-tab.html" class="mega-menu__link">Right
															Tab</a></li>
												</ul>
											</div> <!--Single Megamenu Item Menu--> <!--Single Megamenu Item Menu-->
											<div class="mega-menu__item-box">
												<span class="mega-menu__title">Product Single</span>
												<ul class="mega-menu__item">
													<li class="mega-menu__list"><a
														href="single-slider.html" class="mega-menu__link">Single
															Slider</a></li>
													<li class="mega-menu__list"><a
														href="single-gallery-left.html" class="mega-menu__link">Gallery
															Left</a></li>
													<li class="mega-menu__list"><a
														href="single-gallery-right.html" class="mega-menu__link">Gallery
															Right</a></li>
													<li class="mega-menu__list"><a
														href="single-sticky-left.html" class="mega-menu__link">Sticky
															Left</a></li>
													<li class="mega-menu__list"><a
														href="single-sticky-right.html" class="mega-menu__link">Sticky
															Right</a></li>
												</ul>
											</div> <!--Single Megamenu Item Menu-->
										</li>
										<!--Megamenu Item Banner-->
										<li class="mega-menu__banner"><a href="single-1.html"
											class="mega-menu__banner-link"> <img
												src="assets/img/banner/menu-banner.jpg" alt=""
												class="mega-menu__banner-img">
										</a></li>
										<!--Megamenu Item Banner-->
									</ul> <!-- Megamenu Menu--></li>
								<!-- Start Single Nav link-->

								<!--Start Single Nav link-->
								<li class="header__nav-item pos-relative"><a href="#"
									class="header__nav-link">Blog<i class="icon-chevron-down"></i></a>
									<!--Single Dropdown Menu-->
									<ul class="dropdown__menu pos-absolute">
										<li class="dropdown__list"><a href="#"
											class="dropdown__link">Blog Grid</a>
											<ul class="dropdown__submenu pos-absolute">
												<li class="dropdown__submenu-list"><a
													href="blog-grid-left-sidebar.html"
													class="dropdown__submenu-link"> Blog Grid Left Sidebar</a></li>
												<li class="dropdown__submenu-list"><a
													href="blog-grid-right-sidebar.html"
													class="dropdown__submenu-link"> Blog Grid Right Sidebar</a></li>
											</ul></li>
										<li class="dropdown__list"><a href="#"
											class="dropdown__link">Blog List</a>
											<ul class="dropdown__submenu pos-absolute">
												<li class="dropdown__submenu-list"><a
													href="blog-list-left-sidebar.html"
													class="dropdown__submenu-link"> Blog List Left Sidebar</a></li>
												<li class="dropdown__submenu-list"><a
													href="blog-list-right-sidebar.html"
													class="dropdown__submenu-link"> Blog List Right Sidebar</a></li>
											</ul></li>
										<li class="dropdown__list"><a href="#"
											class="dropdown__link">Blog Single</a>
											<ul class="dropdown__submenu pos-absolute">
												<li class="dropdown__submenu-list"><a
													href="blog-single-left-sidebar.html"
													class="dropdown__submenu-link"> Blog Single Left
														Sidebar</a></li>
												<li class="dropdown__submenu-list"><a
													href="blog-single-right-sidebar.html"
													class="dropdown__submenu-link"> Blog Single Right
														Sidebar</a></li>
											</ul></li>
									</ul> <!--Single Dropdown Menu--></li>
								<!-- End Single Nav link-->

								<!--Start Single Nav link-->
								<li class="header__nav-item pos-relative"><a
									href="contact.html" class="header__nav-link">Contact Us</a></li>
								<!-- End Single Nav link-->
							</ul>
						</nav>
					</div>
				</div>
			</div>
			
			<!-- End Header Menu Area -->

			<!-- Start Header Tag Area -->
			<div class="header__bottom header__bottom--style-1">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="header__tag">
								<span class="header__tag-title">Top Tags</span>
								<ul class="header__tag-nav">
									<li class="header__tag-list"><a href=""
										class="header__tag-link">Ebooks</a></li>
									<li class="header__tag-list"><a href=""
										class="header__tag-link">Drone</a></li>
									<li class="header__tag-list"><a href=""
										class="header__tag-link">Mobile Phone</a></li>
									<li class="header__tag-list"><a href=""
										class="header__tag-link">Head Phone</a></li>
									<li class="header__tag-list"><a href=""
										class="header__tag-link">Digital Watch</a></li>
									<li class="header__tag-list"><a href=""
										class="header__tag-link">Gaming Console</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Header Tag Area -->
		</div>
		<!-- ::::::  End Large Header Section  ::::::  -->

		<!-- ::::::  Start Mobile Header Section  ::::::  -->
		<div class="header__mobile mobile-header--1">
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<!-- Start Header Mobile Top area -->
						<div class="header__mobile-top">
							<div class="mobile-header__logo">
								<a href="index.html" class="mobile-header__logo-link"> <img
									src="" alt=""
									class="mobile-header__logo-img">
								</a>
							</div>
							<div class="header__wishlist-box">
								<!-- Start Header Wishlist Box -->
								<div class="header__wishlist pos-relative">
									<a href='<c:url value="/wishlist"></c:url>' class="header__wishlist-link"> <i
										class="icon-heart"></i> <span
										class="wishlist-item-count pos-absolute">3</span>
									</a>
								</div>
								<!-- End Header Wishlist Box -->

								<!-- Start Header Add Cart Box -->
								<div class="header-add-cart pos-relative m-l-20">
									<a href="#offcanvas-add-cart__box"
										class="header__wishlist-link offcanvas--open-checkout offcanvas-toggle">
										<i class="icon-shopping-cart"></i> <span
										class="wishlist-item-count pos-absolute">3</span>
									</a>
								</div>
								<!-- End Header Add Cart Box -->

								<a href="#offcanvas-mobile-menu" class="offcanvas-toggle m-l-20"><i
									class="icon-menu"></i></a>

							</div>
						</div>
						<!-- End Header Mobile Top area -->

						<!-- Start Header Mobile Middle area -->
						<div class="header__mobile-middle header__top--style-1 p-tb-10">
							<form class="header__search-form" action="#">
								<div
									class="header__search-category header__search-category--mobile">
									<select class="bootstrap-select">
										<option value="0">All</option>
										<option value="12">Fashion</option>
										<option value="27">- - Women</option>
										<option value="30">- - - - Dresses</option>
										<option value="31">- - - - Shirts &amp; Blouses</option>
										<option value="32">- - - - Blazers</option>
										<option value="33">- - - - Lingerie</option>
										<option value="34">- - - - Jeans</option>
										<option value="28">- - Men</option>
										<option value="35">- - - - Shorts</option>
										<option value="36">- - - - Sportswear</option>
										<option value="37">- - - - Swimwear</option>
										<option value="38">- - - - Jackets &amp; Suits</option>
										<option value="39">- - - - T-shirts &amp; Tank Tops</option>
										<option value="29">- - Kids</option>
										<option value="40">- - - - Trousers</option>
										<option value="41">- - - - Shirts &amp; Tops</option>
										<option value="42">- - - - Knitwear</option>
										<option value="43">- - - - Jackets</option>
										<option value="44">- - - - Sandals</option>
										<option value="13">Electronics</option>
										<option value="45">- - Cameras</option>
										<option value="49">- - - - Cords and Cables</option>
										<option value="50">- - - - gps accessories</option>
										<option value="51">- - - - Microphones</option>
										<option value="52">- - - - Wireless Transmitters</option>
										<option value="46">- - Audio</option>
										<option value="53">- - - - Other Accessories</option>
										<option value="54">- - - - Portable Audio</option>
										<option value="55">- - - - Satellite Radio</option>
										<option value="56">- - - - Visual Accessories</option>
										<option value="47">- - Cell Phones</option>
										<option value="57">- - - - iPhone</option>
										<option value="58">- - - - Samsung Galaxy</option>
										<option value="59">- - - - SIM Cards</option>
										<option value="60">- - - - Prepaid Cell Phones</option>
										<option value="48">- - TV &amp; Video</option>
										<option value="61">- - - - 4K Ultra HDTVs</option>
										<option value="62">- - - - All TVs</option>
										<option value="63">- - - - Refurbished TVs</option>
										<option value="64">- - - - TV Accessories</option>
										<option value="14">Toys &amp; Hobbies</option>
										<option value="65">- - Books &amp; Board Games</option>
										<option value="67">- - - - Arts &amp; Crafts</option>
										<option value="68">- - - - Baby &amp; Toddler Toys</option>
										<option value="69">- - - - Electronics for Kids</option>
										<option value="70">- - - - Dolls &amp; Accessories</option>
										<option value="66">- - Baby Dolls</option>
										<option value="71">- - - - Baby Alive Dolls</option>
										<option value="72">- - - - Barbie</option>
										<option value="73">- - - - Baby Annabell</option>
										<option value="74">- - - - Bratz</option>
										<option value="15">Sports &amp; Outdoors</option>
										<option value="16">Smartphone &amp; Tablets</option>
										<option value="17">Health &amp; Beauty</option>
										<option value="18">Computers &amp; Networking</option>
										<option value="19">Accessories</option>
										<option value="20">Jewelry &amp; Watches</option>
										<option value="21">Flashlights &amp; Lamps</option>
										<option value="22">Cameras &amp; Photo</option>
										<option value="23">Holiday Supplies &amp; Gifts</option>
										<option value="24">Automotive</option>
										<option value="25">cosmetic</option>
									</select>
								</div>
								<div class="header__search-input header__search-input--mobile">
									<input type="search" placeholder="Enter your search">
									<button
										class="btn btn--submit btn--blue btn--uppercase btn--weight"
										type="submit">
										<i class="fal fa-search"></i>
									</button>
								</div>
							</form>
						</div>
						<!-- End Header Mobile Middle area -->

					</div>
				</div>
			</div>
		</div>
		<!-- ::::::  Start Mobile Header Section  ::::::  -->

		<!-- ::::::  Start Mobile-offcanvas Menu Section  ::::::  -->
		<div id="offcanvas-mobile-menu"
			class="offcanvas offcanvas-mobile-menu">
			<button class="offcanvas__close offcanvas-close">&times;</button>
			<div class="offcanvas-inner">
				<div class="offcanvas-userpanel m-b-30">
					<ul>
						<li class="offcanvas-userpanel__role"><a href="#">Setting</a>
							<ul class="user-sub-menu">
								<li><a href="my-account.html">My account</a></li>
								<li><a href="wishlist.html">My wishlist</a></li>
								<li><a href="checkout.html">Checkout</a></li>
								<li><a href="login.html">Sign in</a></li>
							</ul></li>
						<li class="offcanvas-userpanel__role"><a href="#">USD $</a>
							<ul class="user-sub-menu">
								<li><a href="#">USD $</a></li>
								<li><a href="#">EURO €</a></li>
							</ul></li>
						<li class="offcanvas-userpanel__role"><a href="#"><img
								src="assets/img/icon/flag/icon_usa.png" alt="">English </a>
							<ul class="user-sub-menu">
								<li><a href="#"><img
										src="assets/img/icon/flag/icon_usa.png" alt="">English</a></li>
								<li><a href="#"><img
										src="assets/img/icon/flag/icon_france.png" alt="">
										Français</a></li>
							</ul></li>
					</ul>
				</div>

				<div class="offcanvas-menu m-b-30">
					<h4>Menu</h4>
					<ul>
						<li><a href="#"><span>Home</span></a>
							<ul class="sub-menu">
								<li><a href="index.html"><span class="menu-text">Home
											1</span></a></li>
								<li><a href="index-2.html"><span class="menu-text">Home
											2</span></a></li>
								<li><a href="index-3.html"><span class="menu-text">Home
											3</span></a></li>
								<li><a href="index-4.html"><span class="menu-text">Home
											4</span></a></li>
							</ul></li>
						<li><a href="#"><span>Pages</span></a>
							<ul class="sub-menu">
								<li><a href="about.html">About</a></li>
								<li><a href="cart.html">Cart</a></li>
								<li><a href="checkout.html">Checkout</a></li>
								<li><a href="compare.html">Compare</a></li>
								<li><a href="empty-cart.html">Empty Cart</a></li>
								<li><a href="wishlist.html">Wishlist</a></li>
								<li><a href="my-account.html">My Account</a></li>
								<li><a href="login.html">Login</a></li>
								<li><a href="404-page.html">404 Page</a></li>
							</ul></li>
						<li><a href="#"><span>Shop</span></a>
							<ul class="sub-menu">
								<li><a href="#">Shop Grid</a>
									<ul class="sub-menu">
										<li><a href="single-1.html">Shop Default</a></li>
										<li><a href="shop-4-grid.html">Shop 4grid</a></li>
										<li><a href="shop-5-grid.html">Shop 5grid</a></li>
										<li><a href="shop-grid-left-sidebar.html">Shop Left
												Sidebar</a></li>
										<li><a href="shop-grid-right-sidebar.html">Shop Right
												Sidebar</a></li>
									</ul></li>
							</ul>
							<ul class="sub-menu">
								<li><a href="#">Shop List</a>
									<ul class="sub-menu">
										<li><a href="shop-list.html">Shop List</a></li>
										<li><a href="shop-list-left-sidebar.html">Shop Left
												Sidebar</a></li>
										<li><a href="shop-list-right-sidebar.html">Shop Right
												Sidebar</a></li>
									</ul></li>
							</ul>
							<ul class="sub-menu">
								<li><a href="#">Product Single</a>
									<ul class="sub-menu">
										<li><a href="single-1.html">Single</a></li>
										<li><a href="single-variable.html">Variable</a></li>
										<li><a href="single-left-tab.html">Left Tab</a></li>
										<li><a href="single-right-tab.html">Right Tab</a></li>
										<li><a href="single-slider.html">Single Slider</a></li>
										<li><a href="single-gallery-left.html">Gallery Left</a></li>
										<li><a href="single-gallery-right.html">Gallery Right</a></li>
										<li><a href="single-sticky-left.html">Sticky Left</a></li>
										<li><a href="single-sticky-right.html">Sticky Right</a></li>
									</ul></li>
							</ul></li>
						<li><a href="#"><span>Blogs</span></a>
							<ul class="sub-menu">
								<li><a href="#">Blog Grid</a>
									<ul class="sub-menu">
										<li><a href="blog-grid-left-sidebar.html"> Blog Grid
												Left Sidebar</a></li>
										<li><a href="blog-grid-right-sidebar.html"> Blog Grid
												Right Sidebar</a></li>
									</ul></li>
								<li><a href="#">Blog List</a>
									<ul class="sub-menu">
										<li><a href="blog-list-left-sidebar.html"> Blog List
												Left Sidebar</a></li>
										<li><a href="blog-list-right-sidebar.html"> Blog List
												Right Sidebar</a></li>
									</ul></li>
								<li><a href="#">Blog Single</a>
									<ul class="sub-menu">
										<li><a href="blog-single-left-sidebar.html"> Blog
												List Left Sidebar</a></li>
										<li><a href="blog-single-right-sidebar.html"> Blog
												List Right Sidebar</a></li>
									</ul></li>
							</ul></li>
						<li><a href="contact.html">Contact Us</a></li>
					</ul>
				</div>
				<div class="offcanvas-buttons m-b-30">
					<a href="my-account.html" class="user"><i class="icon-user"></i></a>
					<a href="wishlist.html"><i class="icon-heart"></i></a> <a
						href="cart.html"><i class="icon-shopping-cart"></i></a>
				</div>
				<div class="offcanvas-social">
					<span>Stay With Us</span>
					<ul>
						<li><a href="#"><i class="fab fa-twitter"></i></a></li>
						<li><a href="#"><i class="fab fa-youtube"></i></a></li>
						<li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
						<li><a href="#"><i class="fab fa-instagram"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- ::::::  End Mobile-offcanvas Menu Section  ::::::  -->

		<!-- ::::::  Start Popup Add Cart ::::::  -->
		<div id="offcanvas-add-cart__box" class="offcanvas offcanvas-cart offcanvas-add-cart">
			
		</div>
		<!-- :::::: End Popup Add Cart :::::: -->

		<div class="offcanvas-overlay"></div>
	</header>
	<!-- ::::::  End  Header Section  ::::::  -->