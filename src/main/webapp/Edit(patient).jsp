<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Update here</title>
</head>
<body>

<%-- <jsp:include page="Header.jsp" /> --%>
	<form action="PatientServlet" method="post">
		<div>
			<table>
				<tr>

					<td><input type="hidden" name="id" value="${patient.patient_id}" /></td>
				</tr>
				<tr>
					<td>Name :</td>
					<td><input type="text" name="name" required pattern="[A-Za-z]{1,}" value="${patient.patient_name}" /></td>
				</tr>
				<tr>
					<td>E-mail :</td>
					<td><input type="text" name="email" value="${patient.log_email}"placeholder="enter email here" required
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" /></td>
				</tr>
				
				<tr>
					<td>Choose Gender :</td>
								<td><c:if test="${patient.patient_gender eq 'Female' }">
										<input type="radio" name="gender" value="Female" checked="checked" />Female<br />
										<input type="radio" name="gender" value="Male" />Male<br />
										<input type="radio" name="gender" value="Transgender" />Transgender</c:if>
									<c:if test="${patient.patient_gender eq 'Male' }">
										<input type="radio" name="gender" value="Female"/>Female<br />
										<input type="radio" name="gender" value="Male" checked="checked"/>Male<br />
										<input type="radio" name="gender" value="Transgender" />Transgender</c:if>
									<c:if test="${patient.patient_gender eq 'Transgender' }">

										<input type="radio" name="gender" value="Female" />Female<br />
										<input type="radio" name="gender" value="Male" />Male<br />
										<input type="radio" name="gender" value="Transgender" checked="checked" />Transgender</c:if></td>
>
				</tr>
				<tr>
					<td>Enter Date of Birth:</td>
					<td><input type="date" name="dob" required pattern=" ^(19|20)\d\d([- /.])(0[1-9]|1[012])\2(0[1-9]|[12][0-9]|3[01])$"
						value="${patient.patient_dob}" /></td>
				</tr>
				<tr>
					<td>Enter Mobile Number :</td>
					<td><input type="text" name="mobile" required pattern="[0-9]{10}" 
						value="${patient.patient_mobile}" /></td>
				</tr>
				<div name="ADDRESS" style="margin-right: 450px; float: right;">
					<table>
						<tr>
							<td>Enter Name and Address :</td>
							<td><input type="text" name="p_add_detail"
								value="${patient.address.add_detail}" /></td>
						</tr>
						<tr>
							<td>Enter a Landmark of Address :</td>
							<td><input type="text" name="p_landmark" required pattern="[A-Za-z]{1,}"
								value="${patient.address.landmark}" /></td>
						</tr>
						<tr>
							<td>Enter Area of Address :</td>
							<td><input type="text" name="p_add_area" required pattern="[A-Za-z]{1,}"
								value="${patient.address.area}" /></td>
						</tr>
						<tr>
							<td>Enter City :</td>
							<td><input type="text" name="p_city" required pattern="[A-Za-z]{1,}" 
								value="${patient.address.city}" /></td>

						</tr>
						<tr>
							<td>Enter Pincode:</td>
							<td><input type="text" name="p_pincode"
								value="${patient.address.pincode}" /></td>
						</tr>
					</table>
				</div>
			</table>
		</div>
		<br>
		<div>
			<td><input type="submit" name="action" value="Update" /></td>
			<td><input type="reset" name="action" value="Clear" /></td>
		</div>
		</tr>
	</form>
</body>
</html>