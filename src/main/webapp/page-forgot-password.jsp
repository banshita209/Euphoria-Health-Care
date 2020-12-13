<!DOCTYPE html>
<!--
Item Name: Elisyam - Web App & Admin Dashboard Template
Version: 1.5
Author: SAEROX

** A license must be purchased in order to legally use this template for your project **
-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Euphoria - Forgot Password</title>
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
		alert(msg);
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
<body class="bg-fixed-02">
	<c:if test="${param.message ne null }">
		<%
			System.out.print("in condition");
		%>
		<!-- 	<script type="text/javascript">
			popup(${param.message})
		</script> -->
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
	<div class="container-fluid h-100 overflow-y">
		<div class="row flex-row h-100">
			<div class="col-12 my-auto">
				<div class="password-form mx-auto">
					<div class="logo-centered">
						<img src="assets/img/white-logo.png" alt="logo">

					</div>
					<h3>Password Recovery</h3>
					<form action="CommonServlet" method="post">
						<div class="group material-input">
							<input type="email" name="email" required> <span
								class="highlight"></span> <span class="bar"></span> <label>Email</label>
						</div>

						<div class="button text-center">
							<input type="hidden" name="category" value="${param.category}" />
							<input type="submit" name="action" value="Reset Password"
								class="btn btn-gradient-01" data-toggle="modal"
								data-target="#delay-modal" />

						</div>
						<!-- <div class="row">

							<div class="col-xl-8 d-flex align-items-center mb-3">
								<button type="button" class="btn btn-gradient-01"
									data-toggle="modal" data-target="#delay-modal">Launch
									Modal</button>
							</div>
						</div> -->
					</form>
					<div class="back">
						<!-- 		<a href="pages-login.html">Sign In</a> -->
						<a href="pages-login.jsp?category=${param.category}">Sign In</a>
					</div>
				</div>
			</div>
			<!-- End Col -->
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
	<!-- Begin Auto Close Modal -->
	<div id="delay-modal" class="modal fade">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-body text-center">
					<div class="sa-icon sa-success animate" style="display: block;">
						<span class="sa-line sa-tip animateSuccessTip"></span> <span
							class="sa-line sa-long animateSuccessLong"></span>
						<div class="sa-placeholder"></div>
						<div class="sa-fix"></div>
					</div>
					<div class="section-title mt-5 mb-2">
						<h2 class="text-gradient-01">Reset Password</h2>
					</div>
					<p class="mb-5">Your password has been reset successfully.
						Check your mails for your new password :)</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>