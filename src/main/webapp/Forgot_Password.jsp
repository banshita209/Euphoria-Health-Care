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
<form action="CommonServlet" method="post">
	<table>		
							<tr>
								<td>Enter E-mail :</td>
								<td><input type="text" name="email" value="<% request.getParameter("email");%>"/>
									<input type="hidden" placeholder="enter email here" required 
									pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"name="category" value="${param.category}"/></td>
							</tr>
							<tr>
								<td><input type="submit" name="action" value="Reset" /></td>
								<td><input type="reset" name="Clear" value="Clear" /></td>
							</tr>
							<tr>
								<td colspan="2">
									<c:if test="${param.message ne null or not empty param.message}">
										${param.message}
									</c:if>
								</td>
							</tr>
</table>	
</form>
</body>
</html>