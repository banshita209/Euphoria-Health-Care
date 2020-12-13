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
<title>Euphoria - feedback</title>
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
				<div class="password-form mx-auto">
					<div class="logo-centered">
						<a href="db-default.html"> <img src="assets/img/white-logo.png"
							alt="logo">
						</a>
					</div>
					<h3>Emergency Service</h3>
					<form action="AdminServlet?action=Edit_Emergencyservice" method="post">
						<div class="group material-input">
							<input type="text" name="es_name" required> 
							<span class="highlight"></span>
							<span class="bar"></span> 
							<label>Name of Service</label>
						</div>
						<div class="group material-input">
							<input type="text" name="es_mobile" required> <span class="highlight"></span>
							<span class="bar"></span> <label>Mobile No.</label>
						</div>
						

						<div class="button text-center">
							<input type="submit" class="btn btn-lg btn-gradient-01" value="Submit">
							
						</div>
						<div  class="button text-center">
								
													<ul class="list-unstyled">
							<li><a  href="Home(admin).jsp"><i
									class="la la-angle-left"></i><span>Back To Euphoria</span></a></li>
						</ul>
						</div>
					</form>
					
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

	


