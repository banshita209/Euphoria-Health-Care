<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<script type="text/javascript">
/* function getXMLHttpRequest() {
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
var name = document.getElementById("email");
var param = "Email=" + email.value + "&Name=" + name.value;
alert("Parameters : " + param);
xmlHttpRequest.send(param);
//  alert("sent!");
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
} */
</script>
<body>
	<jsp:include page="Header(common).jsp" />
	<div>
		<form action="AdminServlet" method="post">
			<table>
				<tr>

					<td>Enter email id</td>
					<td><input type="text" placeholder="enter email here" required
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" name="category" /></td>
				</tr>
				<tr>
					<td>Enter password</td>
					<td><input type="password" name="psswrd" required
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						placeholder="enter password here"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" /></td>
				</tr>
				
							<!-- <div>
						<table>
							<tr>
								<td>
									<a href="AjaxController">  <input type="button"
									name="sendOTP" onclick="makeRequest()" value="Send OTP" />
								</td>
							</tr>
							<tr>
								<td><input type="text" name="OTP" id="enterOTP"
									placeholder="Enter OTP" /></td>
									 
							</tr>
							
						</table>
						
					</div> -->
				<tr>
					<td><input type="submit" name="action" value="register" /></td>
					<td><input type="reset" name="cancel" value="Cancel" /></td>

				</tr>
			</table>
		</form>
	</div>
</body>
</html>