<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
	<%-- <jsp:include page="Header.jsp" /> --%>
	<form action="">
		<table>
			<c:forEach var="e" items="${es}">
			<tr>
				<td>${e.es_name}</td>
				<td>${e.es_mobile}</td>
			</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>