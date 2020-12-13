<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link rel="stylesheet" type="text/css" href="title.css" />
<title>Register yourself</title>
<script type="text/javascript">
	function myFunction() {

		var x = document.getElementById("myInput");
		if (x.type === "password") {
			x.type = "text";
		} else {
			x.type = "password";
		}
	}
	
	function popup() {
		alert("use another email id")
	}
	
	function getXMLHttpRequest() {
		var xmlHttpReq;
		// to create XMLHttpRequest object in non-Microsoft browsers
		if (window.XMLHttpRequest) {
			xmlHttpReq = new XMLHttpRequest();
		} else if (window.ActiveXObject) {
			try {
				//to create XMLHttpRequest object in later versions of Internet Explorer
				xmlHttpReq = new ActiveXObject("Msxml2.XMLHTTP");
			} catch (exp1) {
				try {
					//to create XMLHttpRequest object in later versions of Internet Explorer
					xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
				} catch (exp2) {
					//xmlHttpReq = false;
					// alert("Exception in getXMLHttpRequest()!");
				}
			}
		}
		return xmlHttpReq;
	}

	/*
	 * AJAX call starts with this function
	 */
	function makeRequest() {
		var xmlHttpRequest = getXMLHttpRequest();
		//  alert ("xmlHttpRequest=" + xmlHttpRequest);
		xmlHttpRequest.onreadystatechange = getReadyStateHandler(xmlHttpRequest);
		xmlHttpRequest.open("POST", "AjaxController", true);
		xmlHttpRequest.setRequestHeader("Content-Type",
				"application/x-www-form-urlencoded");
		//  alert("inside makeRequest()!");
		// var val2=document.getElementById("ajaxval2");
		/*  var val = document.getElementById("ajaxval");
		 var param = "ajaxval="+val.value/* +"&ajaxval2="+val2.value */
		alert("before get values");
		var email = document.getElementById("email");
		var name = document.getElementById("name");
		var param = "Email=" + email.value + "&Name=" + name.value;
		alert("Parameters : " + param);
		xmlHttpRequest.send(param);
		 alert("sent!");
	}

	/*
	 * Returns a function that waits for the state change in XMLHttpRequest
	 */
	function getReadyStateHandler(xmlHttpRequest) {
		// an anonynous function returned
		// it listens to the XMLHttpRequest instance
		//alert("Ready state");
		return function() {
			if (xmlHttpRequest.readyState == 4) {
				if (xmlHttpRequest.status == 200) {
					alert("res:"+xmlHttpRequest.responseText);
					document.getElementById("enterOTP").value = xmlHttpRequest.responseText;
				} else {
					alert("Http error " + xmlHttpRequest.status + ":"
							+ xmlHttpRequest.statusText);
				}
			}
		};
	}
</script>
</head>
<body>
	<%
		String user = request.getParameter("user");
	%>
	<jsp:include page="Header(common).jsp" />

	<c:if test="${param.message eq 'choose_new_email' }">
		<% System.out.println("in the condition "); %>
	 <script type="text/javascript"> popup(); </script>
		
	</c:if>
	<center>
		<br /> <br /> <br />
		<div class="body" style="margin: 0px;">
			<div>
							<h1>Registration form</h1>

				<form action="PatientServlet?action=registration" method="post">

					<div>
						<table>
							<tr>
								<td>Enter Name :</td>
								<td><input type="text" name="name" required pattern="[A-Za-z]{1,}" id="name"
									placeholder="enter name here" /></td>
							</tr>
							<tr>
								<td>Enter E-mail :</td>
								<td><input type="text" name="email" id="email"
									placeholder="enter email here" required
									pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" /></td>
							</tr>
							<tr>
								<td>Enter Password :</td>
								<td><input type="password" name="password" id="myInput"
									pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required
						placeholder="enter new password here"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"  /></td>
								<td><input id="checkpass" type="checkbox"
									onclick="myFunction()">Show Password</td>

							</tr>
							<tr>
								<td>Choose Gender :</td>
								<td><input type="radio" name="gender" value="Female" />Female<br />
									<input type="radio" name="gender" value="Male" />Male<br /> <input
									type="radio" name="gender" value="Transgender" />Transgender</td>
							</tr>
							<tr>
								<td>Enter Date of Birth:</td>
								<td><input type="date" name="dob" required pattern=" ^(19|20)\d\d([- /.])(0[1-9]|1[012])\2(0[1-9]|[12][0-9]|3[01])$" placeholder="yyyy-mm-dd" /></td>
								
							</tr>
							<tr>
								<td>Enter Mobile Number :</td>
								<td><input type="text" name="mobile"
									placeholder="enter mob here" required pattern="[0-9]{10}" 
									title="only 10 digit allowed" /></td>
							</tr>

						</table>
					</div>
					<div>
						<b><i>PERSONAL ADDRESS : </i></b> <br /> <br />
						<table align="center">
							<tr>
								<td>Enter House-no and Society :</td>
								<td><input type="text" name="p_add_detail" required /></td>
							</tr>
							<tr>
								<td>Enter a Landmark of Address :</td>
								<td><input type="text" name="p_landmark"
									placeholder="enter landmark here" required
									pattern="[A-Za-z]{1,}" title="only string allowed" /></td>
							</tr>
							<tr>
								<td>Enter Area of Address :</td>
								<td><input type="text" name="p_add_area"
									placeholder="enter area of address here" required
									pattern="[A-Za-z]{1,}" title="only string allowed" /></td>
							</tr>
							<tr>
								<td>Enter City :</td>
								<td><input type="text" name="p_city"
									placeholder="enter city here" required pattern="[A-Za-z]{1,}" required
									title="only string allowed" /></td>
							</tr>
							<tr>
								<td>Enter Pincode:</td>
								<td><input type="text" name="p_pincode" /></td>
							</tr>
						</table>
					</div>
					<div>
						<table>
							<tr>
								<td>
									<!-- <a href="AjaxController">  --> <input type="button"
									name="sendOTP" onclick="makeRequest()" value="Send OTP" />
								</td>
							</tr>
							<tr>
								<td><input type="text" name="OTP" id="enterOTP"
									placeholder="Enter OTP" /></td>
									 
							</tr>
							
						</table>
						
					</div>
					<table align="center">
						<tr>

							<td><input type="submit" name="action" value="Register" /></td>
							<td><input type="reset" name="action" value="Clear" /></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</center>
</body>
</html>