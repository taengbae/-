<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String sessionId = (String) session.getAttribute("sessionId");
%>
<div class="side">
	<div class="logo-img">
		<img src="./resources/images/크리스마스용 로고.png">
	</div>
	<div class="sidenav">
		<ul class="xans-element- xans-layout xans-layout-category">
			<c:choose>
				<c:when test="${empty sessionId}">
					<li><a href="<c:url value="./doll.jsp"/>">Doll</a></li>
					<li><a href="<c:url value="./hospital.jsp"/>">Hospital</a></li>
					<li><a href="<c:url value="./mypage_main.jsp"/>">MyPage</a></li>
					<li><a href="<c:url value="./Info.jsp"/>">Info</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="<c:url value="./doll.jsp"/>">Doll</a></li>
					<li><a href="<c:url value="./hospital.jsp"/>">Hospital</a></li>
					<li><a href="<c:url value="member/mypage.jsp"/>">MyPage</a></li>
					<li><a href="<c:url value="./Info.jsp"/>">Info</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
</div>