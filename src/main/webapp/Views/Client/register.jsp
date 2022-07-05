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
					<li class="page-breadcrumb__nav active">Login Page</li>
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
				<!-- login area start -->
				<div class="login-register-area">
					<div class="container">
						<div class="row">
							<div class="col-lg-7 col-md-12 ml-auto mr-auto">
								<div class="login-register-wrapper">
									<h4 style="text-align: center">Register</h4>
									<div class="login-form-container">
									<b><span id="messageError" style="color: red"></span></b>
										<div class="login-register-form">
											<form action="#" method="post" id="formRegister">
												<div class="form-box__single-group">
													<input type="text" id="form-register-name"
														placeholder="Tên của bạn">
												</div>
												<div class="form-box__single-group">
													<input type="email" id="form-register-email"
														placeholder="Email">
												</div>
												<div class="form-box__single-group m-b-20">
													<input type="password" id="form-register-password"
														placeholder="Mật Khẩu">
												</div>
												<div class="form-box__single-group m-b-20">
													<input type="password" id="form-register-confirm-password"
														placeholder="Nhập Lại Mật Khẩu">
												</div>
												<button
													class="btn btn--box btn--small btn--blue btn--uppercase btn--weight"
													type="submit">Đăng Ký</button>
											</form>
										</div>
									</div>


								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- login area end -->
			</div>
		</div>
	</div>
</main>
<!-- ::::::  End  Main Container Section  ::::::  -->

<!-- ::::::  Start  Footer Section  ::::::  -->
<%@ include file="layout/footer.jsp"%>
<%@ include file="layout/scripts.jsp"%>
<script type="text/javascript">
	$(document).ready(function() {

		/* Form register */
		$('#formRegister').submit(function(e) {
			e.preventDefault();
			let name = $('#form-register-name').val();
			let email = $('#form-register-email').val();
			let password = $('#form-register-password').val();

			$.ajax({
				type : "POST",
				url : '/TubeFashtion/RegisterController',
				data : {
					name : name,
					email : email,
					password : password
				},
				success : function(data) {
					if(data.length > 2000) {
						window.location = "/TubeFashtion/login";
					} else {
						$('#messageError').html(data);
					}
				}
			});
		})
	})
</script>
</body>
</html>



