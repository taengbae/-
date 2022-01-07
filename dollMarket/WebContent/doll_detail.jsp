<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page errorPage ="exceptionNoProductId.jsp"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/style.css">
<%
	String cartId = session.getId();
%>
<title>Taeng</title>
<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {		
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<div class="main-container">
		<jsp:include page="top.jsp" />
		<jsp:include page="side.jsp" />
		<div class="side_right">
			<div class="row-1" align="center">
				<%@ include file="dbconn.jsp"%>
				<%
					String id = request.getParameter("id");
					String sql = "select * from product where p_id=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, id);
					rs = pstmt.executeQuery();
					while (rs.next()) {
		   		%>
				<div class ="col-md-5">
					<img src="./resources/images/<%=rs.getString("p_fileName")%>" style="width: 100%" />
				</div>
			<div class="col-md-6">
				<h2><%=rs.getString("p_name")%></h2>
				<hr>
				<p><%=rs.getString("p_description")%>
				<h4><b>판매가</b> <%=rs.getString("p_unitPrice")%>원</h4>
				<hr>
				<p><form name="addForm" action="./addCart.jsp?id=<%=rs.getString("p_id")%>" method="post">
					<a href="#" class="btn btn-info" onclick="addToCart()"> 장바구니 담기 &raquo;</a> 
					<a href="./cart.jsp" class="btn btn-warning" > 장바구니 보기 &raquo;</a>
					<a href="./doll.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
				</form>
			</div>
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
		<jsp:include page="bottom.jsp" />
	</div>
</body>
</html>