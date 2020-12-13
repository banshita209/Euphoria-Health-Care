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
	<jsp:include page="Header(doctor).jsp" />
	<center>
		<br /> <br /> <br />
		<div class="body">
			<div>
				<h1>update form</h1>
				<form action="DoctorServlet" method="post">
					<div
						style="padding: 5px 5px 5px 5px; margin: 5px 5px 5px 5px; border-radius: 5px; width: 40%;">
						<table>
							<tr>
								<td><input type="hidden" name="id" value="${user.dr_id}" /></td>
							</tr>
							<tr>
								<td>Enter Name :</td>
								<td><input type="text" name="name" value="${user.dr_name}"
									required pattern="[A-Za-z]{1,}" title="only string allowed" /></td>
							</tr>
							<tr>
								<td>Enter E-mail :</td>
								<td><input type="text" name="email"
									value="${user.log_email}"placeholder="enter email here" required
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" /></td>
							</tr>
							
							<tr>
								<td>Choose Gender :</td>
								<td><c:if test="${user.dr_gender eq 'Female' }">
										<input type="radio" name="gender" value="Female" checked="checked" />Female<br />
										<input type="radio" name="gender" value="Male" />Male<br />
										<input type="radio" name="gender" value="Transgender" />Transgender</c:if>
									<c:if test="${user.dr_gender eq 'Male' }">
										<input type="radio" name="gender" value="Female"/>Female<br />
										<input type="radio" name="gender" value="Male" checked="checked"/>Male<br />
										<input type="radio" name="gender" value="Transgender" />Transgender</c:if>
									<c:if test="${user.dr_gender eq 'Transgender' }">

										<input type="radio" name="gender" value="Female" />Female<br />
										<input type="radio" name="gender" value="Male" />Male<br />
										<input type="radio" name="gender" value="Transgender" checked="checked" />Transgender</c:if></td>
							</tr>
							<tr>
								<td>Enter Date of Birth:</td>
								<td><input type="date" name="dob" placeholder="yyyy-mm-dd" required pattern=" ^(19|20)\d\d([- /.])(0[1-9]|1[012])\2(0[1-9]|[12][0-9]|3[01])$"value="${user.dr_dob}" /></td>
							</tr>
							<tr>
								<td>Enter Mobile Number :</td>
								<td><input type="text" name="mobile"
									placeholder="enter mob here" required pattern="[0-9]{10}"  value="${user.dr_mobile}"/></td>
							</tr>
							<tr>
								<td>Enter Qualification:</td>
								<td><input type="text" name="qualification" value="${user.dr_qualification}" required /></td>
							</tr>
						</table>
					</div>
					<br />
					<div>
						<b><i>PERSONAL ADDRESS : </i></b> <br /> <br />
						<table>
							<tr>
								<td>Enter House-no and Society :</td>
								<td><input type="text" name="p_add_detail" value="${user.personal_address.add_detail}" required /></td>
							</tr>
							<tr>
								<td>Enter a Landmark of Address :</td>
								<td><input type="text" name="p_landmark"
									placeholder="enter landmark here" required
									pattern="[A-Za-z]{1,}" title="only string allowed" value="${user.personal_address.landmark}" /></td>
							</tr>
							<tr>
								<td>Enter Area of Address :</td>
								<td><input type="text" name="p_add_area"
									placeholder="enter area of address here" required
									pattern="[A-Za-z]{1,}" title="only string allowed" value="${user.personal_address.area}" /></td>
							</tr>
							<tr>
								<td>Enter City :</td>
								<td><input type="text" name="p_city"
									placeholder="enter city here" required pattern="[A-Za-z]{1,}"
									title="only string allowed" value="${user.personal_address.city}" /></td>
							</tr>
							<tr>
								<td>Enter Pincode:</td>
								<td><input type="text" name="p_pincode" value="${user.personal_address.pincode}" /></td>
							</tr>
						</table>

					</div>

					<div>
						<b><i>CLINIC ADDRESS</i></b> <br /> <br />
						<table>
							<tr>
								<td>Enter Clinic Name and Address :</td>
								<td><input type="text" name="c_add_detail" value="${user.clinic_address.add_detail}"/></td>
							</tr>
							<tr>
								<td>Enter a Landmark of Clinic Address :</td>
								<td><input type="text" name="c_landmark"
									placeholder="enter landmark here" value="${user.clinic_address.landmark}"/></td>
							</tr>
							<tr>
								<td>Enter Area of Clinic Address :</td>
								<td><input type="text" name="c_add_area"
									placeholder="enter area of address here" required
									pattern="[A-Za-z]{1,}" title="only string allowed"value="${user.clinic_address.area}" /></td>
							</tr>
							<tr>
								<td>Enter City :</td>
								<td><input type="text" name="c_city"
									placeholder="enter city here" required pattern="[A-Za-z]{1,}"
									title="only string allowed" value="${user.clinic_address.city}"/></td>

							</tr>
							<tr>
								<td>Enter Pincode:</td>
								<td><input type="text" name="c_pincode" value="${user.clinic_address.pincode}" /></td>
							</tr>
						</table>
					</div>

					<div>
						<table>
							<tr>
								<td><input type="submit" name="action" value="Update" /></td>
								<td><input type="reset" name="action" value="Clear" /></td>
							</tr>
						</table>
					</div>
				</form>
			</div>
		</div>
	</center>
</body>
</html>