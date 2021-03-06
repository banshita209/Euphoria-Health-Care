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
<title>Euphoria - Profile</title>
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
<link rel="stylesheet"
	href="assets/css/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/owl-carousel/owl.theme.min.css">
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
	<div class="page">
		<!-- Begin Header -->
		<header class="header">
			<nav class="navbar fixed-top">
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
								<img src="assets/img/white-logo.png" alt="logo" class="logo-big">
							</div>

						</a>
						<!-- Toggle Button -->
						<a id="toggle-btn" href="#" class="menu-btn active"> <span></span>
							<span></span> <span></span>
						</a>
						<!-- End Toggle -->
					</div>
					<!-- End Logo -->
					<!-- Begin Navbar Menu -->

					<!-- End User -->
					<!-- Begin Quick Actions -->
					<!-- End Quick Actions -->
					</ul>
					<!-- End Navbar Menu -->
				</div>
				<!-- End Topbar -->
			</nav>
		</header>
		<!-- End Header -->
		<!-- Begin Page Content -->
		<div class="page-content d-flex align-items-stretch">
			<div class="default-sidebar">
				<!-- Begin Side Navbar -->
				<nav class="side-navbar box-scroll sidebar-scroll">
					<!-- Begin Main Navigation -->
					<ul class="list-unstyled">
						<li><a href="Patient_home.jsp"> Home </a></li>

						<li><a href="PatientServlet?action=profile">Profile</a></li>
						<li><a href="#dropdown-email" aria-expanded="true"
							data-toggle="collapse"><span>Health Tracker</span></a>
							<ul id="dropdown-email" class="collapse list-unstyled pt-0">
								<li><a href="PatientServlet?action=HealthTracker">Show
										Health Tracker</a></li>
								<li><a href="insert_hd.jsp">Insert in Health Tracker</a></li>
								<!-- <li><a href="#">Show Graph</a></li> -->
							</ul></li>
						<li><a href="#dropdown-email" aria-expanded="false"
							data-toggle="collapse"><span>Appointment</span></a>
							<ul id="dropdown-email" class="collapse list-unstyled pt-0">
								<li><a href="PatientServlet?action=get_area">Book a
										appointment </a></li>
								<li><a href="PatientServlet?action=get_all_appointment">My
										Appointments</a></li>
							</ul></li>
						<li><a href="#dropdown-email" aria-expanded="false"
							data-toggle="collapse"><span>Medicines</span></a>
							<ul id="dropdown-email" class="collapse list-unstyled pt-0">
								<li><a href="UploadPrescription.jsp">Get medicines</a></li>
								<li><a href="PatientServlet?action=show_prescription">Show
										my order </a></li>
							</ul></li>

						<li class="menu_r"><a href="CommonServlet?action=logout"
							class="fas fa-user-lock">Logout</a></li>
						<li><a href="Patient_home"><i class="la la-angle-left"></i><span>Back
									To Homepage</span></a></li>
					</ul>

					<!-- End Main Navigation -->
				</nav>
				<!-- End Side Navbar -->
			</div>
			<!-- End Left Sidebar -->
			<!-- Begin Content -->
			<div class="content-inner profile">
				<div class="container-fluid">
					<!-- Begin Page Header-->
					<!-- End Page Header -->
					<div class="row flex-row">
						<div class="col-xl-3">
							<!-- Begin Widget -->
							<div class="widget has-shadow" style="height: 450px;">
								<div class="widget-body">
									<div class="mt-5">
										<img src="assets/img/avatar/avatar-01.jpg" alt="..."
											style="width: 120px;"
											class="avatar rounded-circle d-block mx-auto">
									</div>
									<c:if test="${user.patient_gender eq 'Male'}">
										<h3 class="text-center mt-3 mb-1">Mr. ${user.patient_name }</h3>
									</c:if>
									<c:if test="${user.patient_gender eq 'Female'}">
										<h3 class="text-center mt-3 mb-1">Miss.
											${user.patient_name }</h3>
									</c:if>
									<c:if test="${user.patient_gender eq 'Transgender'}">
										<h3 class="text-center mt-3 mb-1">${user.patient_name }</h3>
									</c:if>
									<p class="text-center">${user.log_email}</p>
									<div class="em-separator separator-dashed"></div>
									<h3 class="text-center mt-3 mb-1">Your QR code</h3>
									<p class="text-center">
										<img alt="QRcode" src="QRcode/${user.patient_id}.png"
											align="middle">
									</p>
								</div>
							</div>
							<!-- End Widget -->
						</div>
						<div class="col-xl-9">
							<div class="widget has-shadow">
								<div
									class="widget-header bordered no-actions d-flex align-items-center">
									<h4>Update Profile</h4>
								</div>
								<div class="widget-body">
									<div class="col-10 ml-auto">
										<div class="section-title mt-3 mb-3">
											<h4>Personal Informations</h4>
										</div>
									</div>
									<form action="PatientServlet" method="post"
										class="form-horizontal">
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Full
												Name</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="name"
													value="${user.patient_name}" required
													title="only string allowed" /> <input type="hidden"
													name="id" value="${user.patient_id}" />
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Email</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="email"
													value="${user.log_email}" placeholder="enter email here"
													required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" />
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Phone</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="mobile"
													required pattern="[0-9]{10}" value="${user.patient_mobile}" />
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">DOB</label>
											<div class="col-lg-6">
												<input type="date" class="form-control" name="dob" required
													value="${user.patient_dob}" />
											</div>
										</div>
										<%-- <div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">DOB</label>
											<div class="col-lg-6">
												<div class="form-group">
													<div class="input-group">
														<span class="input-group-addon"> <i
															class="la la-calendar"></i>
														</span> <input type="text" class="form-control" id="date"
															placeholder="${user.dr_dob}">
													</div>
												</div>
											</div>
										</div> --%>
										<c:if test="${user.patient_gender eq 'Female' }">
											<div class="form-group row d-flex align-items-center mb-5">
												<label
													class="col-lg-2 form-control-label d-flex justify-content-lg-end">Gender
													*</label>
												<div class="col-lg-1">
													<div class="custom-control custom-radio styled-radio mb-3">
														<input class="custom-control-input" type="radio"
															name="gender" value="Female" id="opt-01" required
															checked="checked"> <label
															class="custom-control-descfeedback" for="opt-01">Female</label>
														<div class="invalid-feedback">Select gender</div>
													</div>
												</div>
												<br> <br>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<div class="col-lg-1">

													<div class="custom-control custom-radio styled-radio mb-3">

														<input class="custom-control-input" type="radio"
															name="gender" value="Male" id="opt-02" required>
														<label class="custom-control-descfeedback" for="opt-02">Male</label>
														<div class="invalid-feedback">Select gender</div>
													</div>
												</div>

												<div class="col-lg-1">
													<div class="custom-control custom-radio styled-radio mb-3">
														<input class="custom-control-input" type="radio"
															name="gender" id="opt-03" value="Transgender" required>
														<label class="custom-control-descfeedback" for="opt-03">Transgender</label>
														<div class="invalid-feedback">Select gender</div>
													</div>
												</div>
											</div>
										</c:if>
										<c:if test="${user.patient_gender eq 'Male' }">
											<div class="form-group row d-flex align-items-center mb-5">
												<label
													class="col-lg-2 form-control-label d-flex justify-content-lg-end">Gender
													*</label>
												<div class="col-lg-1">
													<div class="custom-control custom-radio styled-radio mb-3">
														<input class="custom-control-input" type="radio"
															name="gender" value="Female" id="opt-01" required>
														<label class="custom-control-descfeedback" for="opt-01">Female</label>
														<div class="invalid-feedback">Select gender</div>
													</div>
												</div>
												<br> <br>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<div class="col-lg-1">
													<div class="custom-control custom-radio styled-radio mb-3">
														<input class="custom-control-input" type="radio"
															name="gender" value="Male" id="opt-02" required
															checked="checked"> <label
															class="custom-control-descfeedback" for="opt-02">Male</label>
														<div class="invalid-feedback">Select gender</div>
													</div>
												</div>

												<div class="col-lg-1">
													<div class="custom-control custom-radio styled-radio mb-3">
														<input class="custom-control-input" type="radio"
															name="gender" id="opt-03" value="Transgender" required>
														<label class="custom-control-descfeedback" for="opt-03">Transgender</label>
														<div class="invalid-feedback">Select gender</div>
													</div>
												</div>
											</div>
										</c:if>
										<c:if test="${user.patient_gender eq 'Transgender' }">
											<div class="form-group row d-flex align-items-center mb-5">
												<label
													class="col-lg-2 form-control-label d-flex justify-content-lg-end">Gender
													*</label>
												<div class="col-lg-1">
													<div class="custom-control custom-radio styled-radio mb-3">
														<input class="custom-control-input" type="radio"
															name="gender" value="Female" id="opt-01" required>
														<label class="custom-control-descfeedback" for="opt-01">Female</label>
														<div class="invalid-feedback">Select gender</div>
													</div>
												</div>
												<br> <br>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<div class="col-lg-1">
													<div class="custom-control custom-radio styled-radio mb-3">
														<input class="custom-control-input" type="radio"
															name="gender" value="Male" id="opt-02" required>
														<label class="custom-control-descfeedback" for="opt-02">Male</label>
														<div class="invalid-feedback">Select gender</div>
													</div>
												</div>
												<div class="col-lg-1">
													<div class="custom-control custom-radio styled-radio mb-3">
														<input class="custom-control-input" type="radio"
															name="gender" id="opt-03" value="Transgender" required
															checked="checked"> <label
															class="custom-control-descfeedback" for="opt-03">Transgender</label>
														<div class="invalid-feedback">Select gender</div>
													</div>
												</div>
											</div>
										</c:if>



										<div class="col-10 ml-auto">
											<div class="section-title mt-3 mb-3">
												<h4>Personal Address Informations</h4>
											</div>
										</div>

										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">House-no
												and Society </label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="p_add_detail"
													value="${user.address.add_detail}" required>
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Landmark</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="p_landmark"
													placeholder="enter landmark here" required
													value="${user.address.landmark}"">
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Area</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="p_add_area"
													placeholder="enter area of address here" required
													value="${user.address.area}">
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">City</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="p_city"
													placeholder="enter city here" required
													title="only string allowed" value="${user.address.city}" />
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Pincode</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="p_pincode"
													value="${user.address.pincode}" />
											</div>
										</div>



										<div class="em-separator separator-dashed"></div>
										<div class="text-right">
											<button class="btn btn-gradient-01" name="action"
												value="Update" type="submit">Save Changes</button>
											<button class="btn btn-shadow" type="reset">Cancel</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<!-- End Row -->
				</div>
				<!-- End Container -->
				<!-- Begin Page Footer-->
				<footer class="main-footer">
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
				</footer>
				<!-- End Page Footer -->
				<a href="#" class="go-top"><i class="la la-arrow-up"></i></a>
				<!-- Offcanvas Sidebar -->


				<!-- End Offcanvas Sidebar -->
			</div>
			<!-- End Content -->
		</div>
		<!-- End Page Content -->
	</div>
	<!-- Begin Vendor Js -->
	<script src="assets/vendors/js/base/jquery.min.js"></script>
	<script src="assets/vendors/js/base/core.min.js"></script>
	<!-- End Vendor Js -->
	<!-- Begin Page Vendor Js -->
	<script src="assets/vendors/js/nicescroll/nicescroll.min.js"></script>
	<script src="assets/vendors/js/owl-carousel/owl.carousel.min.js"></script>
	<script src="assets/vendors/js/app/app.min.js"></script>
	<!-- End Page Vendor Js -->
	<!-- Begin Page Snippets -->
	<script src="assets/js/app/contact/contact.min.js"></script>
	<!-- End Page Snippets -->
	<!-- added by me -->

	<!-- Begin Page Vendor Js -->
	<script src="assets/vendors/js/nicescroll/nicescroll.min.js"></script>
	<script src="assets/vendors/js/datepicker/moment.min.js"></script>
	<script src="assets/vendors/js/datepicker/daterangepicker.js"></script>
	<script src="assets/vendors/js/app/app.min.js"></script>
	<!-- End Page Vendor Js -->
	<!-- Begin Page Snippets -->
	<script src="assets/js/components/datepicker/datepicker.js"></script>
	<!-- End Page Snippets -->

</body>
</html>