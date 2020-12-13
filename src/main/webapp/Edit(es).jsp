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
					<ul
						class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center pull-right">
						<!-- Search -->
						<li class="nav-item d-flex align-items-center"><a id="search"
							href="#"><i class="la la-search"></i></a></li>
						<!-- End Search -->
						<!-- Begin Notifications -->
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
						<!-- End Notifications -->
						<!-- User -->
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
							</ul></li>
						<!-- End User -->
						<!-- Begin Quick Actions -->
						<li class="nav-item"><a href="#off-canvas"
							class="open-sidebar"><i class="la la-ellipsis-h"></i></a></li>
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

						<li><a href="Home(admin).jsp"><i class="fas fa-home"></i>Home
						</a></li>

						<li class="dropdown"><a class="dropdown-toggle" href="#"
							id="components" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">USER</a>
							<ul class="dropdown-menu" aria-labelledby="components">
								<li class="dropdown"><a
									href="AdminServlet?action=allpatient">Patient</a></li>
								<li class="dropdown"><a
									href="AdminServlet?action=alldoctor">Doctor</a></li>
								<li class="dropdown"><a
									href="AdminServlet?action=allpharmacist">Pharmacist</a></li>
								<li class="dropdown"><a href="AdminServlet?action=allmr">Medical
										Representative</a></li>

							</ul></li>

						<li><a href="AdminServlet?action=feedback"><i
								class="fas fa-comment"></i> Feedback</a></li>
						<li><a href="AdminServlet?action=payment">Payment</a></li>
						<li><a href="AdminServlet?action=appointment">Appointment</a></li>
						<li><a href="AdminServlet?action=meeting">Meeting</a></li>
						<li><a href="AdminServlet?action=analysis">analysis</a></li>

						<li class="dropdown"><a class="dropdown-toggle" href="#"
							id="components" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">Emergency Services</a>
							<ul class="dropdown-menu" aria-labelledby="components">
								<li class="dropdown"><a
									href="AdminServlet?action=es_display">View Emergency
										Services</a></li>
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
					<ul
						class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center pull-right">
						<!-- Search -->
						<li class="nav-item d-flex align-items-center"><a id="search"
							href="#"><i class="la la-search"></i></a></li>
						<!-- End Search -->
						<!-- Begin Notifications -->
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
						<!-- End Notifications -->
						<!-- User -->
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
							</ul></li>
						<!-- End User -->
						<!-- Begin Quick Actions -->
						<li class="nav-item"><a href="#off-canvas"
							class="open-sidebar"><i class="la la-ellipsis-h"></i></a></li>
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

						<li><a href="Home(admin).jsp"><i class="fas fa-home"></i>Home
						</a></li>

						<li class="dropdown"><a class="dropdown-toggle" href="#"
							id="components" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">USER</a>
							<ul class="dropdown-menu" aria-labelledby="components">
								<li class="dropdown"><a
									href="AdminServlet?action=allpatient">Patient</a></li>
								<li class="dropdown"><a
									href="AdminServlet?action=alldoctor">Doctor</a></li>
								<li class="dropdown"><a
									href="AdminServlet?action=allpharmacist">Pharmacist</a></li>
								<li class="dropdown"><a href="AdminServlet?action=allmr">Medical
										Representative</a></li>

							</ul></li>

						<li><a href="AdminServlet?action=feedback"><i
								class="fas fa-comment"></i> Feedback</a></li>
						<li><a href="AdminServlet?action=payment">Payment</a></li>
						<li><a href="AdminServlet?action=appointment">Appointment</a></li>
						<li><a href="AdminServlet?action=meeting">Meeting</a></li>
						<li><a href="AdminServlet?action=analysis">analysis</a></li>

						<li class="dropdown"><a class="dropdown-toggle" href="#"
							id="components" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">Emergency Services</a>
							<ul class="dropdown-menu" aria-labelledby="components">
								<li class="dropdown"><a
									href="AdminServlet?action=es_display">View Emergency
										Services</a></li>
								<li class="dropdown"><a href="Insert(es).jsp">Add
										Emergency Services</a></li>
							</ul></li>

						<li class="dropdown"><a class="dropdown-toggle" href="#"
							id="components" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">Other</a>
							<ul class="dropdown-menu" aria-labelledby="components">
											<li class="dropdown"><a  href="AdminServlet?action=profile">Profile</a></li>

								<li class="dropdown"><a href="registration(admin).jsp">Register
										another admin</a></li>
								<li class="dropdown"><a href="CommonServlet?action=logout">Logout</a></li>

							</ul></li>


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
								<h2 class="page-header-title">Emergency Services</h2>
								<div>
									<ul class="breadcrumb">
										<li class="breadcrumb-item"><a href="db-all.html"><i
												class="ti ti-home"></i></a></li>
										<li class="breadcrumb-item active">Emergency Services</li>
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
									
										<form action="AdminServlet" method="post"
										class="form-horizontal">
										<div class="form-group row d-flex align-items-center mb-5">
										<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Name of Service</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="es_name"
													value="${es.es_name}" required
													title="only string allowed" /> <input type="hidden"
													name="id" value="${es.es_id}" />
											</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Mobile No.</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="name"
													value="${es.es_mobile}" required
													title="only string allowed" /> <input type="hidden"
													name="id" value="${es.es_id}" />
											</div>
										</div>
			

										<div class="em-separator separator-dashed"></div>
										<div class="text-right">
											<button class="btn btn-gradient-01" name="action"
												value="Update Emergencyservice" type="submit">Save Changes</button>
											<button class="btn btn-shadow" type="reset">Cancel</button>
										</div>
									</form>
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
									href="documentation.html">Documentation</a></li>
								<li class="nav-item"><a class="nav-link"
									href="changelog.html">Changelog</a></li>
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
							</ul></li>

						<li class="dropdown"><a class="dropdown-toggle" href="#"
							id="components" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">Other</a>
							<ul class="dropdown-menu" aria-labelledby="components">
											<li class="dropdown"><a  href="AdminServlet?action=profile">Profile</a></li>

								<li class="dropdown"><a href="registration(admin).jsp">Register
										another admin</a></li>
								<li class="dropdown"><a href="CommonServlet?action=logout">Logout</a></li>

							</ul></li>


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
								<h2 class="page-header-title">Emergency Services</h2>
								<div>
									<ul class="breadcrumb">
										<li class="breadcrumb-item"><a href="db-all.html"><i
												class="ti ti-home"></i></a></li>
										<li class="breadcrumb-item active">Emergency Services</li>
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
									
									<form action="CommonServlet" >
										<div class="table-responsive">
											<table class="table mb-0">
												<thead>
													<tr>
														<th>Name of Service</th>
														<th>Mobile No.</th>
														<th>Edit</th>
														<th>Delete</th>

													</tr>
												</thead>
												<tbody>
													<c:forEach var="e" items="${es}">
														<tr>
															<td>${e.es_name}</td>
															<td>${e.es_mobile}</td>
															<td><a href="AdminServlet?action=Edit_Emergencyservice&&id=${e.es_id}">Edit</a></td>
															<td><a href="AdminServlet?action=delete_Emergencyservice&&id=${e.es_id}">Delete</a></td>
															
														</tr>
													</c:forEach>
												</tbody>
											</table>
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
									href="documentation.html">Documentation</a></li>
								<li class="nav-item"><a class="nav-link"
									href="changelog.html">Changelog</a></li>
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