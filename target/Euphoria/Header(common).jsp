<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>Insert title here</title>
</head>
<body>

	<div>
		<h1 class="logo">Euphoria health care</h1>
		<h2 class="number">
			<i class="fas fa-mobile-alt fa-lg faa-pulse animated "></i> +91 1111
			222 333
		</h2>
		</div>
		<div class="nav">
			<ul>
				<li><a href="welcome-page.jsp"><i class="fas fa-home"></i> Home </a></li>

				<li><a href="CommonServlet?action=emergencyservices">
						Emergency Contacts</a></li>
				<li><a href="Feedback.jsp"><i class="fas fa-comment"></i>
						Feedback</a></li>
				<li><a href="ContactUs.jsp">Contact Us</a></li>

				<li><a href="FirstAid.jsp"><i class="fas fa-first-aid"></i>
						Firstaid</a></li>
				<c:if test="${ action eq null}">
					<li class="menu_r"><a href="Category.jsp?action=register">Registration</a></li>
					<li class="menu_r"><a href="Category.jsp?action=login"><i
							class="fas fa-user-lock"></i> Login</a></li>
				</c:if>
			</ul>
		</div>
	</div>
</body>
</html>