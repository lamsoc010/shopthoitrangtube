<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
        
    
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
    </div> <!-- ::::::  End  Breadcrumb Section  ::::::  -->

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
                                    <div class="login-register-tab-list nav">
                                        <a class="active" data-toggle="tab" href="#lg1">
                                            <h4>login</h4>
                                        </a>
                                        <a data-toggle="tab" href="#lg2">
                                            <h4>register</h4>
                                        </a>
                                    </div>
                                    <div class="tab-content">
                                        <div id="lg1" class="tab-pane active">
                                            <div class="login-form-container">
                                                <div class="login-register-form">
                                                    <form action='<c:url value="/LoginController"></c:url>' method="post">
                                                        <div class="form-box__single-group">
                                                            <input type="text" id="form-username" name="username" placeholder="Username">
                                                        </div>
                                                        <div class="form-box__single-group">
                                                            <input type="password" id="form-username-password" name="password" placeholder="Enter password">
                                                        </div>
                                                        <div class="d-flex justify-content-between flex-wrap m-tb-20">
                                                            <label for="account-remember">
                                                                <input type="checkbox" name="account-remember" id="account-remember">
                                                                <span>Remember me</span>
                                                            </label>
                                                            <a class="link--gray" href="">Forgot Password?</a>
                                                        </div>
                                                        <button class="btn btn--box btn--small btn--blue btn--uppercase btn--weight" type="submit">LOGIN</button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="lg2" class="tab-pane">
                                            <div class="login-form-container">
                                                <div class="login-register-form">
                                                    <form action="#" method="post">
                                                        <div class="form-box__single-group">
                                                            <input type="text" id="form-register-username" placeholder="Username">
                                                        </div>
                                                        <div class="form-box__single-group">
                                                            <input type="email" id="form-uregister-sername-email" placeholder="Enter email">
                                                        </div>
                                                        <div class="form-box__single-group m-b-20">
                                                            <input type="password" id="form-register-username-password" placeholder="Enter password">
                                                        </div>
                                                        <button class="btn btn--box btn--small btn--blue btn--uppercase btn--weight" type="submit">REGISTER</button>
                                                    </form>
                                                </div>
                                            </div>
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
    </main> <!-- ::::::  End  Main Container Section  ::::::  -->

    <!-- ::::::  Start  Footer Section  ::::::  -->
<%@ include file="layout/footer.jsp" %>

