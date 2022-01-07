<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
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
					<p>LOG-IN</p>
				</div>
				<div class="container-5" align="center">
					<div class="col-md-4">
						<h2>로그인</h2>
						<%
						String error = request.getParameter("error");
						if (error != null) {
							out.println("<div class='alert alert-danger'>");
							out.println("아이디와 비밀번호를 확인해 주세요");
							out.println("</div>");
						}
						%>
						<form class="form-signin" action="processLoginMember.jsp" method="post">
							<div class="form-group">
								<label for="inputUserName" class="sr-only"></label> <input
									type="text" class="form-control" placeholder="ID" name='id'
									required autofocus>
							</div>
							<div class="form-group">
								<label for="inputPassword" class="sr-only"></label> <input
									type="password" class="form-control" placeholder="Password"
									name='password' required>
							</div>
							<button class="btn" type="submit">LOG-IN</button>
						</form>
						<button class="btn" onclick="location.href='./addMember.jsp';">REGISTER</button>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="./bottom.jsp" />
	</div>
</body>
</html>