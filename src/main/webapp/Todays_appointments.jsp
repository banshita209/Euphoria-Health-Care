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
<title>Euphoria - All Appointments</title>
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
						<a href="db-default.html" class="navbar-brand">
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
					
						<!-- End Notifications -->
						<!-- User -->
						
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


						<li class="active"><a href="#dropdown-db"
							aria-expanded="true" data-toggle="collapse"><span>Meetings</span></a>
							<ul id="dropdown-db" class="collapse list-unstyled show pt-0">
								<li><a href="DoctorServlet?action=request_meetings"><i
										class="fas fa-file-medical-alt"></i> Requested Meeting</a></li>
								<li><a href="DoctorServlet?action=today_meetings"><i
										class="fas fa-file-medical-alt"></i> Today's Meeting</a></li>
								<li><a href="DoctorServlet?action=all_meetings"><i
										class="fas fa-file-medical-alt"></i> All Meeting</a></li>
							</ul></li>
						<li><a href="Feedback.jsp"> Feedback</a></li>

						<li><a href="pages-change-password.jsp">Change Password</a></li>
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
			<div class="content-inner">
				<div class="container-fluid">
					<!-- Begin Page Header-->
					<div class="row">
						<div class="page-header">
							<div class="d-flex align-items-center">
								<h2 class="page-header-title">Today's Appointment</h2>
								<div>
									<ul class="breadcrumb">
									<!-- 	<li class="breadcrumb-item"><a href="db-all.html"><i
												class="ti ti-home"></i></a></li>
										<li class="breadcrumb-item active">Today's Appointment</li> -->
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- End Page Header -->
					<!-- Begin Row -->
					<div class="row flex-row">
						<div class="col-xl-12 col-12">
							<div class="widget has-shadow">
								<div class="widget-body">
									<!-- <p class="text-primary mt-2 mb-2">Play with Elisyam :)</p> -->
									<c:if test="${empty appointments }">
										<h3>Currently no appointments are requested</h3>
										<%
											System.out.print("no appointments");
										%>
									</c:if>
									<c:if test="${not empty appointments}">
										<%
											System.out.print("appointments");
										%>
										<div class="table-responsive">
											<table class="table mb-0">
												<thead>
													<tr>
														<th>Patient</th>
														<th>Booking Date</th>
														<th>Appointment Date <br> (yyyy-mm-dd format)
														</th>
														<th>Appointment Time <br> (in 24 hrs clock)
														</th>
														<th><span style="width: 100px;">Status</span></th>
														<th><span style="width: 100px;">View Patient's
																detail</span></th>
														<th>Deny</th>

													</tr>
												</thead>
												<tbody>
													<c:forEach var="appointment" items="${appointments}">
														<tr>
															<td><span class="text-primary">${appointment.patient.patient_name}</span></td>
															<td>${appointment.booking_date}</td>
															<td>${appointment.appointment_date}</td>
															<td>${appointment.appointment_time}</td>
															<td><span style="width: 100px;"><span
																	class="badge-text badge-text-big success">${appointment.status}</span></span></td>
															<td><a class="badge-text badge-text-big info"
																href="DoctorServlet?action=view_patient&&patient_id=${appointment.patient.patient_id}&&app_id=${appointment.app_id}">View
																	Patient</a></td>
															<td><a
																href="DoctorServlet?action=deny_appointment&&type=A&&id=${appointment.app_id}">Deny
																	<i class="la la-close delete"></i>
															</a></td>

														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</c:if>
								</div>
							</div>
						</div>
					</div>
					<!-- End Row -->
				</div>
				<!-- End Container -->
				<!-- Begin Page Footer-->
				<footer class="main-footer fixed-footer">
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
				<div class="off-sidebar from-right">
					<div class="off-sidebar-container">
						<header class="off-sidebar-header">
							<ul class="button-nav nav nav-tabs mt-3 mb-3 ml-3" role="tablist"
								id="weather-tab">
								<li><a class="active" data-toggle="tab" href="#messenger"
									role="tab" id="messenger-tab">Messages</a></li>
								<li><a data-toggle="tab" href="#today" role="tab"
									id="today-tab">Today</a></li>
							</ul>
							<a href="#off-canvas" class="off-sidebar-close"></a>
						</header>
						<div class="off-sidebar-content offcanvas-scroll auto-scroll">
							<div class="tab-content">
								<!-- Begin Messenger -->
								<div role="tabpanel" class="tab-pane show active fade"
									id="messenger" aria-labelledby="messenger-tab">
									<!-- Begin Chat Message -->
									<span class="date">Today</span>
									<div class="messenger-message messenger-message-sender">
										<img class="messenger-image messenger-image-default"
											src="assets/img/avatar/avatar-02.jpg" alt="...">
										<div class="messenger-message-wrapper">
											<div class="messenger-message-content">
												<p>
													<span class="mb-2">Brandon wrote</span> Hi David, what's
													up?
												</p>
											</div>
											<div class="messenger-details">
												<span class="messenger-message-localization font-size-small">2
													minutes ago</span>
											</div>
										</div>
									</div>
									<div class="messenger-message messenger-message-recipient">
										<div class="messenger-message-wrapper">
											<div class="messenger-message-content">
												<p>Hi Brandon, fine and you?</p>
												<p>I'm working on the next update of Elisyam</p>
											</div>
											<div class="messenger-details">
												<span class="messenger-message-localisation font-size-small">3
													minutes ago</span>
											</div>
										</div>
									</div>
									<div class="messenger-message messenger-message-sender">
										<img class="messenger-image messenger-image-default"
											src="assets/img/avatar/avatar-02.jpg" alt="...">
										<div class="messenger-message-wrapper">
											<div class="messenger-message-content">
												<p>
													<span class="mb-2">Brandon wrote</span> I can't wait to see
												</p>
											</div>
											<div class="messenger-details">
												<span class="messenger-message-localization font-size-small">5
													minutes ago</span>
											</div>
										</div>
									</div>
									<div class="messenger-message messenger-message-recipient">
										<div class="messenger-message-wrapper">
											<div class="messenger-message-content">
												<p>I'm almost done</p>
											</div>
											<div class="messenger-details">
												<span class="messenger-message-localisation font-size-small">10
													minutes ago</span>
											</div>
										</div>
									</div>
									<span class="date">Yesterday</span>
									<div class="messenger-message messenger-message-sender">
										<img class="messenger-image messenger-image-default"
											src="assets/img/avatar/avatar-05.jpg" alt="...">
										<div class="messenger-message-wrapper">
											<div class="messenger-message-content">
												<p>I updated the server tonight</p>
											</div>
										</div>
									</div>
									<div class="messenger-message messenger-message-recipient">
										<div class="messenger-message-wrapper">
											<div class="messenger-message-content">
												<p>Didn't you have any problems?</p>
											</div>
										</div>
									</div>
									<div class="messenger-message messenger-message-sender">
										<img class="messenger-image messenger-image-default"
											src="assets/img/avatar/avatar-05.jpg" alt="...">
										<div class="messenger-message-wrapper">
											<div class="messenger-message-content">
												<p>No!</p>
											</div>
										</div>
									</div>
									<div class="messenger-message messenger-message-recipient">
										<div class="messenger-message-wrapper">
											<div class="messenger-message-content">
												<p>Great!</p>
												<p>See you later!</p>
											</div>
										</div>
									</div>
									<!-- End Chat Message -->
									<!-- Begin Message Form -->
									<div class="enter-message">
										<div class="enter-message-form">
											<input type="text" placeholder="Enter your message..." />
										</div>
										<div class="enter-message-button">
											<a href="#" class="send"><i class="ion-paper-airplane"></i></a>
										</div>
									</div>
									<!-- End Message Form -->
								</div>
								<!-- End Messenger -->
								<!-- Begin Today -->
								<div role="tabpanel" class="tab-pane fade" id="today"
									aria-labelledby="today-tab">
									<!-- Begin Today Stats -->
									<div class="sidebar-heading pt-0">Today</div>
									<div class="today-stats mt-3 mb-3">
										<div class="row">
											<div class="col-4 text-center">
												<i class="la la-users"></i>
												<div class="counter">264</div>
												<div class="heading">Clients</div>
											</div>
											<div class="col-4 text-center">
												<i class="la la-cart-arrow-down"></i>
												<div class="counter">360</div>
												<div class="heading">Sales</div>
											</div>
											<div class="col-4 text-center">
												<i class="la la-money"></i>
												<div class="counter">$ 4,565</div>
												<div class="heading">Earnings</div>
											</div>
										</div>
									</div>
									<!-- End Today Stats -->
									<!-- Begin Friends -->
									<div class="sidebar-heading">Friends</div>
									<div class="quick-friends mt-3 mb-3">
										<ul class="list-group w-100">
											<li class="list-group-item">
												<div class="media">
													<div class="media-left align-self-center mr-3">
														<img src="assets/img/avatar/avatar-02.jpg" alt="..."
															class="img-fluid rounded-circle" style="width: 35px;">
													</div>
													<div class="media-body align-self-center">
														<a href="javascript:void(0);">Brandon Smith</a>
													</div>
												</div>
											</li>
											<li class="list-group-item">
												<div class="media">
													<div class="media-left align-self-center mr-3">
														<img src="assets/img/avatar/avatar-03.jpg" alt="..."
															class="img-fluid rounded-circle" style="width: 35px;">
													</div>
													<div class="media-body align-self-center">
														<a href="javascript:void(0);">Louis Henry</a>
													</div>
												</div>
											</li>
											<li class="list-group-item">
												<div class="media">
													<div class="media-left align-self-center mr-3">
														<img src="assets/img/avatar/avatar-04.jpg" alt="..."
															class="img-fluid rounded-circle" style="width: 35px;">
													</div>
													<div class="media-body align-self-center">
														<a href="javascript:void(0);">Nathan Hunter</a>
													</div>
												</div>
											</li>
											<li class="list-group-item">
												<div class="media">
													<div class="media-left align-self-center mr-3">
														<img src="assets/img/avatar/avatar-05.jpg" alt="..."
															class="img-fluid rounded-circle" style="width: 35px;">
													</div>
													<div class="media-body align-self-center">
														<a href="javascript:void(0);">Megan Duncan</a>
													</div>
												</div>
											</li>
											<li class="list-group-item">
												<div class="media">
													<div class="media-left align-self-center mr-3">
														<img src="assets/img/avatar/avatar-06.jpg" alt="..."
															class="img-fluid rounded-circle" style="width: 35px;">
													</div>
													<div class="media-body align-self-center">
														<a href="javascript:void(0);">Beverly Oliver</a>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<!-- End Friends -->
									<!-- Begin Settings -->
									<div class="sidebar-heading">Settings</div>
									<div class="quick-settings mt-3 mb-3">
										<ul class="list-group w-100">
											<li class="list-group-item">
												<div class="media">
													<div class="media-body align-self-center">
														<p class="text-dark">Notifications Email</p>
													</div>
													<div class="media-right align-self-center">
														<label> <input class="toggle-checkbox"
															type="checkbox" checked> <span> <span></span>
														</span>
														</label>
													</div>
												</div>
											</li>
											<li class="list-group-item">
												<div class="media">
													<div class="media-body align-self-center">
														<p class="text-dark">Notifications Sound</p>
													</div>
													<div class="media-right align-self-center">
														<label> <input class="toggle-checkbox"
															type="checkbox"> <span> <span></span>
														</span>
														</label>
													</div>
												</div>
											</li>
											<li class="list-group-item">
												<div class="media">
													<div class="media-body align-self-center">
														<p class="text-dark">Chat Message Sound</p>
													</div>
													<div class="media-right align-self-center">
														<label> <input class="toggle-checkbox"
															type="checkbox" checked> <span> <span></span>
														</span>
														</label>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<!-- End Settings -->
								</div>
								<!-- End Today -->
							</div>
						</div>
						<!-- End Offcanvas Container -->
					</div>
					<!-- End Offsidebar Container -->
				</div>
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
	<script src="assets/vendors/js/app/app.min.js"></script>
	<!-- End Page Vendor Js -->
</body>
</html>