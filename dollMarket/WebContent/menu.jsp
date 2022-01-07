<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String sessionId = (String) session.getAttribute("sessionId");
%>

<ul class="menu-categoty">
	<c:choose>
		<c:when test="${empty sessionId}">
			<li><a href="<c:url value="/member/loginMember.jsp"/>">로그인 </a></li>
			<li><a href="<c:url value="/member/addMember.jsp"/>">회원 가입</a></li>
		</c:when>
		<c:otherwise>
			<li><a href="<c:url value="/member/mypage.jsp"/>">마이페이지 </a></li>
			<li><a href="<c:url value="/addProduct.jsp"/>">상품등록 </a></li>
			<li><a href="<c:url value="/BoardListAction.do?pageNum=1"/>">병원게시판 </a></li>
			<li><a href="<c:url value="/member/logoutMember.jsp"/>">로그아웃 </a></li>
		</c:otherwise>
	</c:choose>
</ul>
