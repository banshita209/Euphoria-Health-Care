<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
<jsp:include page="Header(pharmacist).jsp" />
	<h1 align="center" style="font-size: 25; font-weight: 900;">Profile</h1>
	<form action="PharmacyServlet" method="post">
		<table align="center">
			<tr>
				<td>Name</td>
			
				<td><input type="text" name="name" /></td>

			</tr>
			<tr>
				<td>Mobile Number</td>
				
				<td><input type="text" name="mobile" /></td>
			</tr>
			<tr>
				<td>House No and Society</td>
				
				<td><input type="text" name="add_detail"/></td>
			</tr>
			<tr>
				<td>Landmark of Address</td>
			
				<td><input type="text" name="landmark"/></td>
			</tr>
			<tr>
				<td>Area of Address</td>
		
				<td><input type="text" name="area"/></td>
			</tr>
			<tr>
				<td>city</td>

				<td><input type="text" name="city"/></td>
			</tr>
			<tr>
				<td>pin-code</td>
				<td><input type="text" name="pin_code" required/></td>
			</tr>
			<tr>
				<td><input type="submit" name="action" value="Submit_Pharmacy" /></td>
				<td><input type="reset" name="action" value="clear"></input></td>
			</tr>
			</table>
			</form>
</body>
</html>