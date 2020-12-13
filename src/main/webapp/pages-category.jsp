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
<title>Euphoria - category</title>
<meta name="description"
	content="Elisyam is a Web App and Admin Dashboard Template built with Bootstrap 4">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link href="https://fonts.googleapis.com/css?family=Roboto"
	rel="stylesheet" />
<link rel="stylesheet"
	href="http://l-lin.github.io/font-awesome-animation/dist/font-awesome-animation.min.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
			<img src="assets/img/white-logo.png" width="80" height="50"
				alt="logo" class="loader-logo">
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
						<a href="pages-AboutUs.jsp" class="navbar-brand">
							<div class="brand-image brand-big">
								<img src="assets/img/white-logo.png" alt="logo" class="logo-big">
							</div> <!-- <div class="brand-image brand-small">
								<img src="assets/img/logo.png" alt="logo" class="logo-small">
							</div> -->

						</a>
						<!-- Toggle Button -->
						<!-- <a id="toggle-btn" href="#" class="menu-btn active"> <span></span>
							<span></span> <span></span>
						</a> -->
						<!-- End Toggle -->
					</div>
					<!-- End Logo -->
					<!-- Begin Navbar Menu -->

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
						<!-- <li><a href="gmail.com"><i class="la la-at"></i><span>euphoriahealthcare.abgp@gmail.com</span></a></li> -->
						<!-- <li><a href="#dropdown" aria-expanded="false"
							data-toggle="collapse"><i class="la la-puzzle-piece"></i><span>Options</span></a> -->
						<!-- <ul id="dropdown" class="collapse list-unstyled pt-0"> -->
						<li><a href="#" data-toggle="modal"
							data-target="#modal-large">About Us</a></li>
						<li><a href="#" data-toggle="modal"
							data-target="#modal-centered">Contact Us</a></li>

						<li><a href="FirstAid.jsp">First Aid</a></li>
					</ul>
					<c:if test="${sessionScope.category eq 'patient'}">
						<ul class="list-unstyled">
							<li><a href="Patient_home.jsp"><i
									class="la la-angle-left"></i><span>Back To Euphoria</span></a></li>
						</ul>
					</c:if>
					<c:if test="${empty sessionScope.category}">
						<ul class="list-unstyled">
							<li><a href="welcome-page.jsp"><i
									class="la la-angle-left"></i><span>Back To Euphoria</span></a></li>
						</ul>
					</c:if>
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
								<h2 class="page-header-title"></h2>
								<div>
									<ul class="breadcrumb">
										<!-- <li class="breadcrumb-item"><a href="db-all.html"><i
												class="ti ti-home"></i></a></li>
										<li class="breadcrumb-item active"></li> -->
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
								<div class="widget-body" align="center">
									<!--  <p class="text-primary mt-2 mb-2"></p> -->
									<%
										String action = request.getParameter("action");
										System.out.println("action =" + action);
									%>
									<%
										if (action.equals("register")) {
									%>
									<h1 class="page-header-title" align="center">Choose your
										category</h1>
									<table align="center" cellpadding="20px" cellspacing="20px">
										<tr>
											<td><a href="forms-patient-registration.jsp"><i
													class="fa fa-heartbeat"
													style="font-size: 150px; color: #FB054B;"></i></a><br />
												<h3>Patient</h3></td>
											<td><a href="forms-doctor-registration.jsp"><i
													class="fa fa-user-md"
													style="font-size: 150px; color: #FB054B"></i></a><br />
												<h3>Doctor</h3></td>
										</tr>
										<tr>
											<td><a href="registration(pharmacist).jsp"><i
													class="fa fa-hospital-o"
													style="font-size: 150px; color: #FB054B"></i></a><br />
												<h3>Pharmacist</h3></td>
											<td><a href="registration(mr).jsp"><i
													class="fa fa-medkit"
													style="font-size: 150px; color: #FB054B"></i></a><br />
												<h3>Medical Representative</h3></td>
										</tr>
									</table>
								</div>
								<%
									} else if (action.equals("login")) {
								%>
								<div align="center">
									<h1 class="page-header-title" align="center">Choose your
										category</h1>

									<table align="center" cellpadding="20px" cellspacing="20px">
										<tr>
											<td><a href="pages-login.jsp?category=patient"><i
													class="fa fa-heartbeat"
													style="font-size: 150px; color: #FB054B;"></i></a><br />
												<h3>Patient</h3></td>
											<td><a href="pages-login.jsp?category=doctor"><i
													class="fa fa-user-md"
													style="font-size: 150px; color: #FB054B"></i></a><br />
												<h3>Doctor</h3></td>
										</tr>
										<tr>
											<td><a href="pages-login.jsp?category=pharmacist"><i
													class="fa fa-hospital-o"
													style="font-size: 150px; color: #FB054B"></i></a><br />
												<h3>Pharmacist</h3></td>
											<td><a href="pages-login.jsp?category=mr"><i
													class="fa fa-medkit"
													style="font-size: 150px; color: #FB054B"></i></a><br />
												<h3>Medical Representative</h3></td>
										</tr>
										<tr>
											<td colspan="2" align="center"><a
												href="pages-login.jsp?category=admin"><i
													class="fa fa-user-circle"
													style="font-size: 150px; color: #FB054B"></i></a><br />
												<h3>Admin</h3></td>

										</tr>
									</table>

								</div>
								<%
									}
								%>
								<!-- </center> -->

							</div>
						</div>
					</div>

					<!-- End Row -->
				</div>
				<!-- End Container -->
				<!-- Begin Page Footer-->
				<footer class="main-footer fixed-footer">
					<div class="container">
						<div class="row">
							<div
								class="col-xl-6 col-lg-6 col-md-6 col-sm-12 d-flex align-items-center justify-content-xl-start justify-content-lg-start justify-content-md-start justify-content-center">
								<p class="text-gradient-02">Design By ABGP</p>
							</div>
							<div
								class="col-xl-6 col-lg-6 col-md-6 col-sm-12 d-flex align-items-center justify-content-xl-end justify-content-lg-end justify-content-md-end justify-content-center">
								<ul class="nav">euphoriahealthcare.abgp@gmail.com
								</ul>
							</div>
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
						<!-- <div class="off-sidebar-content offcanvas-scroll auto-scroll">
						<div class="tab-content">
							Begin Messenger
							<div role="tabpanel" class="tab-pane show active fade"
								id="messenger" aria-labelledby="messenger-tab">
								Begin Chat Message
								<span class="date">Today</span>
								<div class="messenger-message messenger-message-sender">
									<img class="messenger-image messenger-image-default"
										src="assets/img/avatar/avatar-02.jpg" alt="...">
									<div class="messenger-message-wrapper">
										<div class="messenger-message-content">
											<p>
												<span class="mb-2">Brandon wrote</span> Hi David, what's up?
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
								End Chat Message -->
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
	<!-- Begin Large Modal -->
	<div id="modal-large" class="modal fade">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">About Us</h4>
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">�</span> <span class="sr-only">close</span>
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
						<span aria-hidden="true">�</span> <span class="sr-only">close</span>
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
	<script src="assets/vendors/js/app/app.min.js"></script>
	<!-- End Page Vendor Js -->

					</body>
</html>