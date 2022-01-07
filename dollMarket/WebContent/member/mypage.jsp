<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<html>
<head>
<link rel="stylesheet" href="../resources/css/style.css">
<%
String sessionId = (String) session.getAttribute("sessionId");
%>
<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/dollmarketdb??autoReconnect=true&verifyServerCertificate=false&useSSL=true"
	driver="com.mysql.jdbc.Driver" user="root" password="1234" />

<sql:query dataSource="${dataSource}" var="resultSet">
   SELECT * FROM MEMBER WHERE ID=?
   <sql:param value="<%=sessionId%>" />
</sql:query>

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
					<jsp:include page="../menu.jsp" />
				</div>

				<c:forEach var="row" items="${resultSet.rows}">
					<c:set var="mail" value="${row.mail}" />
					<c:set var="mail1" value="${mail.split('@')[0]}" />
					<c:set var="mail2" value="${mail.split('@')[1]}" />

					<div class="container">
						<form name="newMember" class="form-horizontal"
							action="processUpdateMember.jsp" method="post"
							onsubmit="return checkForm()">
							<div class="form-group1  row">
								<label class="col-sm-2 ">아이디</label>
									<c:out value='${row.id }'/>
							</div>
							<div class="form-group1 row">
								<label class="col-sm-2">비밀번호</label>
									<c:out value='${row.password }'/>
							</div>
							<div class="form-group1 row">
								<label class="col-sm-2">성명</label>
									<c:out value='${row.name }'/>
							</div>
							<div class="form-group1 row ">
								<label class="col-sm-2">이메일</label>
									<c:out value='${row.email }'/>
							</div>
							<div class="form-group1 row">
								<label class="col-sm-2">전화번호</label>
									<c:out value='${row.phone }'/>
							</div>
							<div class="form-group1 row">
								<label class="col-sm-2 ">주소</label>
									<c:out value='${row.address }'/>
							</div>
							<div class="form-group1 row">
								<div class="col-sm-offset-2 col-sm-4 ">
									<a href="deleteMember.jsp" class="btn btn-primary1">회원탈퇴</a>
								</div>
							</div>
						</form>
					</div>
				</c:forEach>
			</div>
		</div>
	<jsp:include page="bottom.jsp" />
</div>
</body>
</html>