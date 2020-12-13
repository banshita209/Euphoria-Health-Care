<%@page import="com.model.Doctor"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="Header(patient).jsp" />
	<center>
		<%
			System.out.println("on jsp page");
		%>
		<form action="PatientServlet" method="post">
			<table>
				<tr>
					<td>Select your Area</td>
					<td><select name="source">
							<option>----select---</option>
							<c:forEach var="a" items="${area}">
								<option value="${a}">${a}</option>
							</c:forEach>
					</select></td>
				</tr>
				<tr>
					<td><input type="submit" name="action" value="Search Doctor"></td>
				</tr>
			</table>
			<table border="1">
				<tr>
					<th>Doctor's name</th>
					<th>Doctor's Clinic address</th>
					<th>Doctor's Qualification</th>
					<th>Doctor'gender</th>
					<th>Doctor's mobile no</th>
				</tr>
				<c:forEach var="doctor" items="${doctors}">

					<tr>
						<td>${doctor.dr_name}</td>
						<td>${doctor.clinic_address.add_detail},${doctor.clinic_address.landmark}<br>${doctor.clinic_address.area},${doctor.clinic_address.city}</td>
						<td>${doctor.dr_qualification}</td>
						<td>${doctor.dr_gender}</td>
						<td>${doctor.dr_mobile}</td>
						<td><a
							href="PatientServlet?action=GetDoctorForAppointment&&id=${doctor.dr_id}">Book
								appointment</a></td>
					</tr>
				</c:forEach>
			</table>
		</form>
	</center>
</body>
</html>