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
	<form action="MedicalRepresentativeServlet" method="post">
		<div>
			<table>
				<tr>

					<td><input type="hidden" name="id" value="${user.mr_id}" /></td>
				</tr>
				<tr>
					<td>Enter Name :</td>
					<td><input type="text" name="name" required pattern="[A-Za-z]{1,}" value="${user.mr_name}" /></td>
				</tr>
				<tr>
					<td>Enter E-mail :</td>
					<td><input type="text" name="email" value="${user.log_email}"placeholder="enter email here" required
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" /></td>
				</tr>
				
				<tr>
					<td>Choose Gender :</td>
					<td><c:if test="${user.mr_gender eq 'Female' }">
							<input type="radio" name="gender" value="Female"
								checked="checked" />Female<br />
							<input type="radio" name="gender" value="Male" />Male<br />
							<input type="radio" name="gender" value="Transgender" />Transgender</c:if>
						<c:if test="${user.mr_gender eq 'Male' }">
							<input type="radio" name="gender" value="Female" />Female<br />
							<input type="radio" name="gender" value="Male" checked="checked" />Male<br />
							<input type="radio" name="gender" value="Transgender" />Transgender</c:if>
						<c:if test="${user.mr_gender eq 'Transgender' }">

							<input type="radio" name="gender" value="Female" />Female<br />
							<input type="radio" name="gender" value="Male" />Male<br />
							<input type="radio" name="gender" value="Transgender"
								checked="checked" />Transgender</c:if></td>
				</tr>
				<tr>
					<td>Enter Date of Birth:</td>
					<td><input type="text" name="dob" value="${user.mr_dob }" required pattern=" ^(19|20)\d\d([- /.])(0[1-9]|1[012])\2(0[1-9]|[12][0-9]|3[01])$" /></td>
				</tr>
				<tr>
					<td>Enter Mobile Number :</td>
					<td><input type="text" name="mobile" required pattern="[0-9]{10}" 
						value="${user.mr_mobile }" /></td>
				</tr>
				<tr>
					<td>Enter Work Area:</td>
					<td><select name="workarea">
										<option value="select" selected="selected">${user.workArea}</option>
										<option value="Bapunagar">Bapunagar</option>
							 			<option value="Dariyapur - Old City">Dariyapur - Old City</option>
										<option value="Shahpur - Old City">Shahpur - Old City</option>
										<option value="Khanpur - Old City">Khanpur - Old City</option>
										<option value="Kalupur - Old City">Kalupur - Old City</option>
										<option value="Kubernagar">Kubernagar</option>
										<option value="Jamalpur - Old City">Jamalpur - Old City</option>
										<option value="Behrampura">Behrampura</option>
										<option value="Shah-e-Alam - Old City">Shah-e-Alam - Old City</option>
										<option value="Mirzapur - Old City">Mirzapur - Old City</option>
										<option value="Danilimada">Danilimada</option>
										<option value="Chandola Lake">Chandola Lake</option>
										<option value="Kali">Kali</option>
										<option value="Kankaria Lake">Kankariya Lake</option>
										<option value="Shahibaug">Shahaibuag</option>
										<option value="Bodakdev">Bodakdev</option>
										<option value="Maninagar">Maninagar</option>
										<option value="Vastrapur">Vastrapur</option>
										<option value="Nava Vadaj">Nava Vadaj</option>
										<option value="Ambawadi">Ambawadi</option>
										<option value="Ellis Bridge">Ellis Bridge</option>
										<option value="Navrangpura">Navrangpura</option>
										<option value="Naranpura">Naranpura</option>
										<option value="Ghatlodiya, Ghatlodiya_(Vidhan_Sabha_constituency)">Ghatlodiya, Ghatlodiya_(Vidhan_Sabha_constituency)"</option>
										<option value="Naroda">Naroda</option>
										<option value="Paldi">Paldi</option>
										<option value="Bopal">Bopal</option>
										<option value="Ranip">Ranip</option>
										<option value="Gota">Gota</option>
										<option value="Sarkhej">Sarkhej</option>
										<option value="Vasana">Vasana</option>
										<option value="Vejalpur">Vejalpur</option>
										<option value="Gomtipur">Gomatipur</option>
										<option value="C.G. Road">C.G. Road</option>
										<option value="Law Garden">Law Garden</option>
										<option value="Lal Darwaja">Lal Darwaja</option>
										<option value="Prahladnagar">Prahladnagar</option>
										<option value="Teen Darwaja">Teen Darwaja</option>
										<option value="Satellite">Satellite</option>
										<option value="Jivraj Park">Jivraj Park</option>
										<option value="Guptanagar">Guptanagar</option>
										<option value="Narol">Narol</option>
										<option value="Vatwa">Vatwa</option>
										<option value="Shahwadi">Shahwadi</option>
										<option value="Gurukul">Gurukul</option>
										<option value="Raipur">Raipur</option>
										<option value="Aastodia">Aastodia</option>
										<option value="Meghani nagar">Meghani nagar</option>
										<option value="Isanpur">Isanpur</option>
										<option value="Ghodasar">Ghodasar</option>
										<option value="Chandkheda">Chandkheda</option>
										<option value="Juhapura">Juhapura</option>
										<option value="Vastral">Vastral</option>
										<option value="Thaltej">Thaltej</option>
										<option value="Shilaj">Shilaj</option>
										<option value="Chandlodiya">Chandlodiya</option>
										<option value="Ghuma">Ghuma</option>

								</select></td>
				</tr>
			</table>
		</div>
		<br> <b><i>ADDRESS : </i></b><br><br>
					<div name="ADDRESS" style="margin-left: 50px; float: left;">
						<table>
							<tr>
								<td>Enter House-no and Society :</td>
								<td><input type="text" name="p_add_detail"
									value="${user.address.add_detail}" /></td>
							</tr>
							<tr>
								<td>Enter a Landmark of Address :</td>
								<td><input type="text" name="p_landmark"
									value="${user.address.landmark}" required pattern="[A-Za-z]{1,}" /></td>
							</tr>
							<tr>
								<td>Enter Area of Address :</td>
								<td><input type="text" name="p_add_area"
									value="${user.address.area}" required pattern="[A-Za-z]{1,}" /></td>
							</tr>
							<tr>
								<td>Enter City :</td>
								<td><input type="text" name="p_city"
									value="${user.address.city}" required pattern="[A-Za-z]{1,}" /></td>
							</tr>
							<tr>
								<td>Enter Pincode:</td>
								<td><input type="text" name="p_pincode"
									value="${user.address.pincode}" /></td>
							</tr>
						</table>

					</div>


					<div>
						<td><input type="submit" name="action" value="Update" /></td>
						<td><input type="reset" name="action" value="clear" /></td>
					</div>

					</table>
	</form>


</body>
</html>