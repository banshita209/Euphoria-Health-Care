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
<title>Euphoria - Homepage</title>
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
<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
</SCRIPT>
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
<link rel="stylesheet" href="assets/css/animate/animate.min.css">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body id="page-top">
	<!-- Begin Preloader -->
	<div id="preloader">
		<div class="canvas">
			<img src="assets/img/white-logo.png" alt="logo" class="loader-logo">
			<div class="spinner"></div>
		</div>
	</div>
	<!-- End Preloader -->
	<div class="page db-modern">
		<!-- Begin Header -->
		<header class="header">
			<div class="container">
				<nav class="navbar">
					<!-- Begin Search Box-->
					<div class="search-box">
						<button class="dismiss">
							<i class="ion-close-round"></i>
						</button>
						<form id="searchForm" action="#" role="search">
							<input type="search" placeholder="Search something ..."
								class="form-control">
						</form>
					</div>
					<!-- End Search Box-->
					<!-- Begin Topbar -->
					<div
						class="navbar-holder d-flex align-items-center align-middle justify-content-between">
						<!-- Begin Logo -->
						<div class="navbar-header">
							<a href="#" class="navbar-brand">
								<div class="brand-image brand-big">
									<img src="assets/img/black-logo.png" alt="logo"
										class="logo-big">
								</div>

							</a>
							<!-- <h2 style="color: white; float: right; padding-left: 20cm; pad">Euphoria Health Care</h2> -->
						</div>
						<!-- End Logo -->
						<!-- Begin Navbar Menu -->
						<ul
							class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center pull-right">
							<!-- Search -->
							<!-- End Search -->
							<!-- Begin Notifications -->

							<!-- End Notifications -->
							<!-- User -->

							<!-- Begin Quick Actions -->

							<!-- End Quick Actions -->
						</ul>
						<!-- End Navbar Menu -->
					</div>
					<!-- End Topbar -->
				</nav>
			</div>
		</header>
		<!-- End Header -->
		<!-- Begin Page Content -->
		<div class="page-content">
			<!-- Begin Navigation -->
			<div class="horizontal-menu">
				<div class="container">
					<div class="row">
						<nav class="navbar navbar-light navbar-expand-lg main-menu">
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarSupportedContent"
								aria-controls="navbarSupportedContent" aria-expanded="false"
								aria-label="Toggle navigation">
								<span></span> <span></span> <span></span>
							</button>
							<div class="collapse navbar-collapse" id="navbarSupportedContent">
								<ul class="navbar-nav mr-auto">
									<li><a href="Patient_home.jsp"><i class="fas fa-home"></i>
											Home </a></li>

									<li><a href="PatientServlet?action=profile">Profile</a></li>
									<li class="dropdown"><a class="dropdown-toggle" href="#"
										id="components" role="button" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false">Health Tracker</a>
										<ul class="dropdown-menu" aria-labelledby="components">
											<li><a href="PatientServlet?action=HealthTracker">Show
													Health Tracker</a></li>
											<li><a href="insert_hd.jsp">Insert in Health Tracker</a></li>
											<!-- <li><a href="PatientServlet?action=graph">Show Graph</a></li> -->
										</ul></li>
									<li class="dropdown"><a class="dropdown-toggle" href="#"
										id="components" role="button" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false">Appointment</a>
										<ul class="dropdown-menu" aria-labelledby="components">
											<li><a href="PatientServlet?action=get_area">Book a
													appointment </a></li>
											<li><a href="PatientServlet?action=get_all_appointment">My
													Appointments</a></li>
										</ul></li>
									<li class="dropdown"><a class="dropdown-toggle" href="#"
										id="applications" role="button" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false">Medicine</a>
										<ul class="dropdown-menu" aria-labelledby="applications">
											<li><a href="pages-upload-prescription.jsp">Get
													medicines</a></li>
											<li><a href="PatientServlet?action=show_prescription">Show my order </a></li>
										</ul></li>
									<li class="dropdown"><a class="dropdown-toggle" href="#"
										id="applications" role="button" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false">Report</a>
										<ul class="dropdown-menu" aria-labelledby="applications">

											<li><a href="upload-report.jsp">Upload Report</a></li>
											<li><a href="PatientServlet?action=getallreport">Show
													All Report</a></li>
										</ul></li>

									<li><a href="pages-change-password.jsp">ChangePassword</a></li>

									<li class="dropdown"><a class="dropdown-toggle" href="#"
										id="applications" role="button" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false">Others</a>
										<ul class="dropdown-menu" aria-labelledby="applications">
											<li><a href="#" data-toggle="modal"
												data-target="#modal-centered">Contact Us</a></li>
											<li><a href="#" data-toggle="modal"
												data-target="#modal-large">About Us</a></li>
											<li><a href="FirstAid.jsp"><i
													class="fas fa-first-aid"></i> First Aid</a></li>
											<li><a href="CommonServlet?action=emergencyservices">
													Emergency Contacts</a></li>
											<li><a href="Feedback.jsp"><i class="fas fa-comment"></i>
													Feedback</a></li>
										</ul></li>
									<li class="menu_r"><a href="CommonServlet?action=logout"
										class="fas fa-user-lock">Logout</a></li>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
			<!-- End Navigation -->
			<div class="content-inner boxed mt-4 w-100">
				<div class="container">
					<!-- Begin Page Header-->
					<div class="row">
						<div class="page-header">
							<div class="d-flex align-items-center">
								<h2 class="page-header-title">Homepage</h2>

							</div>
						</div>
					</div>
					<div class="row flex-row">
						<div class="col-xl-6 col-md-6 os-animation"
							data-os-animation="fadeInUp">
							<div class="widget widget-21 has-shadow align-items-center"
								style="width: 30cm; align-content: center;">

								<div class="widget-body h-100 d-flex align-items-center">

									<img src="images/patient.png" alt="mr_logo" height="400px"
										width="400px" />

									<h3>&nbsp;&nbsp;&nbsp;&nbsp; Welcome
										${sessionScope.user.patient_name}</h3>

								</div>

							</div>

							<c:if test="${not empty msg}">
								<script type="text/javascript">
									
								<%System.out.println("in condition for method");%>
									popup('${msg}');
								</script>
							</c:if>

						</div>
					</div>

					<!-- End Settings -->
				</div>
				<!-- End Today -->
			</div>
		</div>
		<!-- End Offcanvas Container -->

		<!-- End Offsidebar Container -->

		<!-- End Offcanvas Sidebar -->

		<!-- End Content -->

	</div>
	<footer class="main-footer">
		<div class="container">
			<div class="row">
				<div
					class="col-xl-6 col-lg-6 col-md-6 col-sm-12 d-flex align-items-center justify-content-xl-start justify-content-lg-start justify-content-md-start justify-content-center">
					<p class="text-gradient-02">Design By ABGP</p>
				</div>
				<div
					class="col-xl-6 col-lg-6 col-md-6 col-sm-12 d-flex align-items-center justify-content-xl-end justify-content-lg-end justify-content-md-end justify-content-center">
					<ul class="nav">
						<li class="nav-item"><a class="nav-link" href="#">euphoria.abgp@gmail.com</a></li>

					</ul>
				</div>
			</div>
		</div>
	</footer>
	<!-- End Page Content -->
	<!-- Begin Large Modal -->
	<div id="modal-large" class="modal fade">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">About Us</h4>
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span> <span class="sr-only">close</span>
					</button>
				</div>
				<div class="modal-body">
					<p>Usually people face certain problem in finding a skilled
						doctor in their nearby area. Nowadays people are having a hectic
						life, due to this sometimes they are unaware of their nearby area.
						Thus its quite difficult to find a skilled doctor and to maintain
						different medical reports. Therefore there is a need of a
						application which will resolve this problem. Team EUPHORIA comes
						with the solution. Team EUPHORIA's aim is to provide a skilled
						doctor to its each and every user. With the help of EUPHORIA
						HEALTH CARE one can maintain their all report using QR code. QR
						code will be generated for each patient and it will contain the
						past report of the patient this will make easy for doctor to
						diagnose one disease and for patient maintaining their medical
						history. EUPHORIA HEALTH CARE is connected to the nearby medical
						store too. This will make one to get prescribed medicine easily.
						Other then Doctor and Patient, there are two modules of the
						application which are Pharmacist and Medical Representative.
						Medical representative make sure that ever area have a medical
						store and if any area does not any medical store then he/she
						submit a report to the EUPHORIA HEALTH CARE. He will also make a
						survey in area and gather the information about the disease
						spreading nowadays. Team EUPHORIA give awareness to the people
						about disease and how to the people take precaution about disease.
						EUPHORIA will give details about how to do first aid. In future we
						will try to connect blood bank to our application which will also
						make easy to donate blood and to get blood.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-shadow" data-dismiss="modal">Ok</button>

				</div>
			</div>
		</div>
	</div>
	<!-- End Large Modal -->
	<!-- Begin Centered Modal -->
	<div id="modal-centered" class="modal fade">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Contact Us</h4>
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span> <span class="sr-only">close</span>
					</button>
				</div>
				<div class="modal-body">
					<p>
					<table>
						<tr>
							<td>Customer care :</td>
							<td>777-777-777-777</td>
						</tr>
						<tr>
							<td>Email id :</td>
							<td>euphoriahealthcare.abgp@gmail.com</td>
						</tr>
						<tr>
							<td>Contact Address :</td>
							<td><br /> b/602 - b/603 , Avengers apartment<br /> near
								Swastik char rasta, navrangpura<br /> Ahmedabad- 380015</td>
						</tr>
					</table>
					</p>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">Ok</button>
				</div>
			</div>
		</div>
	</div>
	<!-- End Centered Modal -->

	<!-- Begin Vendor Js -->
	<script src="assets/vendors/js/base/jquery.min.js"></script>
	<script src="assets/vendors/js/base/core.min.js"></script>
	<!-- End Vendor Js -->
	<!-- Begin Page Vendor Js -->
	<script src="assets/vendors/js/nicescroll/nicescroll.min.js"></script>
	<script src="assets/vendors/js/waypoints/waypoints.min.js"></script>
	<script src="assets/vendors/js/chart/chart.min.js"></script>
	<script src="assets/vendors/js/progress/circle-progress.min.js"></script>
	<script src="assets/vendors/js/app/app.min.js"></script>
	<!-- End Page Vendor Js -->
	<!-- Begin Page Snippets -->
	<script src="assets/js/dashboard/db-modern.min.js"></script>
	<!-- End Page Snippets -->
</body>
</html>