<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.model.HealthTracker"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Graph Implementation</title>



<script type="text/javascript">
alert("in script");
<%HttpSession ss = request.getSession();
			System.out.println("graph data in jsp : " + ss.getAttribute("gHealthTracker"));
			List<HealthTracker> hdList = (List<HealthTracker>) ss.getAttribute("gHealthTracker");
			HealthTracker hd = null;
			Iterator<HealthTracker> it = hdList.iterator();
			StringBuffer b_g = new StringBuffer();
			StringBuffer b_p = new StringBuffer();
			StringBuffer cdate = new StringBuffer();
			while (it.hasNext()) {
				hd = (HealthTracker) it.next();
				/* System.out.println("jsp Id : " + c.getId() + ", jsp Name : " + c.getName() + ", jsp Age : " + c.getAge() + ", jsp Did : " + c.getDid()
				+ ", jsp Doj : " + c.getDoj() + ", jsp Salary : " + c.getSalary()); */
				b_g.append(hd.getBlood_glucose());
				b_p.append(hd.getBlood_pressure());
				cdate.append(hd.getCreated_date());
				System.out.println("latest b_g : " + b_g);
				System.out.println("latest b_p : " + b_p);
				System.out.println("latest cdate : " + cdate);%>
	
	/* for(var i=0;i<5;i++)
	{ */
		<%-- var ndate = "<%=ndate%>";
		document.write(ndate); --%>
		/* document.write(console.log(ndate.slice(1,5))); */
		/* var res = ndate.substring(1,4); */

	/* } */
	
	<%-- var ndate = "<%=ndate%>"; --%>
	/* <c:forEach items="${gCust}" var="gc" varStatus="loop"> */
		<%-- ndate.push(<%=ndate%>); --%>
		<%-- ndate.setDate(<%=ndate%>); --%>
	/* </c:forEach> */
	<%}
			/* System.out.println("latest ndate2 : "+stringBuffer.substring(0, 10)); */%>
var b_g = "<%=b_g%>";
var b_p = "<%=b_p%>";
var cdate = "<%=cdate%>";
alert(b_g);
alert(b_p);
alert(cdate);
<%-- var nage = "<%=nage%>"; --%>
<%System.out.println("above var declartion");%>
document.write(b_g);
document.write(b_p);
document.write(cdate);

/* alert("new date : "+ndate[0]);
alert("new date : "+ndate[1]);
alert("new date : "+ndate[2]);
alert("new date : "+ndate[3]);
alert("new date : "+ndate);*/
/* document.write(ndate); */
/*document.write(ndate[1]);
document.write(ndate[2]);
document.write(ndate[3]);
document.write(ndate[4]); */

/* var i = 0;
var data = []; */
/* var bg = [];
var bp = [];
<c:forEach items="${rhealthTracker}" var="ghd" varStatus="loop">
	/* data = ${gc.doj}; */
    /* data.push(${gc.doj}); */
   /*  bg.push(${ghd.blood_glucose});
    bp.push(${ghd.blood_pressure});
</c:forEach> */ 
/* alert("doj : "+data); */
/* alert("age : "+age);
alert("salary : "+sal); */

/* for (i=0;i<data.length;i++)
{
	document.write("The number is " + i)
	document.write("<br />")
} */
 window.onload = function () {
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title:{
		text: "My Health Condition"
	},	
	axisY: {
		title: "Pressure",
		titleFontColor: "#4F81BC",
		lineColor: "#4F81BC",
		labelFontColor: "#4F81BC",
		tickColor: "#4F81BC"
	},
	axisY2: {
		title: "Volume",
		titleFontColor: "#C0504E",
		lineColor: "#C0504E",
		labelFontColor: "#C0504E",
		tickColor: "#C0504E"
	},	
	toolTip: {
		shared: true
	},
	legend: {
		cursor:"pointer",
		itemclick: toggleDataSeries
	},
	data: [{
		type: "column",
		name: "Blood Pressure (mmHg)",
		legendText: "Blood Pressure",
		showInLegend: true,
		dataPoints:[
			{ label: cdate.substring(0, 10), y: b_p.substring[0,5] },
			{ label: cdate.substring(10, 20), y: b_p.substring.[6,10] },
			/* { label: cdate.substring(20, 30), y: b_p.substring[6,9] },
			{ label: cdate.substring(30, 40), y: b_p.substring[9,12] },
			{ label: cdate.substring(40, 50), y: b_p.substring[12,15] } */
		]
	},
	{
		type: "column",	
		name: "Blood Volume (ml/kg)",
		legendText: "Blood glucose",
		axisYType: "secondary",
		showInLegend: true,
		dataPoints:[
 			{ label: cdate.substring(0, 10), y: b_g.substring[0,5] },
			{ label: cdate.substring(10, 20), y: b_g.substring[6,10] },
			/* { label: cdate.substring(20, 30), y: b_g.substring[6,9] },
			{ label: cdate.substring(30, 40), y: b_g.substring[9,12] },
			{ label: cdate.substring(40, 50), y: b_g.substring[12,15] }*/
		]
	}]
});
chart.render(); 

function toggleDataSeries(e) {
	if (typeof(e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
		e.dataSeries.visible = false;
	}
	else {
		e.dataSeries.visible = true;
	}
	chart.render();
}

} 
</script>


</head>
<body>

	<div id="chartContainer" style="height: 300px; width: 100%;"></div>
	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	<%-- <table>
		
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>DOJ</th>
			<th>AGE</th>
			<th>SALARY</th>
			<th>DID</th>
		</tr>
	
		<c:forEach items="${gCust}" var="gc">
		<tr>
			<td>${gc.id}</td>
			<td>${gc.name}</td>
			<td>${gc.doj}</td>
			<td>${gc.age}</td>
			<td>${gc.salary}</td>
			<td>${gc.did}</td>
		</tr>
		</c:forEach>
	</table> --%>
</body>
</html>