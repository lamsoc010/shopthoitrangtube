<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- ::::::::::::::All Javascripts Files here ::::::::::::::-->

    <!-- Vendor JS Files -->
    <script src="https://cdn.jsdelivr.net/npm/moment@2.24.0/moment.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
		integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src='<c:url value="/assets/js/vendor/jquery-3.5.1.min.js"/>'></script>
    <script src='<c:url value="/assets/js/vendor/modernizr-3.7.1.min.js"/>'></script>
    <script src='<c:url value="/assets/js/vendor/jquery-ui.min.js"/>'></script>
    <script src='<c:url value="/assets/js/vendor/bootstrap.bundle.js"/>'></script>

    <!-- Plugins JS Files -->
    <script src='<c:url value="/assets/js/plugin/swiper.min.js"/>'></script>
    <script src='<c:url value="/assets/js/plugin/jquery.countdown.min.js"/>'></script>
    <script src='<c:url value="/assets/js/plugin/material-scrolltop.js"/>'></script>
    <script src='<c:url value="/assets/js/plugin/price_range_script.js"/>'></script>
    <script src='<c:url value="/assets/js/plugin/in-number.js"/>'></script>
    <script src='<c:url value="/assets/js/plugin/jquery.elevateZoom-3.0.8.min.js"/>'></script>
    <script src='<c:url value="/assets/js/plugin/venobox.min.js"/>'></script>

    <!-- Use the minified version files listed below for better performance and remove the files listed above -->
    <!-- <script src="assets/js/vendor/vendor.min.js"/>'></script>
    <script src="assets/js/plugin/plugins.min.js"/>'></script> -->

    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src='<c:url value="/assets/js/main.js"/>'></script>
    
    <!--Them san pham vao muc yeu thich  -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    <script> 
    /* Thêm vào danh mục yêu thích  */
	function addWishList(id) {
		let idUser = $('#idUser').val();
		$.ajax({
			url : '/TubeFashtion/WishListController',
			dataType : 'json',
			data: {
				id: id,
				idUser: idUser
			},
			success : function(data) {
				$('#wishlist-item').html(JSON.parse(data.listWishList).length); 
				console.log(JSON.parse(data.listWishList).length);
				console.log(JSON.parse(data.message));
				if(JSON.parse(data.message) == "susscess") {
					toastr.success('Thêm sản phẩm thành công!');
				} else if(JSON.parse(data.message) == "error") {
					toastr.error('Sản phẩm này đã có trong danh sách yêu thích');
				}
			},
			
			type : 'GET'
		});
	}
    </script>
    