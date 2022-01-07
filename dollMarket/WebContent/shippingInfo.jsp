<%@ page language="java" contentType="text/html; charset=utf-8"%>
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
					<p>주문하기</p>
				</div>
				<div class="container">
					<div style="padding-top: 50px">
						<table class="table table-hover">
							<tr>
								<th>이미지</th>
								<th>상품정보</th>
								<th>판매가</th>
								<th>수량</th>
								<th>합계</th>
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
								<td class="thumb"><a
									href="./doll_detail.jsp?id=<%=product.getProductId()%>"> <img
										src="./resources/images/<%=product.getFilename()%>">
								</a></td>
								<td><%=product.getPname()%></td>
								<td><%=product.getUnitPrice()%></td>
								<td><%=product.getQuantity()%></td>
								<td><%=total%></td>
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
							</tr>
						</table>
						<a href="./doll.jsp" class="btn btn-secondary"> 쇼핑 계속하기</a>
					</div>
					<hr>
					<div class="container-3">
						<form action="./processShippingInfo.jsp" class="form-horizontal" method="post">
							<input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>" />
							<div class="orderArea">
								<div class="title">
									<h3>배송 정보</h3>
									
									<div class="ec-base-table typeWrite">
										<table border="1" summary="">
											<colgroup>
												<col style="width: 139px;">
												<col style="width: auto;">
											</colgroup>
											<tbody class="address_form  ">
												<tr>
													<th scope="row">받는 사람</th>
													<td><input name="name" type="text"
														class="inputTypeText" size="5" /></td>
												</tr>
												<tr class="">
													<th scope="row">주소</th>
													<td><input name="adress_zip" type="text"
														class="inputTypeText" maxlength="5" size="5" /> 우편번호<br>
														<input name="adress_add" type="text" class="inputTypeText"
														size="40" /> 기본주소<br></td>
												</tr>
												<tr class="">
													<th scope="row">휴대전화</th>
													<td><input name="pnum" type="text"
														class="inputTypeText" maxlength="11" size="11"
														placeholder="01012341234" /></td>
												</tr>
												<tr class="">
													<th scope="row">이메일</th>
													<td><input name="email" type="text"
														class="inputTypeText" size="40"
														placeholder="taeng@gmail.com" /></td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="form-group-cart row">
										<div class="col-cart">
											<a href="./cart.jsp?cartId=<%=request.getParameter("cartId")%>" class="btn btn-secondary" role="button"> 이전 </a> 
											<input type="submit" class="btn btn-secondary" style="font-weight: 700;" value="등록" /> 
											<a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="bottom.jsp" />
	</div>
</body>
</html>