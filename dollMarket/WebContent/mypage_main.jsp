<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/style.css">
<title>Taeng</title>
</head>
<body>
	<div class="main-container">
		<jsp:include page="top.jsp" />
		<jsp:include page="side.jsp" />
		<div class="side_right">
			<div class="right-inner">
			<div class="menu-bar">
					<p>My Page</p>
					<ul class="menu-categoty">
						<li><a href="member/loginMember.jsp">로그인</a></li>
						<li><a href="member/addMember.jsp">회원가입</a></li>
					</ul>
				</div>
			<img src="./resources/images/1.jpg" alt="마이페이지이미지">
			</div>
		</div>
		<jsp:include page="bottom.jsp" />
	</div>
</body>
</html>