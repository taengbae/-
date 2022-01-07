﻿<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/style.css">
<%
String cartId = session.getId();
%>
<title>Taeng</title>
</head>
<body>
	<div class="main-container">
		<jsp:include page="top.jsp" />
		<jsp:include page="side.jsp" />
		<div class="side_right">
			<div class="right-inner">
				<div class="menu-bar">
					<p>장바구니</p>
				</div>
				<div class="container">
					<div class="row">
						<table width="100%">
							<tr>
								<td align="left"><a
									href="./deleteCart.jsp?cartId=<%=cartId%>"
									class="btn btn-danger">모두 삭제하기</a></td>
								<td align="right"><a
									href="./shippingInfo.jsp?cartId=<%=cartId%>"
									class="btn btn-success">주문하기</a></td>
							</tr>
						</table>
					</div>
					<div style="padding-top: 50px">
						<table class="table table-hover">
							<tr>
								<th>이미지</th>
								<th>상품정보</th>
								<th>판매가</th>
								<th>수량</th>
								<th>합계</th>
								<th>선택</th>
							</tr>
							<%
							int sum = 0;
							ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
							if (cartList == null)
								cartList = new ArrayList<Product>();

							for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
								Product product = cartList.get(i);
								int total = product.getUnitPrice() * product.getQuantity();
								sum = sum + total;
							%>
							<tr>
								<td class="thumb">
									<a href="./doll_detail.jsp?id=<%=product.getProductId()%>"> 
									<img src="./resources/images/<%=product.getFilename()%>">
								</a></td>
								<td><%=product.getPname()%></td>
								<td><%=product.getUnitPrice()%></td>
								<td><%=product.getQuantity()%></td>
								<td><%=total%></td>
								<td><a
									href="./removeCart.jsp?id=<%=product.getProductId()%>"
									class="badge badge-danger">삭제</a>
								</td>
							</tr>
							<%
							}
							%>
							<tr>
								<th></th>
								<th></th>
								<th>총액</th>
								<th><%=sum%></th>
								<th></th>
								<th></th>
							</tr>
						</table>
						<a href="./doll.jsp" class="btn btn-secondary"> 쇼핑 계속하기</a>
					</div>
					<hr>
				</div>
			</div>
		</div>
		<jsp:include page="bottom.jsp" />
	</div>
</body>
</html>