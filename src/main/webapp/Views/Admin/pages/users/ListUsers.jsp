
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
			<!--<button type="button" class="btn btn-primary " data-toggle="modal"
    data-target="#modal-create" >
        ThÃªm ngÆ°á»i dÃ¹ng
    </button>-->
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
								<th>ID</th>
								<th>Name</th>
								<th>Email</th>
								<th>Phone</th>
								<th>Birthday</th>
								<th>Detail</th>

								</tr>
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
	<div class="modal-dialog modal-lg">
		<div class="modal-content">

			<div class="modal-header">
				<h4 class="modal-title">Information User</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>

			<div class="modal-body">
				<div class="row gutters-sm">
					<div class="col-md-4 mb-3">
						<div class="card">
							<div class="card-body">
								<div class="d-flex flex-column align-items-center text-center">
									<img src="https://bootdey.com/img/Content/avatar/avatar7.png"
										alt="Admin" class="rounded-circle dt-image"
										style="height: 150px; wight: 150px">
									<div class="mt-3">
										<h4 class="dt-name"></h4>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-8">
						<div class="card mb-3 pb-2">
							<div class="card-body">
								<div class="row">
									<div class="col-sm-3">
										<h6 class="mb-0">Name</h6>
									</div>
									<div class="dt-name col-sm-9 text-secondary"></div>
								</div>
								<hr>
								<div class="row">
									<div class="col-sm-3">
										<h6 class="mb-0">Email</h6>
									</div>
									<div class="dt-email col-sm-9 text-secondary"></div>
								</div>
								<hr>
								<div class="row">
									<div class="col-sm-3">
										<h6 class="mb-0">Phone</h6>
									</div>
									<div class="dt-phone col-sm-9 text-secondary"></div>
								</div>
								<hr>
								<div class="row">
									<div class="col-sm-3">
										<h6 class="mb-0">Address</h6>
									</div>
									<div class="dt-address col-sm-9 text-secondary"></div>
								</div>
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
								<label for="ed-address">Địa chỉ </label> <input
									id="ed-address" type="text" class="form-control" name="address"
									placeholder="Enter Address">
							</div>
							<div class="form-group">
								<label for="ed-image">Ảnh đại diện </label> <input
									id="ed-image" type="file" class="form-control" name="image"
									placeholder="Enter image">
							</div>
							<input type="hidden" name="action" value="edit">
						</div>
						<div class="modal-footer justify-content-between">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Thoát</button>
							<button type="submit" class="btn btn-primary" data-save="modal">Lưu Thay Đổi</button>
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
                url:  "/TubeFashtion/ListUserController",
                dataSrc: '',
                data: {
                	action: "views"
                }
            },
            columns: [
            { data: "id", "name": "id"  },
            { data: "name", "name": "name"},
            { data: "email", "name": "email" },
            { data: "phone", "name": "phone"},
            { data: "birthday","name": "birthday" },
            {
                render: function(data, type, full, meta) {
                    return (
                            `<button type="button" class="btn btn-outline-success " data-toggle="modal" onclick=Details(\${full.id})  data-target="#modal-details" ><i class="fas fa-eye"></i> </button>
                            <button type="button" class="btn btn-outline-warning " onclick=Edit(\${full.id})  data-toggle="modal" data-target="#modal-edit"><i class="fas fa-pen"></i> </button>`
                        );
                }
            }
            ],
        });
		
		// xử lý -  gửi data sau khi thông qua được validate
	      $.validator.setDefaults({
	        submitHandler: function (form) {
	            
	            var actionUrl ="/TubeFashtion/ListUserController";    
	            $.ajax({
	                type: "POST",
	                url: actionUrl,
	                data: { 
	                	action: "create",
	                    name: form.name.value,
	                    email: form.email.value,
	                    phone: form.phone.value,
	                    address: form.address.value,
	                    birthday: form.birthday.value,
	                    password: form.password.value,
	                    role: 'user',
	                },
	                success: function (data) {
	                    // ẩn modal
	                    $('div#modal-create').modal('hide');
	                    // reload data in table
	                    $('#example1').DataTable().ajax.reload();
	                    // show message
	                    Toast.fire({
	                        icon: 'success',
	                        title: "Thông tin được lưu lại thành công"
	                    })
	                    // xóa các biểu mẫu sau khi lưu
	                    form.reset();
	                },
	                error: function (data, textStatus, errorThrown) {
	                    $('#message').html('Email đã tồn tại');
	                },
	            });
	        }
	      });
		
		/*Validate client  */
		$('#create-user').validate({
	        rules: {
	            name: {
	                required: true,
	            },
	            email: {
	                required: true,
	                email: true,
	            },
	            phone: {
	                required: true,
	                phoneUK: true,
	            
	            },
	            password : {
	                required: true,
	                minlength : 8
	                },
	                password_confirm : {
	                    minlength : 8,
	                    equalTo : '[name="password"]'
	            }
	        },
	        messages: {
	            email: {
	                required: "Vui lòng nhập địa chỉ email",
	                email: "Trường này là email"
	            },
	                name: {
	                required: "Vui lòng nhập Họ $ tên",
	            },
	            phone: {
	                required: "Vui lòng nhập số điện thoại",
	                phoneUS: "Trường này là số điện thoại"
	            },
	            password: {
	                required: "Vui lòng nhâp mật khẩu",
	                minlength: "Độ dài tối thiểu 8 ký tự"
	            },
	            confirmpassword: {
	                equalTo: "Mật khẩu không trùng khớp",
	            }
	        },
	        errorElement: 'span',
	        errorPlacement: function (error, element) {
	          error.addClass('invalid-feedback');
	          element.closest('.form-group').append(error);
	        },
	        highlight: function (element, errorClass, validClass) {
	          $(element).addClass('is-invalid');
	        },
	        unhighlight: function (element, errorClass, validClass) {
	          $(element).removeClass('is-invalid');
	        }
	      });
	})
	
	// show modal details
    function Details(idUser) {
        console.log(idUser);
        $.ajax({
            url: "/TubeFashtion/ListUserController",
            type: 'GET',
            data: {
            	action: "detail",
            	idUser: idUser
            },
            success: function (data) {
                let user = JSON.parse(data);
                 $('.dt-image').attr('src', `<c:url value="/assets/img/user/\${user.image}"></c:url>`);
                 $('.dt-name').html(user.name);
                 $('.dt-email').html(user.email);
                 $('.dt-address').html(user.address);
                 $('.dt-phone').html(user.phone);
               
            }
        });
    }
	
	// show modal edit
    function Edit(idUser){
        $.ajax({
            url: "/TubeFashtion/ListUserController",
            type: 'GET',
            data: {
            	action: "detail",
            	idUser: idUser
            },
            success: function (data) {
            	let user = JSON.parse(data);
                $('#ed-name').val(user.name);
                $('#ed-email').val(user.email);
                $('#ed-phone').val(user.phone);
                $('#ed-address').val(user.address);
                $('#ed-birthday').val(user.birthday);
                $('#ed-image').val(user.image);
            }
        });
    }
	
	/*Submit chỉnh sửa  */
    $('#upload-image-form').submit(function(e) {
        e.preventDefault();
        var formData = new FormData(this);
        console.log(...formData)
        $.ajax({
            type: "post",
            url: "/TubeFashtion/ListUserController",
            data: formData,
            processData: false,
            contentType: false,
            success: function (data) {
                // ẩn modal
                $('div#modal-edit').modal('hide');
                // reload data in table
                $('#example1').DataTable().ajax.reload();
                // show message
                Toast.fire({
                    icon: 'success',
                    title: "Thông tin được lưu lại thành công"
                })
                // xóa các biểu mẫu sau khi lưu
                $('#ed-name').val('');
                $('#ed-email').val('');
                $('#ed-phone').val('');
                $('#ed-address').val('');
                $('#ed-birthday').val('');
            },
            error: function (data, textStatus, errorThrown) {
                $('#message').html('Email đã tồn tại');
            },
        });
    });
 	// cấu hình message
    var Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 3000
    });
</script>
