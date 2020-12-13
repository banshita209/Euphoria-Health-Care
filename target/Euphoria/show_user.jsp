<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

<title>Insert title here</title>
</head>
<body>


		<table align="center" cellpadding="20px" cellspacing="20px">
			<tr>
				<td><a href="AdminServlet?action=allpatient"><i class="fa fa-heartbeat"
						style="font-size: 100px; color: #FB054B;"></i></a><br />Patient</td>
				<td><a href="AdminServlet?action=alldoctorn"><i class="fa fa-user-md"
						style="font-size: 100px; color: #FB054B"></i></a><br />Doctor</td>
			</tr>
			<tr>
				<td><a href="AdminServlet?action=allpharmacist"><i
						class="fa fa-hospital-o" style="font-size: 100px; color: #FB054B"></i></a><br />Pharmacist
				</td>
				<td><a href="AdminServlet?action=allmr"><i class="fa fa-medkit"
						style="font-size: 100px; color: #FB054B"></i></a><br />Medical
					Representative</td>
			</tr>
		</table>
	
</body>
</html>