<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String name = (String) request.getAttribute("name");
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/style.css">
<title>Taeng</title>
</head>
<script type="text/javascript">
	function checkForm() {
		if (!document.newWrite.name.value) {
			alert("성명을 입력하세요.");
			return false;
		}
		if (!document.newWrite.subject.value) {
			alert("제목을 입력하세요.");
			return false;
		}
		if (!document.newWrite.content.value) {
			alert("내용을 입력하세요.");
			return false;
		}
	}
</script>
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
					<form name="newWrite" action="./BoardWriteAction.do"
						class="form-horizontal" method="post"
						onsubmit="return checkForm()">
						<input name="id" type="hidden" class="form-control"
							value="${sessionId}">
						<div class="form-group2 row">
							<label class="col-sm-2 control-label">성명</label>
							<div class="col-sm-3">
								<input name="name" type="text" class="form-control"
									value="<%=name%>" placeholder="name">
							</div>
						</div>
						<div class="form-group2 row">
							<label class="col-sm-2 control-label">제목</label>
							<div class="col-sm-3">

								<input name="subject" type="text" class="form-control"
									placeholder="subject">
							</div>
						</div>
						<div class="form-group2 row">
							<label class="col-sm-2 control-label">내용</label>
							<div class="col-sm-3">
								<textarea name="content" cols="50" rows="5" class="form-control"
									placeholder="content"></textarea>
							</div>
						</div>
						<div class="form-group2 row">
							<div class="col-sm-offset-2 col-sm-10 ">
								<input type="submit" class="btn btn-primary1 " value="등록 ">
								<input type="reset" class="btn btn-primary1 " value="취소 ">
							</div>
						</div>
					</form>
				</div>
			</div>
			<jsp:include page="./bottom.jsp" />
		</div>
	</div>
</body>
</html>



