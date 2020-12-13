<!DOCTYPE html>
<!--
Item Name: Elisyam - Web App & Admin Dashboard Template
Version: 1.5
Author: SAEROX

** A license must be purchased in order to legally use this template for your project **
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Euphoria -show Heath Tracker</title>
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
				<div class="mail-confirm mx-auto">
					<!-- div class="animated-icon">
						<div class="gradient"></div> -->
					<!-- <div class="icon"> -->
					<!-- <i class="la la-at"></i> -->
					'
					<center>
						<img src="assets/img/white-logo.png" alt="logo"
							class="loader-logo" align="middle">
					</center>
					<!-- 	</div>
					</div> -->
					<h3>Health Tracker</h3>
					<table align="center">
						<tr>
							<td>Blood glucose:</td>
							<td>${hd.blood_glucose}</td>
						</tr>

						<tr>
							<td>Blood Pressure:</td>
							<td>${hd.blood_pressure}</td>
						</tr>

						<tr>
							<td>Height:</td>

							<td>${hd.height}</td>
						</tr>

						<tr>
							<td>Weight:</td>
							<td>${hd.weight}</td>
						</tr>
						<tr>
							<td>Date:</td>
							<td>${hd.created_date}</td>
						</tr>

					</table>
					<!--  <p>
                            A confirmation email has been sent to <a href="#">example@yourmail.com</a> 
                        </p>
                        <p>
                            Check your inbox and click on the link to confirm your email address.
                        </p> -->
					<div class="button text-center">
						<a href="Patient_home.jsp" class="btn btn-lg btn-gradient-01">
							Back to home </a>
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
</body>
</html>