<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"
	charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Register yourself</title>

<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Euphoria - Pharmacist Registration</title>
		<meta name="description"
			content="Elisyam is a Web App and Admin Dashboard Template built with Bootstrap 4">
			<meta name="viewport"
				content="width=device-width, initial-scale=1, shrink-to-fit=no">
				<!-- Google Fonts -->
				<script
					src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js"></script>
				<script type="text/javascript">
					WebFont.load({
						google : {
							"families" : [ "Montserrat:400,500,600,700",
									"Noto+Sans:400,700" ]
						},
						active : function() {
							sessionStorage.fonts = true;
						}
					});

					function myFunction() {
						var x = document.getElementById("myInput");
						if (x.type === "password") {
							x.type = "text";
						} else {
							x.type = "password";
						}
					}

					function popup() {
						alert("use another email id")
					}

					function getXMLHttpRequest() {
						var xmlHttpReq;
						// to create XMLHttpRequest object in non-Microsoft browsers
						if (window.XMLHttpRequest) {
							xmlHttpReq = new XMLHttpRequest();
						} else if (window.ActiveXObject) {
							try {
								//to create XMLHttpRequest object in later versions of Internet Explorer
								xmlHttpReq = new ActiveXObject("Msxml2.XMLHTTP");
							} catch (exp1) {
								try {
									//to create XMLHttpRequest object in later versions of Internet Explorer
									xmlHttpReq = new ActiveXObject(
											"Microsoft.XMLHTTP");
								} catch (exp2) {
									//xmlHttpReq = false;
									// alert("Exception in getXMLHttpRequest()!");
								}
							}
						}
						return xmlHttpReq;
					}

					/*
					 * AJAX call starts with this function
					 */
					function makeRequest() {
						var xmlHttpRequest = getXMLHttpRequest();
						//  alert ("xmlHttpRequest=" + xmlHttpRequest);
						xmlHttpRequest.onreadystatechange = getReadyStateHandler(xmlHttpRequest);
						xmlHttpRequest.open("POST", "AjaxController", true);
						xmlHttpRequest.setRequestHeader("Content-Type",
								"application/x-www-form-urlencoded");
						//  alert("inside makeRequest()!");
						// var val2=document.getElementById("ajaxval2");
						/*  var val = document.getElementById("ajaxval");
						 var param = "ajaxval="+val.value/* +"&ajaxval2="+val2.value */
						//alert("before get values");
						var email = document.getElementById("email");
						var name = document.getElementById("name");
						var param = "Email=" + email.value + "&Name="
								+ name.value;
						//alert("Parameters : " + param);
						xmlHttpRequest.send(param);
						alert("Mail is sent to your email");
					}

					/*
					 * Returns a function that waits for the state change in XMLHttpRequest
					 */
					function getReadyStateHandler(xmlHttpRequest) {
						// an anonynous function returned
						// it listens to the XMLHttpRequest instance
						//alert("Ready state");
						return function() {
							if (xmlHttpRequest.readyState == 4) {
								if (xmlHttpRequest.status == 200) {
									alert("Check your mails you have recived email"
											+ xmlHttpRequest.responseText);
									document.getElementById("enterOTP").value = xmlHttpRequest.responseText;
								} else {
									alert("Http error " + xmlHttpRequest.status
											+ ":" + xmlHttpRequest.statusText);
								}
							}
						};
					}
				</script>
				<!-- Favicon -->
				<link rel="apple-touch-icon" sizes="180x180"
					href="assets/img/apple-touch-icon.png" />
				<link rel="icon" type="image/png" sizes="32x32"
					href="assets/img/favicon-32x32.png" />
				<link rel="icon" type="image/png" sizes="16x16"
					href="assets/img/favicon-16x16.png" />
				<!-- Stylesheet -->
				<link rel="stylesheet"
					href="assets/vendors/css/base/bootstrap.min.css">
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
			<img src="assets/img/white-logo.png" alt="logo" class="loader-logo" />
			<div class="spinner"></div>
		</div>
	</div>
	<!-- End Preloader -->
	<div class="page">
		<!-- Begin Header -->
		<header class="header"> <nav class="navbar fixed-top">
		<!-- Begin Search Box-->
		<div class="search-box">
			<button class="dismiss">
				<i class="ion-close-round"></i>
			</button>

		</div>
		<!-- End Search Box--> <!-- Begin Topbar -->
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

			<!-- End Navbar Menu -->
		</div>
		<!-- End Topbar --> </nav> </header>
		<!-- End Header -->
		<!-- Begin Page Content -->
		<div class="page-content d-flex align-items-stretch">
			<div class="default-sidebar">
				<!-- Begin Side Navbar -->
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
					<ul class="list-unstyled">
						<li><a href="welcome-page.jsp"><i
								class="la la-angle-left"></i><span>Back To Euphoria</span></a></li>
					</ul>

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
								<h2 class="page-header-title">Registration Form</h2>
								<div>
									<ul class="breadcrumb">
										<li class="breadcrumb-item"><a href="db-default.html"><i
												class="ti ti-home"></i></a></li>
										<li class="breadcrumb-item"><a href="#"></a></li>
										<li class="breadcrumb-item active">Registration Form</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- End Page Header -->
					<div class="row flex-row">
						<div class="col-xl-12">

							<div class="widget has-shadow">
								<div
									class="widget-header bordered no-actions d-flex align-items-center">
								</div>
								<div class="widget-body">
									<form class="needs-validation"
										action="PharmacistServlet?action=registration" method="post">
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-4 form-control-label d-flex justify-content-lg-end">Full
												Name*</label>
											<div class="col-lg-5">
												<input type="text" class="form-control"
													placeholder="Enter your name" name="name" id="name" />
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-4 form-control-label d-flex justify-content-lg-end">Email
												Address *</label>
											<div class="col-lg-5">
												<div class="input-group">
													<input type="email" class="form-control"
														placeholder="Enter your email" name="email" id="email"
														required /> <span class="input-group-addon addon-orange">.com</span>
													<div class="invalid-feedback">Please enter a valid
														email</div>
												</div>
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-4 form-control-label d-flex justify-content-lg-end">Password
												*</label>
											<div class="col-lg-5">
												<input type="password" class="form-control"
													placeholder="Password" name="password" id="myInput"
													required />
												<div class="invalid-feedback">Please enter a valid
													password</div>
												<div>
													<input id="checkpass" type="checkbox"
														onclick="myFunction()" />Show Password
												</div>
											</div>
										</div>

										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-4 form-control-label d-flex justify-content-lg-end">Phone
												Number</label>
											<div class="col-lg-5">
												<div class="input-group">
													<span class="input-group-addon addon-primary"> <i
														class="la la-phone"></i>
													</span> <input type="text" class="form-control"
														placeholder="Phone number" name="mobile" />
												</div>
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-4 form-control-label d-flex justify-content-lg-end">Date</label>
											<div class="col-lg-5">
												<input type="date" class="form-control"
													placeholder="MM/DD/YYYY" name="dob" />
											</div>
										</div>
										<div class="form-group row mb-5">
											<label
												class="col-lg-4 form-control-label d-flex justify-content-lg-end">Choose
												Gender *</label>
											<div class="col-lg-1">
												<div class="custom-control custom-radio styled-radio mb-3">
													<input class="custom-control-input" type="radio"
														name="gender" value="Female" id="opt-01" required /> <label
														class="custom-control-descfeedback" for="opt-01">Female</label>
													<div class="invalid-feedback"></div>
												</div>
											</div>
											<div class="col-lg-1">
												<div class="custom-control custom-radio styled-radio mb-3">
													<input class="custom-control-input" type="radio"
														name="gender" value="Male" id="opt-02" required /> <label
														class="custom-control-descfeedback" for="opt-02">Male</label>
													<div class="invalid-feedback"></div>
												</div>
											</div>
											<div class="col-lg-1">
												<div class="custom-control custom-radio styled-radio mb-3">
													<input class="custom-control-input" type="radio"
														name="gender" value="Transgender" id="opt-03" required />
													<label class="custom-control-descfeedback" for="opt-03">Transgender</label>
													<div class="invalid-feedback"></div>
												</div>
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-4 form-control-label d-flex justify-content-lg-end">Personal
												Address*</label>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-4 form-control-label d-flex justify-content-lg-end">Enter
												House-no and Society *</label>
											<div class="col-lg-5">
												<input type="text" class="form-control"
													placeholder="House-no and Society" name="p_add_detail"
													required />
												<div class="invalid-feedback">Please enter a valid
													house number and Society</div>
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-4 form-control-label d-flex justify-content-lg-end">Enter
												a Landmark of Address *</label>
											<div class="col-lg-5">
												<input type="text" class="form-control"
													placeholder="Landmark" name="p_landmark" required />
												<div class="invalid-feedback">Please enter a valid
													Landmark</div>
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-4 form-control-label d-flex justify-content-lg-end">Enter
												Area of Address *</label>
											<div class="col-lg-5">
												<input type="text" class="form-control" placeholder="Area"
													name="p_add_area" required />
												<div class="invalid-feedback">Please enter a valid
													area</div>
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-4 form-control-label d-flex justify-content-lg-end">City
												*</label>
											<div class="col-lg-5">
												<input type="text" class="form-control" placeholder="City"
													name="p_city" required />
												<div class="invalid-feedback">Please enter a valid
													city</div>
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-4 form-control-label d-flex justify-content-lg-end">Enter
												Pincode *</label>
											<div class="col-lg-5">
												<input type="text" class="form-control"
													placeholder="Pincode" name="p_pincode" required />
												<div class="invalid-feedback">Please enter a valid
													Pincode</div>
											</div>
										</div>

										<div class="text-center">
											<input type="button" class="btn btn-gradient-01"
												name="sendOTP" onclick="makeRequest()" value="Send OTP" />
										</div>
										<br /> <br />

										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-4 form-control-label d-flex justify-content-lg-end">Enter
												OTP *</label>
											<div class="col-lg-5">
												<input type="text" class="form-control"
													placeholder="Enter OTP" name="OTP" id="enterOTP" required />
												<div class="invalid-feedback">Please enter OTP</div>
											</div>
										</div>

										<div class="text-right">
											<button class="btn btn-gradient-01" type="submit"
												name="action" value="Register">Submit Form</button>
											<button class="btn btn-shadow" type="reset" name="action"
												value="Clear">Reset</button>
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
						<a href="#off-canvas" class="off-sidebar-close"></a> </header>
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
													<span
														class="messenger-message-localization font-size-small">2
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
														<span class="mb-2">Brandon wrote</span> I can't wait to
														see
													</p>
												</div>
												<div class="messenger-details">
													<span
														class="messenger-message-localization font-size-small">5
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
															class="img-fluid rounded-circle" style="width: 35px;" />
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
															</span></label>
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
															</span></label>
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
															</span></label>
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
		</div>
		<!-- End Page Content -->
	</div>
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
	<!-- Begin Vendor Js -->
	<script src="assets/vendors/js/base/jquery.min.js"></script>
	<script src="assets/vendors/js/base/core.min.js"></script>
	<!-- End Vendor Js -->
	<!-- Begin Page Vendor Js -->
	<script src="assets/vendors/js/nicescroll/nicescroll.min.js"></script>
	<script src="assets/vendors/js/app/app.min.js"></script>
	<!-- End Page Vendor Js -->
	<!-- Begin Page Snippets -->
	<script src="assets/js/components/validation/validation.min.js"></script>
	<!-- End Page Snippets -->

</body>
</html>