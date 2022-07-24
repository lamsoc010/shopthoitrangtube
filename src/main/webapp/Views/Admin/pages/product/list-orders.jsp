
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
	<section class="content px-4">
		<h2>List Users</h2>
		<div
			class="create-new-user d-flex align-items-end flex-column  pb-1 pt-1">
			<div id="PlaceHolderHere"></div>
			<div id="ShowModal"></div>
			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#modal-create">
				<i class="fas fa-plus mr-2"></i> Add User
			</button>
		</div>

		<div class="row">
			<div class="col-12">
				<div class="card">
					<!-- /.card-header -->
					<div class="card-body">
						<table id="example1" class="table table-bordered table-striped"
							style="width: 100%">
							<thead>
								<th>Mã</th>
								<th>Tên</th>
								<th>Địa Chỉ</th>
								<th>Số Điện Thoại</th>
								<th>Lời Nhắn</th>
								<th>Sản Phẩm</th>
								<th>Tổng Tiền</th>
								<th>Trạng Thái</th>
								<th>Ngày Đặt</th>
								<th>Chi Tiết</th>
							</thead>
						</table>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</div>
</div>
</section>
</div>


<!-- Modal create-->
<div class="modal fade" id="modal-create" data-backdrop="static">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Add User</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="" id="create-user">
					<div class=" card-body">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="name">Name</label><span class="text-danger">*</span>
									<input id="name" type="text" class="form-control" name="name"
										placeholder="Enter name"> <span class="form-message"></span>
								</div>
								<div class="form-group">
									<label for="email">Email</label><span class="text-danger">*</span>
									<input id="email" type="email" class="form-control"
										name="email" placeholder="Enter email"> <span
										class="form-message"></span> <span id="message"
										class="text-danger"></span>
								</div>
								<div class="form-group">
									<label for="password">Password</label><span class="text-danger">*</span>
									<input id="password" type="password" class="form-control"
										name="password" placeholder="Enter email"> <span
										class="form-message"></span> <span id="message"
										class="text-danger"></span>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="phone">Phone</label><span class="text-danger">*</span>
									<input id="phone" type="text" class="form-control" name="phone"
										placeholder="Enter Phone"> <span class="form-message"></span>

								</div>
								<div class="form-group">
									<label for="birthday">Birthday</label> <input id="birthday"
										type="date" value="2022-05-25" name="birthday"
										class="form-control" placeholder="Enter Birthday"> <span
										class="form-message"></span>
								</div>
								<div class="form-group">
									<label for="password_confirm">Enter the password</label><span
										class="text-danger">*</span> <input id="password_confirm"
										type="password" class="form-control" name="password_confirm"
										placeholder="Enter email"> <span class="form-message"></span>
									<span id="message" class="text-danger"></span>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="Address">Address </label> <input for="Address"
								type="text" class="form-control" name="address"
								placeholder="Enter Address"> <span class="form-message"></span>
						</div>


						<div class="modal-footer justify-content-between">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Cancel</button>
							<button class=" form-submit btn btn-primary">Save</button>
						</div>
					</div>
				</form>

			</div>

		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>

<!-- /Modal infor -->

<div class="modal fade" id="modal-details" data-backdrop="static">
	<div class="modal-dialog modal-xl">
		<div class="modal-content">

			<div class="modal-header">
				<h4 class="modal-title">Chi tiết sản phẩm</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true" >&times;</span>
				</button>
			</div>

			<div class="modal-body">
				<div class="row gutters-sm">
					<div class="col-md-12">
						<div class="card mb-3 pb-2">
							<div class="card-body">
								<table id="detailProduct"
									class="table table-bordered table-striped" style="width: 100%">
									<thead>
										<th>Mã</th>
										<th>Ảnh</th>
										<th>Tên</th>
										<th>Số Lượng</th>
										<th>Màu Sắc</th>
										<th>Size</th>
										<th>Giá</th>
										<th>Trạng Thái</th>
										<th>Chi Tiết</th>
									</thead>
								</table>

							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>

