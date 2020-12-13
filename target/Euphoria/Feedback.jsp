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

	<form>
		<table align="center">
			<th align="center"></th>
			<tr>
				<td>Enter E-mail:</td>
				<td><input type="text" name="email" value="Enter Email"placeholder="enter email here" required
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"></td>
			</tr>
			<tr>
				<td>Enter Name:</td>
				<td><input type="text" name="name" required pattern="[A-Za-z]{1,}" value="Enter Name"></td>
			</tr>
			<tr>
				<td>Please Give Feedback:</td>
				<td><textarea name="comment" >Enter text here...</textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center">Would you like our Website?</td>
				
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="radio" name="feedback" value="yes">Yes
				<input type="radio" name="feedback" value="no">No</td>
			</tr>
			<tr>
				<td colspan="2" align="center"> <input type="button" name="submit" value="Submit Feedback">
					<input type="reset" name="clear" value="Clear"></td>
			</tr>
		</table>
	</form>
	
</body>
</html>