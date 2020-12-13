<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Insert title here</title>
</head>
<body>

	<h1 align="center" style="font-size: 25; font-weight: 900;">Profile</h1>
	<%-- <c:if test="${sessionScope.category eq 'mr' })">
		<form action="MedicalRepresentativeServlet" method="get">
	</c:if>
	<c:if test="${sessionScope.category eq 'pharmacist' })">
		<form action="PharmacistServlet" method="post">
	</c:if>
	<c:if test="${sessionScope.category eq 'patient' })">
		<form action="PatientServlet" method="post">
	</c:if>
	<c:if test="${sessionScope.category eq 'doctor' })">
		<form action="DoctorServlet" method="get">

			</c:if>
	<c:if test="${sessionScope.category eq 'admin' })">
		<form action="AdminServlet" method="post">
	</c:if> --%>
	<%-- <%HttpSession httpSession= request.getSession();
		String cat=httpSession.getAttribute("category");
		
	%> --%>
	<table align="center">
		<tr>
			<td>Old_Password ${sessionScope.category}</td>
			<td><input type="password" name="old_password" /></td>
		</tr>
		<tr>
			<td>New_Password</td>
			<td><input type="password" name="new_password" /></td>
		</tr>
		<tr>
			<td>Conform_Password</td>
			<td><input type="password" name="conform_password" /></td>
		</tr>
		<tr>
			<td><input type="reset" name="action" value="Reset" /></td>
			<td><input type="submit" name="action" value="Change Password"></input></td>

		</tr>
	</table>
	</form>
</body>
</html>