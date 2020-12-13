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
	<jsp:include page="Header(common).jsp" />
	<div>
		<form action="CommonServlet" method="post">
			<table>
				<tr>

					<td>Enter email id</td>
					<td><input type="text" name="email"  />
					<%-- <%session.setAttribute("email", request.getParameter("email"));
					System.out.println(request.getParameter("email"));%> --%>
					 <input type="hidden"
						name="category" value="${param.category}" /></td>
				</tr>
				<tr>
					<td>Enter password</td>
					<td><input type="password" name="psswrd" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
						placeholder="enter password here"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" /></td>
				</tr>
				<tr>
					<td><input type="submit" name="action" value="Login" /></td>
					<td><input type="reset" name="cancel" value="Cancel" /></td>
					<td><a href="Forgot_Password.jsp?category=${param.category}">Forgot Password</a></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>