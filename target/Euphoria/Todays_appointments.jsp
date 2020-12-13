<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Requested Appointments</title>
</head>
<body>
	<jsp:include page="Header(doctor).jsp" />
	<center>
		<c:if test="${appointments eq null}">
			<h3>Currently no appointment are requested</h3>
			<%
				System.out.print("no appointmnent");
			%>
		</c:if>
		<c:if test="${appointments ne null}">
			<%
				System.out.print("appointmnent");
			%>
			<table border="1">
				<tr>
					<th>Patient</th>
					<th>Booking Date</th>
					<th>Appointment Date</th>
					<th>Status</th>
					<th>Deny</th>
				</tr>
				<c:forEach var="appointment" items="${appointments}">
					<tr>
						<td>${appointment.patient.patient_name}</td>
						<td>${appointment.booking_date}</td>
						<td>${appointment.appointment_date}</td>
						<td>${appointment.status}</td>
						<td><a
							href="DoctorServlet?action=deny_appointment&&type=T&&id=${appointment.app_id}">Deny</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
		<br> <br>
	</center>
</body>
</html>