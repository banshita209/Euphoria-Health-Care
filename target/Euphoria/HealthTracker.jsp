<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert Health Detail here</title>
</head>
<body>
<jsp:include page="Header(patient).jsp" />
	<form action="PatientServlet" method="post">
		<table align="center">
			<th>Health Details</th>

			<tr>
				<td>blood glucose:</td>
				<td>${hd.blood_glucose}</td>
			</tr>

			<tr>
				<td>blood pressure:</td>
				<td>${hd.blood_pressure}</td>
			</tr>

			<tr>
				<td>Your blood volume:</td>
				<td>${hd.blood_volume}</td>
			</tr>

			<tr>
				<td>Your height:</td>
				<td>${hd.height}</td>
			</tr>

			<tr>
				<td>Your weight:</td>
				<td>${hd.weight}</td>
			</tr>

			<tr>
				<%-- <input type="hidden" name="userid" value="${hd.patient}" /> --%>
				<td><input type="submit" name="action"
					value="Update Health Tracker" /></td>
				<td><a href="HD_insert.jsp"><input
						type="button" value="Insert data in Health Tracker" /></a></td>
			</tr>

		</table>
	</form>
</body>
</html>