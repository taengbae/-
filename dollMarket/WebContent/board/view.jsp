<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="mvc.model.BoardDTO"%>

<%
BoardDTO notice = (BoardDTO) request.getAttribute("board");
int num = ((Integer) request.getAttribute("num")).intValue();
int nowpage = ((Integer) request.getAttribute("page")).intValue();
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/style.css" />
<title>Taeng</title>
</head>
<body>
	<div class="main-container">
		<jsp:include page="./top.jsp" />
		<jsp:include page="./side.jsp" />
		<div class="side_right">
			<div class="right-inner">
				<div class="menu-bar">
					<p>병원접수</p>
				</div>
				<div class="container" align="center">
					<form name="newUpdate"
						action="BoardUpdateAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>"
						class="form-horizontal" method="post">
						<div class="form-group1 row">
							<label class="col-sm-2 control-label">성명</label>
							<div class="col-sm-3">
								<input name="name" class="form-control"
									value=" <%=notice.getName()%>">
							</div>
						</div>
						<div class="form-group1 row">
							<label class="col-sm-2 control-label">제목</label>
							<div class="col-sm-3">
								<input name="subject" class="form-control"
									value=" <%=notice.getSubject()%>">
							</div>
						</div>
						<div class="form-group1 row">
							<label class="col-sm-2 control-label">내용</label>
							<div class="col-sm-3" style="word-break: break-all;">
								<textarea name="content" class="form-control" cols="50" rows="5"> <%=notice.getContent()%></textarea>
							</div>
						</div>
						<div class="form-group1 row">
							<div class="col-sm-offset-2 col-sm-10 ">
								<c:set var="userId" value="<%=notice.getId()%>" />
								<c:if test="${sessionId==userId}">
									<p>
										<a
											href="./BoardDeleteAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>"
											class="btn "> 삭제</a> <input type="submit"
											class="btn " value="수정 " style="font-family: 'Libre Baskerville', serif; font-weight: 700;">
								</c:if>
								<a href="./BoardListAction.do?pageNum=<%=nowpage%>"
									class="btn btn-primary1"> 목록</a>
							</div>
						</div>
					</form>
					<hr>
				</div>
			</div>
			<jsp:include page="./bottom.jsp" />
		</div>
	</div>
</body>
</html>


