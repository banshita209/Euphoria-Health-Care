
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
<title>Euphria</title>
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
<script language="JavaScript" type="text/javascript">
	function validate() {
		//	alert("In Validate Function")

		var values = document.getElementById('file_name').value;
		//	alert("values:-" + values);

		ext = values.split(".").pop();
		//alert("extension:-" + ext);

		if (ext == "pdf") {
			return true;
		} else {
			alert("Please Choose a .pdf file. Convert your file to .pdf");
			window.location = "upload-report.jsp";
			return false;

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
						<a href="#"> <img src="assets/img/white-logo.png" alt="logo">
						</a>
					</div>
					<h3>Upload Analysis</h3>
					<form action="UploadFileController" method="post" enctype="multipart/form-data">
						<div class="group material-input">
							<input type="file" name="file" value="" 
								required> <span class="highlight"></span> <span
								class="bar"></span>
						</div>

						<div class="form-group row d-flex align-items-center mb-5">
							<label
								class="col-lg-4 form-control-label d-flex justify-content-lg-end">Name</label>
							<div class="col-lg-5">
								<input type="text" name="uname" >
							</div>
						</div>
						<div class="button text-center">
							<input type="submit" name="action" value="Submit"
								class="btn btn-lg btn-gradient-01">
						</div>
						<input type="hidden" name="type" value="report" />
					</form>

					<div class="back">
						<a href="MR_home.jsp">Back to Home</a>
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