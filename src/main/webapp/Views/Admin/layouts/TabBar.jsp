<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
	<!-- Brand Logo -->
	<a href="index3.html" class="brand-link"> <span
		class="brand-text font-weigh t-light">AdminToice</span>
	</a>
	<!-- Sidebar -->
	<div class="sidebar mt-3">
		<!-- Sidebar user panel (optional) -->
		<!-- SidebarSearch Form -->
		<div class="form-inline">
			<div class="input-group" data-widget="sidebar-search">
				<input class="form-control form-control-sidebar" type="search"
					placeholder="Search" aria-label="Search">
				<div class="input-group-append">
					<button class="btn btn-sidebar">
						<i class="fas fa-search fa-fw"></i>
					</button>
				</div>
			</div>
		</div>

		<!-- Sidebar Menu -->
		<nav class="mt-2">
			<ul class="nav nav-pills nav-sidebar flex-column"
				data-widget="treeview" role="menu" data-accordion="false">
				<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
				<li class="nav-item "><a href="/admin" class="nav-link "> <i
						class="fas fa-home mr-2"></i>
						<p>Trang Chủ</p>
				</a></li>
				<li class="nav-item"><a href='<c:url value="/admin/user/listuser"></c:url>' class="nav-link"> <i
						class="fas fa-address-book mr-2"></i>
						<p>Danh Sách Tài Khoản</p>

				</a></li>
				<li class="nav-item"><a href="#" class="nav-link"> <i
						class="fas fa-suitcase mr-2"></i>

						<p>Sản Phẩm</p> <i class="fas fa-angle-left right"></i>
				</a>
					<ul class="nav nav-treeview pl-3">
						<li class="nav-item"><a href='<c:url value="/admin/product/listproduct"></c:url>' class="nav-link"> <i
								class="fas fa-home mr-2"></i>
								<p>Danh Sách Sản Phẩm</p>
						</a></li>
						<li class="nav-item"><a href='<c:url value="/admin/product/newproduct"></c:url>'
							class="nav-link"> <i class="fas fa-door-open mr-2"></i>
								<p>Thêm Mới</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link"> <i
						class="fab fa-usps mr-2"></i>
						<p>Đơn Đặt Hàng</p> <i class="fas fa-angle-left right"></i>
				</a>
					<ul class="nav nav-treeview pl-3">
						<li class="nav-item"><a href='<c:url value="/admin/product/listorders"></c:url>'
							class="nav-link"> <i class="fas fa-envelope-open-text mr-2"></i>
								<p>Danh Sách</p>
						</a></li>
						<li class="nav-item"><a href="/admin/posts/newPost"
							class="nav-link disabled text-muted"> <i
								class="fas fa-user-edit mr-2"></i>
								<p>Reading</p>
						</a></li>
						<li class="nav-item"><a href="/admin/posts/newPost"
							class="nav-link disabled text-muted"> <i
								class="fas fa-user-edit mr-2"></i>
								<p>Listening</p>
						</a></li>
						<li class="nav-item"><a href="/admin/posts/newPost"
							class="nav-link disabled text-muted"> <i
								class="fas fa-user-edit mr-2"></i>
								<p>Grammar</p>
						</a></li>
						<li class="nav-item"><a href="/admin/posts/newPost"
							class="nav-link disabled text-muted"> <i
								class="fas fa-user-edit mr-2"></i>
								<p>Speaking</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link"> <i
						class="fas fa-chart-bar mr-2"></i>
						<p>Phản Hồi</p>
				</a></li>
				<li class="nav-item"><a href="#" class="nav-link"> <i
						class="fas fa-headset mr-2"></i>
						<p>Liên Hệ</p>
				</a></li>
			</ul>
		</nav>
		<!-- /.sidebar-menu -->
	</div>
	<!-- /.sidebar -->
</aside>