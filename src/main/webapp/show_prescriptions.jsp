<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="com.model.Payment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Euphoria</title>
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
							"families" : [ "Montserrat:400,500,600,700",
									"Noto+Sans:400,700" ]
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
							<link rel="stylesheet"
								href="assets/vendors/css/base/bootstrap.min.css">
								<link rel="stylesheet"
									href="assets/vendors/css/base/elisyam-1.5.min.css">
									<!-- Tweaks for older IEs-->
									<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
									<link rel="apple-touch-icon" sizes="180x180"
										href="assets/img/apple-touch-icon.png">
										<link rel="icon" type="image/png" sizes="32x32"
											href="assets/img/favicon-32x32.png">
											<link rel="icon" type="image/png" sizes="16x16"
												href="assets/img/favicon-16x16.png">
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
		<header class="header"> <nav class="navbar fixed-top">
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
		<!-- End Search Box--> <!-- Begin Topbar -->
		<div
			class="navbar-holder d-flex align-items-center align-middle justify-content-between">
			<!-- Begin Logo -->
			<div class="navbar-header">
				<a href="db-default.html" class="navbar-brand">
					<div class="brand-image brand-big">
						<img src="assets/img/white-logo.png" alt="logo" class="logo-big">
					</div>
					<div class="brand-image brand-small">
						<img src="assets/img/white-logo.png" alt="logo" class="logo-small">
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
				<nav class="side-navbar box-scroll sidebar-scroll"> <!-- Begin Main Navigation -->
				<ul class="list-unstyled">
					<li><a href="Patient_home.jsp"> Home </a></li>

					<li><a href="PatientServlet?action=profile">Profile</a></li>
					<li><a href="#dropdown-email" aria-expanded="true"
						data-toggle="collapse"><span>Health Tracker</span></a>
						<ul id="dropdown-email" class="collapse list-unstyled pt-0">
							<li><a href="PatientServlet?action=HealthTracker">Show
									Health Tracker</a></li>
							<li><a href="insert_hd.jsp">Insert in Health Tracker</a></li>

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
				<!-- End Main Navigation --> </nav>
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
								<div class="widget-body">
									<!-- <p class="text-primary mt-2 mb-2">Play with Elisyam :)</p> -->
									<c:if test="${empty paymentList}">
										<h3>Currently no Prescriptions are requested</h3>
										<%
											System.out.print("no prescription");
										%>
									</c:if>
									<c:if test="${not empty paymentList}">
										<%
											System.out.print("prescription");
										%>
										<div class="table-responsive">
											<table class="table mb-0">
												<thead>
													<tr>
														<th>Date</th>
														<th>Pharmacist Name</th>
														<th>Amount</th>
														<th>Status</th>
														<th>Read</th>

													</tr>
												</thead>
												<tbody>

													<c:forEach var="p" items="${paymentList}"
														varStatus="current">
														<tr>
															<td><span class="text-primary">${p.prescription.pr_date}</span></td>
															<td>${p.pharmacist.phst_name}</td>
															<td>${p.amount}</td>

															<td><c:choose>
																	<c:when test="${p.ifd==0}">
																		<span class="badge-text badge-text-small info"><c:out
																				value="Pending"></c:out></span>
																	</c:when>
																	<c:otherwise>
																		<span class="badge-text badge-text-large success"><c:out
																				value="Accept"></c:out></span>
																	</c:otherwise>
																</c:choose></td>
															<td>
																<div class="col-xl-8 d-flex align-items-center mb-3">
																	<button type="button" class="btn btn-danger mr-1 mb-2"
																		data-toggle="modal"
																		data-target="#modal-centered${p.prescription.pr_id}">Read</button>
																</div> <!-- class="btn btn-danger" -->

																<div id="modal-centered${p.prescription.pr_id}"
																	class="modal fade">
																	<div class="modal-dialog modal-dialog-centered">
																		<div class="modal-content">
																			<div class="modal-header">
																				<h4 class="modal-title">Read Prescription</h4>
																				<button type="button" class="close"
																					data-dismiss="modal">
																					<span aria-hidden="true">×</span> <span
																						class="sr-only">close</span>
																				</button>
																			</div>
																			<div class="modal-body">

																				<img src="prescription/${p.prescription.pr_id}.jpg"
																					height="400px" width="400px" />
																			</div>
																			<div class="modal-footer">
																				<button type="button" class="btn btn-primary"
																					data-dismiss="modal">close</button>
																				
																			</div>
																		</div>
																	</div>
																</div>

															</td>
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
	<script src="assets/vendors/js/app/app.min.js"></script>
	<!-- End Page Vendor Js -->
	<script src="assets/vendors/js/base/jquery.min.js"></script>
	<script src="assets/vendors/js/base/core.min.js"></script>
	<!-- End Vendor Js -->
	<!-- Begin Page Vendor Js -->
	<script src="assets/vendors/js/nicescroll/nicescroll.min.js"></script>
	<script src="assets/vendors/js/app/app.min.js"></script>
	<!-- End Page Vendor Js -->

</body>
</html>