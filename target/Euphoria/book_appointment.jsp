<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
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
		<form action="PatientServlet" method="post">
			<table border=1>
				<tr>
					<td>Patient's name</td>
					<td>${sessionScope.user.patient_name}</td>
				</tr>
				<tr>
					<td>Doctor's name</td>
					<td>${doctor.dr_name}
					<input type="hidden" name="dr_id" value="${doctor.dr_id}" /></td>
					
				</tr>
				<tr>
					<td>Doctor's contact no :</td>
					<td>${doctor.dr_mobile}</td>
				</tr>
				<tr>
					<td>Doctor's Gender :</td>
					<td>${doctor.dr_gender}</td>
				</tr>
				<tr>
				<td>Doctor's Qualification:</td>
				<td>${doctor.dr_qualification}</td>
				</tr>
				<tr>
					<td>Doctor's address</td>
					<td>${doctor.clinic_address.add_detail},${doctor.clinic_address.landmark}
						<br>${doctor.clinic_address.area},${doctor.clinic_address.city}${doctor.clinic_address.pincode}</td>
				</tr>
				<tr>
					<td>Appointment date :</td>
					<td><input type="date" name="appointment_date" required /></td>
				</tr>
				<tr>
					<td><input type="submit" name="action"
						value="Confirm Appointment"></td>
				</tr>
			</table>

		</form>
	</center>
</body>
</html>