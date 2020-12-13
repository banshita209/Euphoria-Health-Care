<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//Dth XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/Dth/xhtml1-transitional.dth">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
	<form action="AdminServlet">
		<table border="3px" align="center">

			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Gender</th>
				<th>Date of Birth</th>
				<th>Mobile Number</th>
				<th>Work Area</th>
				<th>House No and Society</th>
				<th>Landmark of Address</th>
				<th>Area of Address</th>
				<th>city</th>
				<th>pin-code</th>
				<th>delete</th>
			</tr>

			<c:forEach var="m" items="${users}">

				<tr>
					<td>${m.mr_id}</td>
					<td>${m.mr_name}</td>
					<td>${m.log_email}</td>
					<td>${m.mr_gender}</td>
					<td>${m.mr_dob}</td>
					<td>${m.mr_mobile}</td>
					<td>${m.workArea}</td>
					<td>${m.address.add_detail}</td>
					<td>${m.address.landmark}</td>
					<td>${m.address.area}</td>
					<td>${m.address.city}</td>
					<td>${m.address.pincode}</td>
					<td><a href="AdminServlet?action=mr_delete&&id=${m.mr_id}">delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>