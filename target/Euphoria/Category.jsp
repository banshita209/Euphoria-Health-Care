<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="title.css" />
</head>
<body>
	<%
		String action = request.getParameter("action");
		System.out.println("action =" + action);
	%>
	<jsp:include page="Header(common).jsp" />
	<div class="back" style="width: 100%; height: 100%;">
		<br /> <br /> <br />
		<center>
			<%
				if (action.equals("register")) {
			%>
			<div>
				<h1 align="center">Choose your category:-</h1>
				<form>
					<table align="center" cellpadding="20px" cellspacing="20px">
						<tr>
							<td><a href="pages-register-patient.jsp"><i
									class="fa fa-heartbeat"
									style="font-size: 100px; color: #FB054B;"></i></a><br />Patient</td>
							<td><a href="registration(doctor).jsp"><i
									class="fa fa-user-md" style="font-size: 100px; color: #FB054B"></i></a><br />Doctor</td>
						</tr>
						<tr>
							<td><a href="registration(pharmacist).jsp"><i
									class="fa fa-hospital-o"
									style="font-size: 100px; color: #FB054B"></i></a><br />Pharmacist
							</td>
							<td><a href="registration(mr).jsp"><i
									class="fa fa-medkit" style="font-size: 100px; color: #FB054B"></i></a><br />Medical
								Representative</td>
						</tr>
					</table>
				</form>
			</div>
			<%
				} else if (action.equals("login")) {
			%>
			<div class="div"
				style="width: 50%; height: 500px; margin: 0px 15px 0px 15px; padding: 5px 5px 5px 5px; border: 2px solid #C30C62; border-radius: 75px;">
				<h1 align="center">Choose your category:-</h1>
				<form>
					<table align="center" cellpadding="20px" cellspacing="20px">
						<tr>
							<td><a href="pages-login.jsp?category=patient"><i
									class="fa fa-heartbeat"
									style="font-size: 100px; color: #FB054B;"></i></a><br />Patient</td>
							<td><a href="pages-login.jsp?category=doctor"><i
									class="fa fa-user-md" style="font-size: 100px; color: #FB054B"></i></a><br />Doctor</td>
						</tr>
						<tr>
							<td><a href="pages-login.jsp?category=pharmacist"><i
									class="fa fa-hospital-o"
									style="font-size: 100px; color: #FB054B"></i></a><br />Pharmacist
							</td>
							<td><a href="pages-login.jsp?category=mr"><i
									class="fa fa-medkit" style="font-size: 100px; color: #FB054B"></i></a><br />Medical
								Representative</td>
						</tr>
						<tr >
							<td colspan="2" align="center"><a href="Login.jsp?category=admin"><i
									class="fas fa-user-circle"
									, style="font-size: 100px; color: #FB054B"></i></a><br />Admin</td>

						</tr>
					</table>
				</form>
			</div>
			<%
				}
			%>
		</center>
	</div>

</body>
</html>