<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/style.css">
<script type ="text/javascript" src ="./resources/js/validation.js"></script>
<title>Taeng</title>
</head>
<body>
	<fmt:setLocale value='<%= request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message" > 
	<div class="main-container">
		<jsp:include page="top.jsp" />
		<jsp:include page="side.jsp" />
		<div class="side_right">
		<div class="right-inner">
			<div class="menu-bar">
				<p>My Page</p>
				<ul class="menu-categoty">
					<li>
						<a href="member/mypage.jsp">마이페이지</a>
					</li>
					<li>
						<a href="./addProduct.jsp">상품등록</a>
					</li>
				</ul>
			</div>
			<div class="text-right"> 
				<a href="?language=ko" >Korean</a>|<a href="?language=en" >English</a>
			</div>	
			<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post" enctype ="multipart/form-data">
			<div class="form-group2 row">
				<label class="col-sm-2"><fmt:message key="productId" /></label>
				<div class="col-sm-3">
					<input type="text" id="productId" name="productId" class="form-control" placeholder="ex) P0001">
				</div>
			</div>
			<div class="form-group2 row">
				<label class="col-sm-2"><fmt:message key="pname" /></label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control" placeholder="ex) 폼폼푸린 크리스마스 인형">
				</div>
			</div>
			<div class="form-group2 row">
				<label class="col-sm-2"><fmt:message key="unitPrice"/></label>
				<div class="col-sm-3">
					<input type="text" id="unitPrice" name="unitPrice" class="form-control">
				</div>
			</div>
			<div class="form-group2 row">
				<label class="col-sm-2"><fmt:message key="description" /></label>
				<div class="col-sm-3">
					<textarea name="description" cols="30" rows="2"
						class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group2 row">
				<label class="col-sm-2"><fmt:message key="manufacturer"/></label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer" class="form-control" placeholder="ex) Sanrio">
				</div>
			</div>
			<div class="form-group2 row">
				<label class="col-sm-2"><fmt:message key="category" /></label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control" placeholder="ex) doll, pouch...">
				</div>
			</div>
			<div class="form-group2 row">
				<label class="col-sm-2"><fmt:message key="unitsInStock" /></label>
				<div class="col-sm-3">
					<input type="text" id="unitsInStock" name="unitsInStock" class="form-control" >
				</div>
			</div>
			<div class="form-group2 row">
				<label class="col-sm-2"><fmt:message key="condition" /></label>
				<div class="col-sm-3">
					<input type="radio" name="condition" value="New" ><fmt:message key="condition_New" /> 
					<input type="radio" name="condition" value="Old" ><fmt:message key="condition_Old" />  
				</div>
			</div>
			<div class ="form-group2 row">
			<label class ="col-sm-2"><fmt:message key="productImage" /></label>
				<div class ="col-sm-3">
 					<input type="file" name="productImage" class="form-control">
 				</div>
 			</div>
			<div class="form-group2 row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type ="button" class="btn1 btn-primary1" value="<fmt:message key="button" />" onclick ="CheckAddProduct()">
				</div>
			</div>
		</form>
		</div>
		</div>
		<jsp:include page="bottom.jsp" />
	</div>
	</fmt:bundle>
</body>
</html>