<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link rel="stylesheet" type="text/css" href="title.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.4.2/css/all.css"
	integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns"
	crossorigin="anonymous" />
<link href="https://fonts.googleapis.com/css?family=Roboto"
	rel="stylesheet" />
<link rel="stylesheet"
	href="http://l-lin.github.io/font-awesome-animation/dist/font-awesome-animation.min.css" />

<title>ADMIN</title>
</head>
<body>
	<div style="float: left; width: 100%; background: #fff;">
		<h1 class="logo">Euphoria health care</h1>
		<h2 class="number">
			<i class="fas fa-mobile-alt fa-lg faa-pulse animated "></i> +91 1111
			222 333
		</h2>
	</div>
	<div class="nav">
		<ul>
			<li><a href="Home(admin).jsp"><i class="fas fa-home"></i>
					Home </a></li>

			<li><a href="AdminServlet?action=profile"><i
					class="fas fa-user-circle"></i> Profile</a></li>

			<li><a href="AdminServlet?action=feedback"><i
					class="fas fa-comment"></i> Feedback</a></li>
			

			
			<li><a href="show_user.jsp">USER</a></li>
			<li><a href="AdminServlet?action=payment">Payment</a></li>
			<li><a href="AdminServlet?action=appointment">Appointment</a></li>
			<li><a href="AdminServlet?action=meeting">Meeting</a></li>
			<li><a href="AdminServlet?action=es_display">display Emergency Services</a></li>
			<li><a href="Insert(es).jsp">Emergency Services</a></li>
			<li class="menu_r"><a href="CommonServlet?action=logout"
				class="fas fa-user-lock">Logout</a></li>
			<li class="menu_r"><a href="registration(admin).jsp"
				class="fas fa-user-lock">Register another admin</a></li>

		</ul>
	</div>
</body>
</html>