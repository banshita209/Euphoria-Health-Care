<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="Header(patient).jsp" />
	<center>
		<c:forEach var="appointment" items="${appointments}">
			<table border="1">
				<tr>
					<td>Patient's Name :</td>
					<td>${appointment.patient.patient_name}</td>
				</tr>
				<tr>
					<td>Doctor's Name :</td>
					<td>${appointment.doctor.dr_name}</td>
				</tr>
				<tr>
					<td>Status:</td>
					<td>${appointment.status}</td>
				</tr>
				<tr>
					<td>Booking date :</td>
					<td>${appointment.booking_date}</td>
				</tr>
				<tr>
					<td>Appointment date :</td>
					<td>${appointment.appointment_date}</td>
				</tr>
			</table>
			<br>
			<br>
		</c:forEach>
	</center>
</body>
</html>