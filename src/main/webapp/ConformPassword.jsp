<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c-rt"%>
<title>Insert title here</title>
</head>
<body>

	<h1 align="center" style="font-size: 25; font-weight: 900;">Profile</h1>
	<%
		HttpSession httpSession = request.getSession();
		String cat = (String) httpSession.getAttribute("category");
		System.out.println("category:" + cat);
	%>
	<%-- <c:out value="${sessionScope.category}"></c:out> --%>
	<c:choose>
		<c:when test="${sessionScope.category eq 'mr'}">
			<%
				System.out.println("in mr set value::::");
			%>
			<c:set var="cat1" value="mr" />
		</c:when>
		<c:when test="${sessionScope.category eq 'pharmacist'}">
			<%
				System.out.println("in pharmacist set value");
			%>
			<c:set var="cat2" value="pharmacist" />
		</c:when>
		<c:when test="${sessionScope.category eq 'patient'}">
			<%
				System.out.println("in patient set value");
			%>
			<c:set var="cat3" value="patient" />
		</c:when>
		<c:when test="${sessionScope.category eq 'doctor'}">
			<%
				System.out.println("in doctor set value");
			%>
			<c:set var="cat4" value="doctor" />
		</c:when>
		<c:when test="${sessionScope.category eq 'admin'}">
			<%
				System.out.println("in admin set value");
			%>
			<c:set var="cat5" value="admin" />
		</c:when>
	</c:choose>

	<c:choose>
		<c:when test="${cat1 eq 'mr'}">
			<%
				System.out.println("In mr condition");
			%>
			<form action="MedicalRepresentativeServlet" method="post">
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
						<td><input type="submit" name="action" value="ChangePassword" /></td>

					</tr>
				</table>
			</form>
		</c:when>
		<c:when test="${cat2 eq 'pharmacist'}">
			<%
				System.out.println("In pharmasict condition");
			%>
			<form action="PharmacistServlet" method="post">
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
						<td><input type="submit" name="action" value="ChangePassword" /></td>

					</tr>
				</table>
			</form>
		</c:when>

		<c:when test="${cat3 eq 'patient'}">
			<%
				System.out.println("In Patient condition");
			%>
			<form action="PatientServlet" method="post">
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
						<td><input type="submit" name="action" value="ChangePassword" /></td>

					</tr>
				</table>
			</form>
		</c:when>
		<c:when test="${cat4 eq 'doctor' }">
			<%
				System.out.println("In doctor condition");
			%>
			<form action="DoctorServlet" method="post">
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
						<td><input type="submit" name="action" value="ChangePassword" /></td>

					</tr>
				</table>
			</form>
		</c:when>
		<c:when test="${cat5 eq 'admin' }">
			<%
				System.out.println("In admin condition");
			%>
			<form action="AdminServlet" method="post">
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
						<td><input type="submit" name="action" value="ChangePassword" /></td>

					</tr>
				</table>
			</form>
		</c:when>

	</c:choose>
	</form>

</body>
</html>