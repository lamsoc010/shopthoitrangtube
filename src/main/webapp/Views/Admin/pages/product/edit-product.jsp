<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--HEAD ROW-->
<jsp:include page="../../layouts/Head.jsp"></jsp:include>
<!-- / HEAD ROW-->

<!--HEADER ROW-->
<jsp:include page="../../layouts/Header.jsp"></jsp:include>
<!-- / HEADER ROW-->

<!--HEADER ROW-->
<jsp:include page="../../layouts/TabBar.jsp"></jsp:include>
<!-- / HEADER ROW-->
<div class="content-wrapper">

	<form method="post" id="upload-image-form" class="p-2"
		enctype="multipart/form-data">

		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>Nội dung bài đăng</h1>
					</div>

				</div>
			</div>
			<!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		<section class="content">
			<div class="row">
				<div class="col-md-12">
					<div class="card card-outline card-info">
						<div class="card-header">
							<h3 class="card-title">tiêu đề</h3>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<div class="row">
								<div class="col-md-6">
									<h5>Mã Sản Phẩm</h5>
									<input class="form-control" type="text" name="idProduct"
										placeholder="Title">
								</div>
								<div class="col-md-6">
									<h5>Tên Sản Phẩm</h5>
									<input class="form-control" type="text" name="name"
										placeholder="Title">
								</div>
								<div class="col-md-6">
									<h5>Giá</h5>
									<input class="form-control" type="text" name="price"
										placeholder="Title">
								</div>
								<div class="col-md-6">
									<div class="col-md">
										<h5>Loại Sản Phẩm</h5>
										<select class="form-control select2" id="category"
											name="category" style="width: 100%;">
											<option selected="selected" value="">--tất cả--</option>
										</select>
									</div>
								</div>
								<div class="col-md-6">
									<div class="col-md">
										<h5>Chi Tiết Loại</h5>
										<select class="form-control select2" id="sub_category"
											name="sub_category" style="width: 100%;">
											<option selected="selected" value="">--tất cả--</option>
										</select>
									</div>
								</div>
								<div class="col-md-6">
									<div class="col-md">
										<h5>Sale</h5>
										<input class="form-control" type="number" name="sale"
										placeholder="Phần trăm sale">
									</div>
								</div>
								<div class="col-md-6">
									<div class="col-md">
										<h5>Thời gian sale</h5>
										<input class="form-control" type="date" name="time_sale"
										placeholder="Thời gian sale">
									</div>
								</div>
							</div>
							
							<hr>
							
							<h3>Nội dung</h3>
							<textarea id="summernote" name="content">
              				</textarea>

							<hr>
							<!-- choose file  -->
							<div class="chooseFile">
								<label class="custom-file-label" for="file-input">Chọn
									ảnh</label> 
									<span class="text-danger" id="image-input-error"></span> 
									<input
									id="file-input" type="file" name="file[]"
									class="custom-file-input" multiple>
								<div id="preview">
								</div>
							</div>
							<div class="col-12 pt-2">
								<button type="submit" id="submitEditProduct" class="btn btn-primary">Chỉnh Sửa</button>
								<button type="submit" id="resetImageProduct" class="btn btn-primary">Reset Ảnh</button>
								<button type="submit" id="submitAddProduct" class="btn btn-primary">Reset bài đăng</button>
								<!-- <button type="submit" class="btn btn-primary" id="submit">Submit</button> -->

							</div>
							
							
							<hr>
							<div class="row">
							
								<div class="col-md-6">
									<div class="col-md">
										<h5>Size</h5>
										<select class="form-control select2" id="size"
											name="size" style="width: 100%;">
											<option selected="selected" value="">--tất cả--</option>
										</select>
									</div>
								</div>
								<div class="col-md-6">
									<div class="col-md">
										<h5>Màu Sắc</h5>
										<select class="form-control select2" id="color"
											name="color" style="width: 100%;">
											<option selected="selected" value="">--tất cả--</option>
										</select>
									</div>
								</div>
								<div class="col-md-6">
									<div class="col-md">
										<h5>Số Lượng</h5>
										<input type="number" id="quantity" value="1" name="quantity">
									</div>
								</div>
								<div class="col-12 pt-2">
									<button type="submit" id="updateProduct" class="btn btn-primary">Cập Nhập</button>
	
									<!-- <button type="submit" class="btn btn-primary" id="submit">Submit</button> -->

								</div>
							</div>
							
						</div>

					</div>
				</div>
				<!-- /.col-->
			</div>


		</section>
		<!-- /.content -->

	</form>
	<input type="hidden" value='<%=request.getAttribute("idProduct")%>'
	id="idProduct" />
	<input type="hidden" value='<%=request.getAttribute("idCategory")%>'
	id="idCategory" />
</div>

<jsp:include page="../../layouts/Footer.jsp"></jsp:include>

<!--Script datatable  -->
<!-- Summernote -->
<script
	src='<c:url value="/assets/AdminPTH/plugins/summernote/summernote-bs4.min.js"/>'></script>
<!-- CodeMirror -->
<script
	src=<c:url value="/assets/AdminPTH/plugins/codemirror/codemirror.js"/>></script>
<script
	src=<c:url value="/assets/AdminPTH/plugins/codemirror/mode/css/css.js"/>></script>
<script
	src=<c:url value="/assets/AdminPTH/plugins/codemirror/mode/xml/xml.js"/>></script>
<script
	src=<c:url value="/assets/AdminPTH/plugins/codemirror/mode/htmlmixed/htmlmixed.js"/>></script>
<!-- Message -->
<script
	src=<c:url value="/assets/AdminPTH/plugins/sweetalert2/sweetalert2.min.js"/>></script>
