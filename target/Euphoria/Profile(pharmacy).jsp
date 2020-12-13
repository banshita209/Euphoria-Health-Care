<?xml version="1.0" encoding="ISO-8859-1" ?>
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

	<h1 align="center" style="font-size: 25; font-weight: 900;">Profile</h1>
	<form action="PharmacyServlet" method="get">
		<table align="center">
			<tr>
				<td>Name</td>
				<td>${pharmacy.phcy_name}</td>

			</tr>
			<tr>
				<td>Mobile Number</td>
				<td>${pharmacy.phcy_name}</</td>
			</tr>
			<tr>
				<td>House No and Society</td>
				<td>${pharmacy.address.add_detail}</</td>
			</tr>
			<tr>
				<td>Landmark of Address</td>
				<td>${pharmacy.address.landmark}</</td>
			</tr>
			<tr>
				<td>Area of Address</td>
				<td>${pharmacy.address.area}</td>
			</tr>
			<tr>
				<td>city</td>
				<td>${pharmacy.address.city}</td>
			</tr>
			<tr>
				<td>pin-code</td>
				<td>${pharmacy.address.pincode}</td>
			</tr>
			<tr>
				<td><a href="PharmacyServlet?action=Edit_Pharmacy"><input type="button"
						name="action" value="Edit_Pharmacy" /></a></td>
				<td><a href="PharmacyServlet?action=Insert Pharmacy"><input
						type="button" name="redirect" value="Insert Pharmacy" /></a></td>
			</tr>
		</table>
	</form>
</body>
</html>