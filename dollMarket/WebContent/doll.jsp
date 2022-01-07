<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>

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
					<p>Doll</p>
					<ul class="menu-categoty">
						<li><a href="./doll.jsp">전체인형</a></li>
						<li><a href="./genDoll.jsp">일반인형</a></li>
						<li><a href="./oldDoll.jsp">중고인형</a></li>
					</ul>
				</div>
				<div class="container">
					<div class="row" align="center">
					<%@ include file="dbconn.jsp" %>
						<%
							String sql = "select * from product";
							pstmt = conn.prepareStatement(sql);
							rs = pstmt.executeQuery();
							while (rs.next()) {
						%>
						<div class="col-md-7">
							<div class="img">
								<a href="./doll_detail.jsp?id=<%=rs.getString("p_id")%>">
									<img src="./resources/images/<%=rs.getString("p_fileName")%>"
									style="width: 100%">
								</a>
							</div>
								<h3><%=rs.getString("p_name")%></h3>
								<p>
									₩ <%=rs.getString("p_unitPrice")%>원
								<p>
						</div>
						<%
							}
							if (rs != null)
								rs.close();
				 			if (pstmt != null)
				 				pstmt.close();
				 			if (conn != null)
								conn.close();
						%>
					</div>
					<hr>
				</div>
			</div>
		</div>
		<jsp:include page="bottom.jsp" />
	</div>
</body>
</html>