<script>
	/*Khai baos id cuar product  */
	let id;
	$(document).ready(function() {
		let idProduct = $('#idProduct').val();
		console.log(idProduct);
		$.ajax({
            type: "get",
            url: "/TubeFashtion/NewProductController",
            data: {
            	action: "edit",
            	id: idProduct
            },
            success: function (data) {
            	/*Render List category  */
            	$('#category').append(renderListCategory(JSON.parse(data.listCategory)))
            	
            	/* Khi category thay đổi thì sub category đổi theo  */
            	$('#category').on('change', function() {
            		let idCategory = $('#category').val();
            		$.ajax({
                        type: "get",
                        data: {
                        	action: "show",
                        	idCategory: idCategory
                        },
                        url: "/TubeFashtion/NewProductController",
                        success: function (data) {
                        	$('#sub_category').html(renderListSubCategory(JSON.parse(data.listSubCategory)))
                        },
                    });
            	})
            	
            	/*Render listsize và list color  */
            	$('#size').html(renderListSize(JSON.parse(data.listSize)))
            	$('#color').html(renderListColor(JSON.parse(data.listColor)))
            	
            	/*Đổ dữ liệu vào form  */
            	console.log(JSON.parse(data.product))
            	renderValueProduct(JSON.parse(data.product), JSON.parse(data.idCategory))
            	
            	/*Xét id  */
            	id = JSON.parse(data.product).id;
            },
        });
		$('#summernote').summernote();
	});
	
	
	function renderValueProduct(product, idCategory) {
		console.log(product.time_sale)
		$('input[name="idProduct"]').val(product.idProduct);
		$('input[name="name"]').val(product.name);
		$('input[name="price"]').val(product.price);
		$("#category").val(idCategory).change();
		setTimeout(() => {
				$('#sub_category').val(product.idSubCategory).change();			
		}, 100);
		$('input[name="sale"]').val(product.sale);
		$('input[name="time_sale"]').val((product.time_sale).split(" ")[0]);
		$('.note-editable').html(product.descreption)
	}
	
	
	
	
	/*Cập nhập size color sản phẩm  */
	$('#updateProduct').on('click', function(e) {
		e.preventDefault();
		/* Kiểm tra xem id sản phẩm đã có chưa  */
		if(id == null) {
			alert("Sản phẩm chưa tồn tại, vui lòng thêm sản phẩm!") 
		} else {
			let size = $('#size').val();
			let color = $('#color').val();
			let quantity = $('#quantity').val();
			$.ajax({
	            type: "post",
	            data: {
	            	action: "updateProduct",
	            	id: id,
	            	size: size,
	            	color: color,
	            	quantity: quantity
	            },
	            dataType: 'json',
	            url: "/TubeFashtion/NewProductController",
	            success: function (data) {
	            	Toast.fire({
	                    icon: 'success',
	                    title: "Cập nhập sản phẩm thành công!"
	                })
	            },
	        });  
		}
	})
	
	/*Chỉnh sửa sản phẩm  */
	$('#submitEditProduct').on('click', function(e) {
		e.preventDefault();
		/* let idProduct = $("input[name='idProduct']").val();
		let name = $("input[name='name']").val();
		let price = $("input[name='price']").val();
		let sub_category = $('#sub_category').find(":selected").val()
		let content = $('.note-editable').html(); */
		let formData = new FormData($('#upload-image-form')[0]);
		formData.append("action", "editProduct");
		formData.append("id", $('#idProduct').val());
		$.ajax({
            type: "post",
            data: formData,
            dataType: 'json',
            processData: false,
            contentType: false,
            url: "/TubeFashtion/NewProductController",
            success: function (data) {
            	Toast.fire({
                    icon: 'success',
                    title: "Sửa sản phẩm thành công!"
                })
            },
        }); 
	}) 
	
	/*Reset ảnh của sản phẩm sau khi đăng  */
	$('#resetImageProduct').on("click", function(e) {
		e.preventDefault();
		$('#file-input').val("");
		$('#preview').html(""); 
			
		
	})
	
	function renderListCategory(listCategory) {
		let html = ``;
		listCategory.forEach(c => {
			html += `
				<option value="\${c.id}">\${c.name}</option>
			`
		})
		return html;
	}
	
	function renderListSubCategory(listSubCategory) {
		let html = ``;
		listSubCategory.forEach(c => {
			html += `
				<option value="\${c.id}">\${c.name}</option>
			`
		})
		return html;
	}
	
	function renderListSize(listSize) {
		let html = ``;
		listSize.forEach(c => {
			html += `
				<option value="\${c.id}">\${c.size}</option>
			`
		})
		return html;
	}
	
	function renderListColor(listColor) {
		let html = ``;
		listColor.forEach(c => {
			html += `
				<option value="\${c.id}">\${c.color}</option>
			`
		})
		return html;
	}
	
	
	// upload multiple image
	function previewImages() {

	    var preview = document.querySelector('#preview');

	    if (this.files) {
	        [].forEach.call(this.files, readAndPreview);
	    }

	    function readAndPreview(file) {

	        // Make sure `file.name` matches our extensions criteria
	        if (!/\.(jpe?g|png|gif|jfif)$/i.test(file.name)) {
	            return alert(file.name + " is not an image");
	        } // else...

	        var reader = new FileReader();

	        reader.addEventListener("load", function () {
	            var image = new Image();
	            image.height = 100;
	            image.title = file.name;
	            image.src = this.result;
	            preview.appendChild(image);
	        });
	        reader.readAsDataURL(file);
	    }

	}
	document.querySelector('#file-input').addEventListener("change", previewImages);
	// cấu hình message
    var Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 3000
    });
</script>
