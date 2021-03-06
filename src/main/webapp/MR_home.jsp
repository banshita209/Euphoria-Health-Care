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
<!-- Favicon -->
<link rel="apple-touch-icon" sizes="180x180"
	href="assets/img/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="assets/img/white-logo.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="assets/img/white-logo.png">
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
							<a href="db-modern.html" class="navbar-brand">
								<div class="brand-image brand-big">
									<img src="assets/img/black-logo.png" alt="logo" style="width: 170px;"
										class="logo-big">
								</div>
								<div class="brand-image brand-small">
									<img src="assets/img/black-logo.png" alt="logo" class="logo-small">
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
									<li class="dropdown"><a href="MR_home.jsp">Home</a></li>
									<li><a href="MedicalRepresentativeServlet?action=profile"><i
											class="fas fa-user-circle"></i> Profile</a></li>
									<li class="dropdown"><a class="dropdown-toggle" href="#"
										id="components" role="button" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false">Meeting</a>
										<ul class="dropdown-menu" aria-labelledby="components">
											<li class="dropdown"><a
												href="MedicalRepresentativeServlet?action=get_area">Book
													Meeting</a>
											<li><a href="MedicalRepresentativeServlet?action=meeting"><i
										class="fas fa-file-medical-alt"></i>View Meeting</a></li>
										</ul></li>
										<li class="dropdown"><a class="dropdown-toggle" href="#"
										id="components" role="button" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false">Analysis</a>
										<ul class="dropdown-menu" aria-labelledby="components">
											
											<li class="dropdown"><a  href="UploadAnalysis.jsp"
												>Upload Analysis</a></li>
												<li class="dropdown"><a
												href="MedicalRepresentativeServlet?action=analysis">View Analysis</a>


										</ul></li>
										
									<li><a href="Feedback.jsp"><i class="fas fa-comment"></i>
											Feedback</a></li>
									<li><a href="ContactUs.jsp">Contact Us</a></li>
									<li><a href="ConformPassword.jsp">ChangePassword</a></li>
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

									<img src="images/mr.png" alt="mr_logo" height="400px"
										width="400px" />

									<h3>Welcome ${sessionScope.user.mr_name}</h3>

								</div>

							</div>

						</div>
					</div>
					<!-- End Widget Body -->
				</div>
				<!-- End Widget 08 -->

				<!-- End Container -->
				<!-- Begin Page Footer-->
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
								<li class="nav-item"><a class="nav-link"
									href="">euphoriahealthcare.abgp@gmail.com</a></li>
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