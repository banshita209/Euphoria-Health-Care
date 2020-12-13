<!DOCTYPE html>
<!--
Item Name: Elisyam - Web App & Admin Dashboard Template
Version: 1.5
Author: SAEROX

** A license must be purchased in order to legally use this template for your project **
-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Euphoria - Login</title>
<meta name="description"
	content="Elisyam is a Web App and Admin Dashboard Template built with Bootstrap 4">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Google Fonts -->
<script
	src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js"></script>
<script>
	WebFont.load({
		google : {
			"families" : [ "Montserrat:400,500,600,700", "Noto+Sans:400,700" ]
		},
		active : function() {
			sessionStorage.fonts = true;
		}
	});
</script>
<script type="text/javascript">
	function popup(msg) {
		alert("login fail incorrect email or  password");
	}
</script>
<script type="text/javascript">
	function myFunction() {

		var x = document.getElementById("myInput");
		if (x.type === "password") {
			x.type = "text";
		} else {
			x.type = "password";
		}
	}
</script>
<!-- Favicon -->
<link rel="apple-touch-icon" sizes="180x180"
	href="assets/img/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="assets/img/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="assets/img/favicon-16x16.png">
<!-- Stylesheet -->
<link rel="stylesheet" href="assets/vendors/css/base/bootstrap.min.css">
<link rel="stylesheet"
	href="assets/vendors/css/base/elisyam-1.5.min.css">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body class="bg-white">

	<c:if test="${not empty param.msg}">
		<script type="text/javascript">
			
		<%System.out.println("in condition for method");%>
			popup('${msg}');
		</script>
	</c:if>
	<!-- Begin Preloader -->
	<div id="preloader">
		<div class="canvas">
			<img src="assets/img/white-logo.png" alt="logo" class="loader-logo">
			<div class="spinner"></div>
		</div>
	</div>
	<!-- End Preloader -->
	<!-- Begin Container -->
	<div class="container-fluid no-padding h-100">
		<div class="row flex-row h-100 bg-white">
			<!-- Begin Left Content -->
			<div class="col-xl-8 col-lg-6 col-md-5 no-padding">
				<div class="elisyam-bg background-01">
					<div class="elisyam-overlay overlay-01"></div>
					<div class="authentication-col-content mx-auto">
						<h1 class="gradient-text-01">Welcome To Euphoria Health Care!
						</h1>
						<span class="description"> Care you can believe in. </span>
					</div>
				</div>
			</div>
			<!-- End Left Content -->
			<!-- Begin Right Content -->
			<div class="col-xl-4 col-lg-6 col-md-7 my-auto no-padding">
				<!-- Begin Form -->
				<div class="authentication-form mx-auto">
					<div class="logo-centered">
						<a href="db-default.html"> <img
							src="assets/img/white-logo.png" alt="logo">
						</a>
					</div>
					<h3>Sign In To Euphoria</h3>
					<form action="CommonServlet" method="post">
						<div class="group material-input">
							<input type="text" name="email" required="required"> <input
								type="hidden" name="category" value="${param.category}" /> <span
								class="highlight"></span> <span class="bar"></span> <label>Email</label>
						</div>
						<div class="group material-input">
							<input type="password" name="psswrd" required id="myInput"> <span
								class="highlight"></span> <span class="bar"></span> <label>Password</label>
						</div>

						<div class="row">
							<div class="col text-left">
								<div class="styled-checkbox">
									<input type="checkbox" name="checkbox" id="remeber"> <label
										for="remeber" onclick="return myFunction()">Show Password</label>
								</div>
							</div>
							<div class="col text-right">
								<a href="page-forgot-password.jsp?category=${param.category}">Forgot
									Password ?</a>
							</div>
						</div>
						<div class="sign-btn text-center">
							<!-- <a href="db-default.html" class="btn btn-lg btn-gradient-01"> -->
							<td><input type="submit" name="action" value="Login"
								class="btn btn-lg btn-gradient-01" /> <!--  Sign in
                            </a> -->
						</div>
					</form>
					<div class="register">
						Don't have an account? <br> <a
							href="pages-category.jsp?action=register">Create an account</a>
					</div>
				</div>
				<!-- End Form -->
			</div>
			<!-- End Right Content -->
		</div>
		<!-- End Row -->
	</div>
	<!-- End Container -->
	<!-- Begin Vendor Js -->
	<script src="assets/vendors/js/base/jquery.min.js"></script>
	<script src="assets/vendors/js/base/core.min.js"></script>
	<!-- End Vendor Js -->
	<!-- Begin Page Vendor Js -->
	<script src="assets/vendors/js/app/app.min.js"></script>
	<!-- End Page Vendor Js -->
</body>
</html>