<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/style_slide.css">
<title>Taeng</title>
</head>
<body>
	<div class="main-container">
		<jsp:include page="top.jsp" />
		<jsp:include page="side.jsp" />
		<div class="side_right">
			<div class="right_center">
				<div class="menu-bar">
					<p>Hospital</p>
				</div>
				<div class="right-center">
				<div class="slider">
					<input type="radio" name="slide" id="slide1" checked> 
					<input type="radio" name="slide" id="slide2"> 
					<input type="radio" name="slide" id="slide3"> <input type="radio" name="slide" id="slide4">
					<ul id="imgholder" class="imgs">
						<li><img src="./resources/images/3.png"></li>
						<li><img src="./resources/images/2.jpg"></li>
					</ul>
					<div class="bullets">
						<label for="slide1">&nbsp;</label> 
						<label for="slide2">&nbsp;</label>
					</div>
				</div>
				</div>
			</div>
		</div>
		<jsp:include page="bottom.jsp" />
	</div>
</body>
</html>