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
									<h4 style="text-align:center" >Login</h4>
									<div class="login-form-container">
										<b><span id="messageError" style="color: red"></span></b>
										<div class="login-register-form">
											<form action='<c:url value="/LoginController"></c:url>'
												method="post" id="formLogin">

												<div class="form-box__single-group">
													<input type="text" id="form-email" name="email"
														placeholder="Tài khoản"> <b><span
														id="messageErrorEmail" style="color: red"></span></b>
												</div>
												<div class="form-box__single-group">
													<input type="password" id="form-username-password"
														name="password" placeholder="Mật Khẩu"> <b><span
														id="messageErrorPassword" style="color: red"></span></b>
												</div>
												<div
													class="d-flex justify-content-between flex-wrap m-tb-20">
													<label for="account-remember"> <input
														type="checkbox" name="account-remember"
														id="account-remember"> <span>Nhớ tài khoản</span>
													</label> <a class="link--gray" href="">Quên mật khẩu?</a>
												</div>
												<button
													class="btn btn--box btn--small btn--blue btn--uppercase btn--weight"
													type="submit">Đăng Nhập</button>
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
		/* Form login  */
		$('#formLogin').submit(function(e) {
			e.preventDefault();
			let email = $('#form-email').val();
			let password = $('#form-username-password').val();

			$.ajax({
				type : "POST",
				url : '/TubeFashtion/LoginController',
				data : {
					email : email,
					password : password
				},
				success : function(data) {
					if(data.length > 1000) {
						window.location = "/TubeFashtion/";
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



