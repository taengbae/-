<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="../resources/css/style.css">
<title>Taeng</title>
</head>
<body>
	<div class="main-container">
		<jsp:include page="./top.jsp" />
		<jsp:include page="./side.jsp" />
		<div class="side_right">
			<div class="right-inner" align="center">
				<div class="menu-bar">
					<p>로그인 성공</p>
					<jsp:include page="../menu.jsp" />
				</div>
				<div class="container" align="center">
					<%
					String msg = request.getParameter("msg");

					if (msg != null) {
						if (msg.equals("0"))
							out.println(" <h2 class='alert alert-danger'>회원정보가 수정되었습니다.</h2>");
						else if (msg.equals("1"))
							out.println(" <h2 class='alert alert-danger'>회원가입을 축하드립니다.</h2>");
						else if (msg.equals("2")) {
							String loginId = (String) session.getAttribute("sessionId");
							out.println(" <h2 class='alert alert-danger'>" + loginId + "님 환영합니다</h2>");
						}
					} else {
						out.println("<h2 class='alert alert-danger'>회원정보가 삭제되었습니다.</h2>");
					}
					%>
					<hr>
					<a href="../doll.jsp" class="btn btn-secondary"> 인형 보러가기</a>
				</div>
			</div>
		</div>
		<jsp:include page="./bottom.jsp" />
	</div>
</body>
</html>