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
					<!-- <ul
						class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center pull-right">
						Search
						<li class="nav-item d-flex align-items-center"><a id="search"
							href="#"><i class="la la-search"></i></a></li>
						End Search
						Begin Notifications
						<li class="nav-item dropdown"><a id="notifications"
							rel="nofollow" data-target="#" href="#" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" class="nav-link"><i
								class="la la-bell animated infinite swing"></i><span
								class="badge-pulse"></span></a>
							<ul aria-labelledby="notifications"
								class="dropdown-menu notification">
								<li>
									<div class="notifications-header">
										<div class="title">Notifications (4)</div>
										<div class="notifications-overlay"></div>
										<img src="assets/img/notifications/01.jpg" alt="..."
											class="img-fluid">
									</div>
								</li>
								<li><a href="#">
										<div class="message-icon">
											<i class="la la-user"></i>
										</div>
										<div class="message-body">
											<div class="message-body-heading">New user registered</div>
											<span class="date">2 hours ago</span>
										</div>
								</a></li>
								<li><a href="#">
										<div class="message-icon">
											<i class="la la-calendar-check-o"></i>
										</div>
										<div class="message-body">
											<div class="message-body-heading">New event added</div>
											<span class="date">7 hours ago</span>
										</div>
								</a></li>
								<li><a href="#">
										<div class="message-icon">
											<i class="la la-history"></i>
										</div>
										<div class="message-body">
											<div class="message-body-heading">Server rebooted</div>
											<span class="date">7 hours ago</span>
										</div>
								</a></li>
								<li><a href="#">
										<div class="message-icon">
											<i class="la la-twitter"></i>
										</div>
										<div class="message-body">
											<div class="message-body-heading">You have 3 new
												followers</div>
											<span class="date">10 hours ago</span>
										</div>
								</a></li>
								<li><a rel="nofollow" href="#"
									class="dropdown-item all-notifications text-center">View
										All Notifications</a></li>
							</ul></li>
						End Notifications
						User
						<li class="nav-item dropdown"><a id="user" rel="nofollow"
							data-target="#" href="#" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" class="nav-link"><img
								src="assets/img/avatar/avatar-01.jpg" alt="..."
								class="avatar rounded-circle"></a>
							<ul aria-labelledby="user" class="user-size dropdown-menu">
								<li class="welcome"><a href="#" class="edit-profil"><i
										class="la la-gear"></i></a> <img
									src="assets/img/avatar/avatar-01.jpg" alt="..."
									class="rounded-circle"></li>
								<li><a href="pages-profile.html" class="dropdown-item">
										Profile </a></li>
								<li><a href="app-mail.html" class="dropdown-item">
										Messages </a></li>
								<li><a href="#" class="dropdown-item no-padding-bottom">
										Settings </a></li>
								<li class="separator"></li>
								<li><a href="pages-faq.html"
									class="dropdown-item no-padding-top"> Faq </a></li>
								<li><a rel="nofollow" href="pages-login.html"
									class="dropdown-item logout text-center"><i
										class="ti-power-off"></i></a></li>
							</ul></li> -->
					<!-- End User -->
					<!-- Begin Quick Actions -->
					<!-- <li class="nav-item"><a href="#off-canvas"
						class="open-sidebar"><i class="la la-ellipsis-h"></i></a></li> -->
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
						<li><a href="Doctor_home.jsp"><span>Home</span></a></li>
						<li><a href="DoctorServlet?action=profile"> Profile</a></li>
						<li><a href="#dropdown" aria-expanded="false"
							data-toggle="collapse"><span>Appointments</span></a>
							<ul id="dropdown" class="collapse list-unstyled pt-0">
								<li><a href="DoctorServlet?action=request_appointments">
										Requested Appointment</a></li>
								<li><a href="DoctorServlet?action=today_appointments">Today's
										Appointment</a></li>
								<li><a href="DoctorServlet?action=all_appointments">All
										Appointments</a></li>
							</ul></li>


						<li><a href="#dropdown" aria-expanded="false"
							data-toggle="collapse"><span>Meeting</span></a>
							<ul id="dropdown-db" class="collapse list-unstyled show pt-0">
								<li><a href="DoctorServlet?action=request_meetings"><i
										class="fas fa-file-medical-alt"></i> Requested Meeting</a></li>
								<li><a href="DoctorServlet?action=today_meetings"><i
										class="fas fa-file-medical-alt"></i> Today's Meeting</a></li>
								<li><a href="DoctorServlet?action=all_meetings"><i
										class="fas fa-file-medical-alt"></i> All Meeting</a></li>
							</ul></li>
						<li><a href="Feedback.jsp"> Feedback</a></li>
						<li><a href="ConformPassword.jsp">ChangePassword</a></li>
						<li><a href="CommonServlet?action=logout">Logout</a></li>
					</ul>
					<ul class="list-unstyled">
						<li><a href="CommonServlet?action=logout"><i
								class="la la-angle-left"></i><span>Back To Euphoria</span></a></li>
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
					<div class="row">
						<div class="page-header">
							<div class="d-flex align-items-center">
								<h2 class="page-header-title">Profile</h2>
								<div>
									<!-- <ul class="breadcrumb">
										<li class="breadcrumb-item"><a href="#"><i
												class="ti ti-home"></i></a></li>
										<li class="breadcrumb-item"><a href="#">Pages</a></li>
										<li class="breadcrumb-item active">Profile</li>
									</ul>
 -->								</div>
							</div>
						</div>
					</div>
					<!-- End Page Header -->
					<div class="row flex-row">
						<div class="col-xl-3">
							<!-- Begin Widget -->
							<div class="widget has-shadow" style="height: 300px;">
								<div class="widget-body">
									<div class="mt-5">
										<img src="assets/img/avatar/avatar-01.jpg" alt="..."
											style="width: 120px;"
											class="avatar rounded-circle d-block mx-auto">
									</div>
									<h3 class="text-center mt-3 mb-1">Dr. ${user.dr_name }</h3>
									<p class="text-center">${user.log_email}</p>
									<div class="em-separator separator-dashed"></div>


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
									<form action="DoctorServlet" method="post"
										class="form-horizontal">
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Full
												Name</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="name"
													value="${user.dr_name}" required
													title="only string allowed" /> <input type="hidden"
													name="id" value="${user.dr_id}" />
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
													required pattern="[0-9]{10}" value="${user.dr_mobile}" />
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">DOB</label>
											<div class="col-lg-6">
												<input type="date" class="form-control" name="dob" required
													value="${user.dr_dob}" />
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
										<c:if test="${user.dr_gender eq 'Female' }">
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
										<c:if test="${user.dr_gender eq 'Male' }">
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
										<c:if test="${user.dr_gender eq 'Transgender' }">
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
												<h4>Professional Informations</h4>
											</div>
										</div>

										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Qualification</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="qualification"
													value="${user.dr_qualification}" required />
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Specailty</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="specaility"
													value="${user.specaility}" required>
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Visiting
												Fees</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="visiting_fees"
													value="${user.visiting_fees}" required>
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Experience</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="experience"
													value="${user.experience}" required>
											</div>
										</div>

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
													value="${user.personal_address.add_detail}" required>
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Landmark</label>
											<div class="col-lg-6">
												<input type="text" class="form-control"
													name="p_add_landmark" placeholder="enter landmark here"
													required title="only string allowed"
													value="${user.personal_address.landmark}"">
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Area</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="p_add_area"
													placeholder="enter area of address here" required
													pattern="[A-Za-z]{1,}" title="only string allowed"
													value="${user.personal_address.area}">
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">City</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="p_city"
													placeholder="enter city here" required
													pattern="[A-Za-z]{1,}" title="only string allowed"
													value="${user.personal_address.city}" />
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Pincode</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="p_pincode"
													value="${user.personal_address.pincode}" />
											</div>
										</div>

										<div class="col-10 ml-auto">
											<div class="section-title mt-3 mb-3">
												<h4>Clinic Address Informations</h4>
											</div>
										</div>

										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Address
												Detail</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="c_add_detail"
													value="${user.clinic_address.add_detail}" />
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Landmark</label>
											<div class="col-lg-6">
												<input type="text" class="form-control"
													name="c_add_landmark" placeholder="enter landmark here"
													value="${user.clinic_address.landmark}" />
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Area</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="c_add_area"
													placeholder="enter area of address here" required
													pattern="[A-Za-z]{1,}" title="only string allowed"
													value="${user.clinic_address.area}" />
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">City</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="c_city"
													placeholder="enter city here" required
													pattern="[A-Za-z]{1,}" title="only string allowed"
													value="${user.clinic_address.city}" />

											</div>
										</div>

										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Pincode</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="c_pincode"
													value="${user.clinic_address.pincode}" />
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
								<li class="nav-item"><a class="nav-link"
									href="#">euphoria.abgp@gmail.com</a></li>
								
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