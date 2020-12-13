<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="Header(pharmacist).jsp" />
	<h1 align="center" style="font-size: 25; font-weight: 900;">Profile</h1>
	<form action="PharmacistServlet?id=${user.phst_id}" method="post">
		<table align="center">
			<tr>
				<td>Name</td>
				<td>${user.phst_name}</td>
			</tr>
			<tr>
				<td>E-mail</td>
				<td>${user.log_email}</td>
			</tr>
			
			<tr>
				<td>choose your gender</td>
				<td>${user.phst_gender}</td>
			</tr>
			<tr>
				<td>Date of Birth</td>
				<td>${user.phst_dob}</td>
			</tr>
			<tr>
				<td>Mobile Number</td>
				<td>${user.phst_mobile}</td>
			</tr>

			<td><br /></td>
			</tr>
			<tr>
				<td>House No and Society</td>
				<td>${user.address.add_detail}</td>
			</tr>
			<tr>
				<td>Landmark of Address</td>
				<td>${user.address.landmark}</td>
			</tr>
			<tr>
				<td>Area of Address</td>
				<td>${user.address.area}</td>
			</tr>
			<tr>
				<td>city</td>
				<td>${user.address.city}</td>
			</tr>
			<tr>
				<td>pin-code</td>
				<td>${user.address.pincode}</td>
			</tr>

			<tr>
				<td><input type="submit" name="action" value="Edit profile" /></td>
			</tr>
		</table>

	</form>
</body>
</html>