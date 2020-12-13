<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="com.model.Patient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="Header(patient).jsp" />

	<h1 align="center" style="font-size: 25; font-weight: 900;">Profile</h1>

	<form action="PatientServlet?userid=${user.patient_id}" method="post">
		<table align="center">
			<tr>
				<td>Name</td>
				<td>${user.patient_name}</td>
				<%-- 
				<td><input type="hidden" name="userid"
					value="${user.patient_id}" /></td> --%>
			</tr>
			<tr>
				<td>E-mail</td>
				<td>${user.log_email}</td>
			</tr>
			<tr>
				<td>your gender</td>
				<td>${user.patient_gender}</td>
			</tr>
			<tr>
				<td>Date of Birth</td>
				<td>${user.patient_dob}</td>
			</tr>
			<tr>
				<td>Mobile Number</td>
				<td>${user.patient_mobile}</td>
			</tr>

			<tr>
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
				<td><img src="QRcode/${user.patient_id}.png"
					alt="can not display qrcode" width="150" height="150" /></td>
					
			</tr>

			<tr>
				<td><input type="submit" name="action" value="Edit Profile" /></td>
				<%-- <td><a
					href="PatientServlet?action=HealthTracker&&userid=${user.patient_id}"><input
						type="button" name="action" value="HealthTracker" /></a></td>
				<td><a href="HD_insert.jsp?userid=${user.patient_id}"><input
						type="button" value="Insert data in Health Tracker" /></a></td> --%>
			</tr>
		</table>
	</form>
</body>
</html>