<!-- Model edit -->
<div class="modal fade" id="modal-edit" data-backdrop="static"
	data-bs-keyboard="false" tabindex="-1"
	aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Chỉnh sửa thông tin</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form method="post" id="upload-image-form" class="p-2"
				enctype="multipart/form-data">
				<div class="modal-body">
					<form method="post" id="upload-image-form" class="p-2"
						enctype="multipart/form-data">
						<div class=" card-body">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="ed-name">Họ và tên</label> <input id="ed-name"
											type="text" class="form-control" name="name"
											placeholder="Enter name"> <span class="form-message"></span>
									</div>
									<div class="form-group">
										<label for="ed-email">Địa chỉ Email</label> <input
											id="ed-email" type="email" class="form-control" name="email"
											placeholder="Enter email"> <span class="form-message"></span>
										<span id="message" class="text-danger"></span>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="ed-phone">Số điện thoại</label> <input
											id="ed-phone" type="text" class="form-control" name="phone"
											placeholder="Enter Phone"> <span class="form-message"></span>

									</div>
									<div class="form-group">
										<label for="ed-birthday">Ngày sinh</label> <input
											id="ed-birthday" type="date" value="2022-05-25"
											name="birthday" class="form-control"
											placeholder="Enter Birthday"> <span
											class="form-message"></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="ed-address">Địa chỉ </label> <input id="ed-address"
									type="text" class="form-control" name="address"
									placeholder="Enter Address">
							</div>
							<div class="form-group">
								<label for="ed-image">Ảnh đại diện </label> <input id="ed-image"
									type="file" class="form-control" name="image"
									placeholder="Enter image">
							</div>
							<input type="hidden" name="action" value="edit">
						</div>
						<div class="modal-footer justify-content-between">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Thoát</button>
							<button type="submit" class="btn btn-primary" data-save="modal">Lưu
								Thay Đổi</button>
						</div>

					</form>

				</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>

<jsp:include page="../../layouts/Footer.jsp"></jsp:include>

<!--Script datatable  -->
<script>
	$(document).ready(function() {
		$("#example1").DataTable({
            pageLength: 2,
            ajax: {
                url:  "/TubeFashtion/ListOrdersController",
                dataSrc: '',
                dataType: 'json',
                data: {
                	action: "views"
                }
            },
            columns: [
                { data: "id", "name": "id"  },
                { data: "name", "name": "name"  },
                { data: "address", "name": "address" },
                { data: "phone", "name": "phone"},
                { data: "message", "name": "message"  },
                { data: "totalProduct", "name": "totalProduct"  },
                { data: "total", "name": "total" },
                { 
                	render: function(data, type, full, meta) {
                		if(full.status == 0) {
                			return (`Chờ xử lý`);
                		} else if(full.status == 1) {
                			return (`Đang xử lý`);
                		} else if(full.status == 2) {
                			return(`Đã xử lý xong`);
                		}
                    } 
                },
                { data: "created_at","name": "created_at" },
                { 
                	render: function(data, type, full, meta) {
                    return (
                            `<button type="button" class="btn btn-outline-success " data-toggle="modal" onclick=Details(\${full.id})  data-target="#modal-details" ><i class="fas fa-eye"></i> </button>
                            <button type="button" class="btn btn-outline-warning " onclick=Edit(\${full.id})  data-toggle="modal" data-target="#modal-edit"><i class="fas fa-check"></i> </button>`
                        );
                	} 
                }
              ],
        });
	})
		
	
	// show modal details
    function Details(idInfoOrder) {
    	$('#detailProduct').DataTable().destroy();
		$("#detailProduct").DataTable({
            pageLength: 10,
            ajax: {
                url:  "/TubeFashtion/ListOrdersController",
                dataSrc: '',
                dataType: 'json',
                data: {
                	action: "detail",
                	idInfoOrder: idInfoOrder
                }
            },
            columns: [
                { data: "idProduct", "name": "idProduct"  },
                { 
                	render: function(data, type, full, meta) {
                        return (
                        		`<image src='<c:url value="/assets/img/product/\${full.image}"></c:url>' style="height: 100px; width: 100px">`
                            );
                    }
                },
                { data: "name", "name": "name" },
                { data: "quantity", "name": "phone"},
                { data: "color", "name": "message"  },
                { data: "size", "name": "totalProduct"  },
                { data: "price", "name": "total" },
                { 
                	render: function(data, type, full, meta) {
                		if(full.status == 0) {
                			return (`Chờ kiểm hàng`);
                		} else if(full.status == 1) {
                			return (`Đã kiểm hàng`);
                		} 
                    } 
                },
                {
                	render: function(data, type, full, meta) {
                		if(full.status == 1) {
                			return (`OK`);
                		} 
                        return (
                                `<button type="button" class="btn btn-outline-success " onclick="checkProduct(\${full.id})" ><i class="fas fa-check"></i> </button>
                                <button type="button" class="btn btn-outline-warning " onclick=Edit(\${full.id})  data-toggle="modal" data-target="#modal-edit"><i class="fas fa-trash"></i> </button>`
                            );
                    	} 
                }
               ],
            
        }).draw();
    }
	
	function checkProduct(idOrder) {
		$.ajax({
            url: "/TubeFashtion/ListOrdersController",
            type: 'GET',
            data: {
            	action: "checkProduct",
            	idOrder: idOrder
            },
            success: function (data) {
            	// show message
                Toast.fire({
                    icon: 'success',
                    title: "Kiểm hàng thành công"
                })
             // reload data in table
                $('#detailProduct').DataTable().ajax.reload();
             // reload data in table
                $('#example1').DataTable().ajax.reload();
            }
        });
	}
	
	
 	// cấu hình message
    var Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 3000
    });
</script>