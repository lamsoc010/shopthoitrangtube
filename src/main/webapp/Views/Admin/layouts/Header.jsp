<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>
    </ul>
    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
            <a class="nav-link pt-0" data-toggle="dropdown" href="#">
                <div class="user-panel  d-flex btn p-0">
                    <div class="image">
                        <img src=<c:url value="/assets/AdminPTH/dist/img/user1-128x128.jpg"/> alt="User Avatar" class="img-size-50 mr-3 img-circle">
                    </div>
                    <div class="info">
                        aaa
                    </div>
                </div>
            </a>
            <div class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
                <a class="dropdown-item" asp-controller="People" asp-action="Profile">
                    <i class="fas fa-address-card mr-2"></i> Profile
                </a>
                <div class="dropdown-divider"></div>
                <form method="POST" >
                   
                    <a onclick="event.preventDefault(); this.closest('form').submit();" class="dropdown-item" asp-controller="Account" asp-action="Login">
                        <i class="fas fa-sign-out-alt mr-2"></i> Sign-out
                    </a>
                </form>
            </div>
        </li>
    </ul>
</nav>