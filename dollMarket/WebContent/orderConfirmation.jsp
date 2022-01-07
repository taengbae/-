<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%
	request.setCharacterEncoding("UTF-8");

	String cartId = session.getId();

	String shipping_cartId = "";
	String shipping_name = "";
	String shipping_adress_zip = "";
	String shipping_adress_add = "";
	String shipping_pnum = "";
	String shipping_email = "";
	
	Cookie[] cookies = request.getCookies();

	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if (n.equals("Shipping_cartId"))
				shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_name"))
				shipping_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_adress_zip"))
				shipping_adress_zip = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_adress_add"))
				shipping_adress_add = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_pnum"))
				shipping_pnum = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_email"))
				shipping_email = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		}
	}
%>
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
			<div class="right_center">
				<div class="menu-bar">
					<p>주문완료</p>
				</div>
				<div class="container">
					<div class="row-shipp">
						<div class="col-4" align="left">
						<strong>배송 주소</strong> <br><br> 이름 : <% out.println(shipping_name); %><br> 
								주소 : <%	out.println(shipping_adress_add);%><br>
						</div>
					</div>
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
						<a href="./main.jsp" class="btn btn-secondary"> 홈으로</a>
					</div>
			</div>
		</div>
		<jsp:include page="bottom.jsp" />
	</div>
</body>
</html>
