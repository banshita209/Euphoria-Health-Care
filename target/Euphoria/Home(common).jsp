<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link rel="stylesheet" type="text/css" href="title.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.4.2/css/all.css"
	integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns"
	crossorigin="anonymous" />
<link href="https://fonts.googleapis.com/css?family=Roboto"
	rel="stylesheet" />
<link rel="stylesheet"
	href="http://l-lin.github.io/font-awesome-animation/dist/font-awesome-animation.min.css" />
<title>Homepage</title>
</head>
<body>
	<%
		String action = request.getParameter("action");
		System.out.println("home : action=" + action);
	%>

	<jsp:include page="Header(common).jsp" />
	
	<!-- div class='csslider1 autoplay '>
		<input name="cs_anchor1" id='cs_slide1_0' type="radio"
			class='cs_anchor slide'> <input name="cs_anchor1"
			id='cs_slide1_1' type="radio" class='cs_anchor slide' /><input
			name="cs_anchor1" id='cs_slide1_2' type="radio"
			class='cs_anchor slide' /> <input name="cs_anchor1" id='cs_play1'
			type="radio" class='cs_anchor' checked /> <input name="cs_anchor1"
			id='cs_pause1' type="radio" class='cs_anchor' />
		<ul>
			<div
				style="width: 100%; visibility: hidden; font-size: 0px; line-height: 0;">
				<img src="http://cssslider.com/sliders/pen/images/buns.jpg"
					style="width: 100%;" />
			</div>
			<li class='num0 img'><a href="http://cssslider.com" target=""><img
					src='http://cssslider.com/sliders/pen/images/buns.jpg' alt='Buns'
					title='Buns' /> </a></li>
			<li class='num1 img'><a href="http://cssslider.com" target=""><img
					src='http://cssslider.com/sliders/pen/images/buns.jpg'
					alt='Croissant' title='Croissant' /> </a></li>
			<li class='num2 img'><a href="http://cssslider.com" target=""><img
					src='http://cssslider.com/sliders/pen/images/buns.jpg'
					alt='Lemon pie' title='Lemon pie' /> </a></li>

		</ul>
		<div class='cs_description'>
			<label class='num0'> <span class="cs_title"><span
					class="cs_wrapper">Buns</span></span>
			</label> <label class='num1'> <span class="cs_title"><span
					class="cs_wrapper">Croissant</span></span>
			</label> <label class='num2'> <span class="cs_title"><span
					class="cs_wrapper">Lemon pie</span></span>
			</label>
		</div>

		<div class='cs_arrowprev'>

			<label class='num0' for='cs_slide1_0'></label> <label class='num1'
				for='cs_slide1_1'></label> <label class='num2' for='cs_slide1_2'></label>
		</div>
		<div class='cs_arrownext'>
			<label class='num0' for='cs_slide1_0'></label> <label class='num1'
				for='cs_slide1_1'></label> <label class='num2' for='cs_slide1_2'></label>
		</div>

		<div class='cs_bullets'>
			<label class='num0' for='cs_slide1_0'> <span class='cs_point'></span>
				<span class='cs_thumb'><img
					src='http://cssslider.com/sliders/pen/tooltips/buns.jpg' alt='Buns'
					title='Buns' /></span>
			</label> <label class='num1' for='cs_slide1_1'> <span
				class='cs_point'></span> <span class='cs_thumb'><img
					src='http://cssslider.com/sliders/pen/tooltips/croissant.jpg'
					alt='Croissant' title='Croissant' /></span>
			</label> <label class='num2' for='cs_slide1_2'> <span
				class='cs_point'></span> <span class='cs_thumb'><img
					src='http://cssslider.com/sliders/pen/tooltips/lemonpie.jpg'
					alt='Lemon pie' title='Lemon pie' /></span>
			</label>
		</div>
	</div>
	End cssSlider.com -->
</body>
</html>