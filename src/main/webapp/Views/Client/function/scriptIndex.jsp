<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
				$('#wishListQuantity').html(JSON.parse(data.listWishList).length); 
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
	$(document).ready(function() {
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
	})
	
    </script>