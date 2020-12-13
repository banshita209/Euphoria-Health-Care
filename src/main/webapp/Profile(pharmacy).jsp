<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Euphoria - Profile</title>
		<meta name="description"
			content="Euphoria is a Web App and Admin Dashboard Template built with Bootstrap 4">
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
				<c:if test="${not empty msg}">

					<script type="text/javascript">
						
					<%System.out.println("in condition for method");%>
						/* 	popup('${msg}'); */
						alert("${msg}");
					</script>
				</c:if>
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
					<link rel="stylesheet"
						href="assets/css/owl-carousel/owl.carousel.min.css">
						<link rel="stylesheet"
							href="assets/css/owl-carousel/owl.theme.min.css">
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

			<!-- Begin Quick Actions -->
			<li class="nav-item"><a href="#off-canvas" class="open-sidebar"><i
					class="la la-ellipsis-h"></i></a></li>
			<!-- End Quick Actions -->
			</ul>
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
					<li><a href="Header(pharmacist).jsp">Home </a></li>
					<li><a href="PharmacistServlet?action=profile">Profile</a></li>

					<li class="dropdown"><a class="dropdown-toggle" href="#"
										id="components" role="button" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false">Prescriptions</a>
										<ul class="dropdown-menu" aria-labelledby="components">
											<li><a href="PharmacistServlet?action=prescription">
													Requested Prescription</a></li>
											<li><a
												href="PharmacistServlet?action=accepted_prescription">
													Accepted Prescription</a></li>
										</ul></li>
					<li><a href="PharmacyServlet?action=Pharmacy_Profile">Pharmacy</a></li>

					<li><a href="Feedback.jsp">Feedback</a></li>
					<li><a href="pages-change-password.jsp">ChangePassword</a></li>
					<li class="menu_r"><a href="CommonServlet?action=logout"
						class="fas fa-user-lock">Logout</a></li>
					<li><a href="Header(pharmacist).jsp"><i
							class="la la-angle-left"></i><span>Back To Homepage</span></a></li>
				</ul>

				<!-- End Main Navigation --> </nav>
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
									<!-- 	<ul class="breadcrumb">
										<li class="breadcrumb-item"><a href="#"><i
												class="ti ti-home"></i></a></li>
										<li class="breadcrumb-item"><a href="#">Pages</a></li>
										<li class="breadcrumb-item active">Profile</li> -->
									</ul>
								</div>
							</div>
						</div>
					</div>
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
									<c:if test="${user.phst_gender eq 'Male'}">
										<h3 class="text-center mt-3 mb-1">Mr. ${user.phst_name }</h3>
									</c:if>
									<c:if test="${user.phst_gender eq 'Female'}">
										<h3 class="text-center mt-3 mb-1">Miss. ${user.phst_name }</h3>
									</c:if>
									<c:if test="${user.phst_gender eq 'Transgender'}">
										<h3 class="text-center mt-3 mb-1">${user.phst_name }</h3>
									</c:if>
									<p class="text-center">${user.log_email}</p>
									<br /> <br /> <br />
									<p>Note:- Currently you can register only one pharmacy for
										one pharmacist</p>
								</div>
							</div>
							<!-- End Widget -->
						</div>
						<div class="col-xl-9">
							<div class="widget has-shadow">
								<div
									class="widget-header bordered no-actions d-flex align-items-center">
									<h4>Update Pharmacy Profile</h4>
								</div>
								<div class="widget-body">
									<div class="col-10 ml-auto">
										<div class="section-title mt-3 mb-3">
											<h4>Pharmacy Details Informations</h4>
										</div>
									</div>
									<form action="PharmacyServlet" method="post"
										class="form-horizontal">
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Full
												Name</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="name"
													value="${pharmacy.phcy_name}" required
													placeholder="enter full name here"
													title="only string allowed" /> <input type="hidden"
													name="id" value="${pharmacy.phcy_id}" />
											</div>
										</div>

										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Phone</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="mobile"
													required pattern="[0-9]{10}"
													placeholder="enter phone number here"
													value="${pharmacy.phcy_mobile}" />
											</div>
										</div>

										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">House-no
												and Society </label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="add_detail"
													value="${pharmacy.address.add_detail}" required
													placeholder="enter house number and society here" />
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Landmark</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="landmark"
													placeholder="enter landmark here" required
													title="only string allowed"
													value="${pharmacy.address.landmark}" />
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Area</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="add_area"
													placeholder="enter area of address here" required
													pattern="[A-Za-z]{1,}" title="only string allowed"
													value="${pharmacy.address.area}" />
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">City</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="city"
													placeholder="enter city here" required
													pattern="[A-Za-z]{1,}" title="only string allowed"
													value="${pharmacy.address.city}" />
											</div>
										</div>
										<div class="form-group row d-flex align-items-center mb-5">
											<label
												class="col-lg-2 form-control-label d-flex justify-content-lg-end">Pincode</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="pincode"
													value="${pharmacy.address.pincode}"
													placeholder="enter pincode here" />
											</div>
										</div>



										<div class="em-separator separator-dashed"></div>
										<div class="text-right">
											<input class="btn btn-gradient-01" type="submit"
												name="action" value="Update Pharmacy Details" /></a>

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
						<ul class="nav">euphoriahealthcare.abgp@gmail.com
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