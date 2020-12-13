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
<title>Euphoria - Change Password</title>
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
						<a href="db-default.html"> <img
							src="assets/img/white-logo.png" alt="logo">
						</a>
					</div>
					<h3>Change my Password</h3>
					<c:choose>
						<c:when test="${sessionScope.category eq 'mr'}">
							<%
								System.out.println("in mr set value::::");
							%>
							<c:set var="cat1" value="mr" />
						</c:when>
						<c:when test="${sessionScope.category eq 'pharmacist'}">
							<%
								System.out.println("in pharmacist set value");
							%>
							<c:set var="cat2" value="pharmacist" />
						</c:when>
						<c:when test="${sessionScope.category eq 'patient'}">
							<%
								System.out.println("in patient set value");
							%>
							<c:set var="cat3" value="patient" />
						</c:when>
						<c:when test="${sessionScope.category eq 'doctor'}">
							<%
								System.out.println("in doctor set value");
							%>
							<c:set var="cat4" value="doctor" />
						</c:when>
						<c:when test="${sessionScope.category eq 'admin'}">
							<%
								System.out.println("in admin set value");
							%>
							<c:set var="cat5" value="admin" />
						</c:when>
					</c:choose>

					<c:choose>
						<c:when test="${cat4 eq 'doctor' }">
							<%
								System.out.println("In Doctor condition");
							%>
							<form action="DoctorServlet" method="post">
								<div class="group material-input">
									<input type="password" name="old_password" required> <span
										class="highlight"></span> <span class="bar"></span> <label>Old
										Password</label>
								</div>
								<div class="group material-input">
									<input type="password" name="new_password" required> <span
										class="highlight"></span> <span class="bar"></span> <label>New
										Password</label>
								</div>
								<div class="group material-input">
									<input type="password" name="conform_password" required>
									<span class="highlight"></span> <span class="bar"></span> <label>Confirm
										Password</label>
								</div>

								<div class="button text-center">
									<input type="submit" name="action" value="ChangePassword"
										class="btn btn-lg btn-gradient-01">
								</div>
								<div class="back">
									<a href="Doctor_home.jsp">back to home</a>
								</div>
							</form>
						</c:when>

						<c:when test="${cat3 eq 'patient' }">
							<%
								System.out.println("In Patient condition");
							%>
							<form action="PatientServlet" method="post">
								<div class="group material-input">
									<input type="password" name="old_password" required> <span
										class="highlight"></span> <span class="bar"></span> <label>Old
										Password</label>
								</div>
								<div class="group material-input">
									<input type="password" name="new_password" required> <span
										class="highlight"></span> <span class="bar"></span> <label>New
										Password</label>
								</div>
								<div class="group material-input">
									<input type="password" name="conform_password" required>
									<span class="highlight"></span> <span class="bar"></span> <label>Confirm
										Password</label>
								</div>

								<div class="button text-center">
									<input type="submit" name="action" value="ChangePassword"
										class="btn btn-lg btn-gradient-01">
								</div>
								<div class="back">
									<a href="Patient_home.jsp">back to home</a>
								</div>
							</form>
						</c:when>

						<c:when test="${cat1 eq 'mr' }">
							<%
								System.out.println("In mr condition");
							%>
							<form action="MedicalRepresentativeServlet" method="post">
								<div class="group material-input">
									<input type="password" name="old_password" required> <span
										class="highlight"></span> <span class="bar"></span> <label>Old
										Password</label>
								</div>
								<div class="group material-input">
									<input type="password" name="new_password" required> <span
										class="highlight"></span> <span class="bar"></span> <label>New
										Password</label>
								</div>
								<div class="group material-input">
									<input type="password" name="conform_password" required>
									<span class="highlight"></span> <span class="bar"></span> <label>Confirm
										Password</label>
								</div>

								<div class="button text-center">
									<input type="submit" name="action" value="ChangePassword"
										class="btn btn-lg btn-gradient-01">
								</div>
								<div class="back">
									<a href="Mr_home.jsp">back to home</a>
								</div>
							</form>
						</c:when>

						<c:when test="${cat2 eq 'pharmacist' }">
							<%
								System.out.println("In admin condition");
							%>
							<form action="PharmacistServlet" method="post">
								<div class="group material-input">
									<input type="password" name="old_password" required> <span
										class="highlight"></span> <span class="bar"></span> <label>Old
										Password</label>
								</div>
								<div class="group material-input">
									<input type="password" name="new_password" required> <span
										class="highlight"></span> <span class="bar"></span> <label>New
										Password</label>
								</div>
								<div class="group material-input">
									<input type="password" name="conform_password" required>
									<span class="highlight"></span> <span class="bar"></span> <label>Confirm
										Password</label>
								</div>

								<div class="button text-center">
									<input type="submit" name="action" value="ChangePassword"
										class="btn btn-lg btn-gradient-01">
								</div>
								<div class="back">
									<a href="Home(pharmacist).jsp">back to home</a>
								</div>
							</form>
						</c:when>

						<c:when test="${cat5 eq 'admin' }">
							<%
								System.out.println("In admin condition");
							%>
							<form action="AdminServlet" method="post">
								<div class="group material-input">
									<input type="password" name="old_password" required> <span
										class="highlight"></span> <span class="bar"></span> <label>Old
										Password</label>
								</div>
								<div class="group material-input">
									<input type="password" name="new_password" required> <span
										class="highlight"></span> <span class="bar"></span> <label>New
										Password</label>
								</div>
								<div class="group material-input">
									<input type="password" name="conform_password" required>
									<span class="highlight"></span> <span class="bar"></span> <label>Confirm
										Password</label>
								</div>

								<div class="button text-center">
									<input type="submit" name="action" value="ChangePassword"
										class="btn btn-lg btn-gradient-01">
								</div>
								<div class="back">
									<a href="Home(admin).jsp">back to home</a>
								</div>
							</form>
						</c:when>
					</c:choose>
					
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