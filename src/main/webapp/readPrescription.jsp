<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Prescription Page</title>
</head>
<body>
<form action="PharmacistServlet">
		<img src="prescription/${param.pr_id}.jpg" height="500px" width="500px"/></br> <br /> 
		<% long pr_id=Long.parseLong(request.getParameter("pr_id")); %>
				<input type="hidden" name="pr_id" value="${param.pr_id}"/>
		<%long patient_id=Long.parseLong(request.getParameter("patient_id"));  %>
				<input type="hidden" name="patient_id" value="${param.patient_id}"/>
		Enter Amount:<input type="text" name="amount" required /><br />
			 <a href="PharmacistServlet?pr_id=${param.pr_id}&&action=denny">
			 <input type="button" value="Denny"/></a>&nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; 
		 <input type="submit" name="action" value="accept" /> 
</form>
</body>
</html>