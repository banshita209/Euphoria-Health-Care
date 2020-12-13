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
					alert("res:" + xmlHttpRequest.responseText);
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
	<jsp:include page="Header(common).jsp" />
	<c:if test="${param.message eq 'choose_new_email' }">
		<%
			System.out.println("in the condition ");
		%>
		<script type="text/javascript">
			popup();
		</script>

	</c:if>
	<center>
		<br /> <br /> <br />
		<div class="body">
			<div>
				<h1>Registration form</h1>
				<form action="DoctorServlet?action=registration" method="post">
					<div
						style="padding: 5px 5px 5px 5px; margin: 5px 5px 5px 5px; border-radius: 5px; width: 40%;">
						<table>
							<tr>
								<td>Enter Name :</td>
								<td><input type="text" name="name" id="name"
									placeholder="enter name here" required pattern="[A-Za-z]{1,}"
									title="only string allowed" /></td>
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
									title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" /></td>
								<td><input type="checkbox" onclick="return myFunction()">Show
										Password</td>

							</tr>
							<tr>
								<td>Choose Gender :</td>
								<td><input type="radio" name="gender" value="Female" />Female<br />
									<input type="radio" name="gender" value="Male" />Male<br /> <input
									type="radio" name="gender" value="Transgender" />Transgender</td>
							</tr>
							<tr>
								<td>Enter Date of Birth:</td>
								<td><input type="date" name="dob" placeholder="yyyy-mm-dd"
									required
									pattern=" ^(19|20)\d\d([- /.])(0[1-9]|1[012])\2(0[1-9]|[12][0-9]|3[01])$" /></td>
							</tr>
							<tr>
								<td>Enter Mobile Number :</td>
								<td><input type="text" name="mobile" required
									pattern="[0-9]{10}" placeholder="enter mob here" /></td>
							</tr>
							<tr>
								<td>Enter Qualification:</td>
								<td><input type="text" name="qualification" /></td>
							</tr>
						</table>
					</div>
					<br />
					<div>
						<b><i>PERSONAL ADDRESS : </i></b> <br /> <br />
						<table>
							<tr>
								<td>Enter House-no and Society :</td>
								<td><input type="text" name="p_add_detail" /></td>
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
									placeholder="enter city here" required pattern="[A-Za-z]{1,}"
									title="only string allowed" /></td>
							</tr>
							<tr>
								<td>Enter Pincode:</td>
								<td><input type="text" name="p_pincode" pattern="[0-9]{6}"
									title="only number allowed" /></td>
							</tr>
						</table>

					</div>

					<div>
						<b><i>CLINIC ADDRESS</i></b> <br /> <br />
						<table>
							<tr>
								<td>Enter Clinic Name and Address :</td>
								<td><input type="text" name="c_add_detail" /></td>
							</tr>
							<tr>
								<td>Enter a Landmark of Clinic Address :</td>
								<td><input type="text" name="c_landmark"
									placeholder="enter landmark here" /></td>
							</tr>
							<tr>
								<td>Enter Area of Clinic Address :</td>
								<td><input type="text" name="c_add_area"
									placeholder="enter area of address here" required
									pattern="[A-Za-z]{1,}" title="only string allowed" /></td>
							</tr>
							<tr>
								<td>Enter City :</td>
								<td><input type="text" name="c_city"
									placeholder="enter city here" required pattern="[A-Za-z]{1,}"
									title="only string allowed" /></td>

							</tr>
							<tr>
								<td>Enter Pincode:</td>
								<td><input type="text" name="c_pincode" pattern="[0-9]{6}"
									title="only number allowed" /></td>
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
					<div>
						<table>
							<tr>
								<td><input type="submit" name="action" value="Register" /></td>
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