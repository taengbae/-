<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet" href="../resources/css/style.css">
<script type="text/javascript">
	function checkForm() {
		if (!document.newMember.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}

		if (!document.newMember.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		if (document.newMember.password.value != document.newMember.password_confirm.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}
</script>
<title>Taeng</title>
</head>
<body>
	<div class="main-container">
		<jsp:include page="./top.jsp" />
		<jsp:include page="./side.jsp" />
		<div class="side_right">
			<div class="right-inner">
				<div class="wrap wd668">
					<div class="menu-bar">
						<p>회원가입</p>
					</div>
					<div class="container">
						<form name="newMember" class="form-horizontal1"
							action="processAddMember.jsp" method="post"
							onsubmit="return checkForm()">
							<div class="form-group1  row">
								<label class="col-sm-2 ">아이디</label>
								<div class="col-sm-3">
									<input name="id" type="text" class="form-control"
										placeholder="id">
								</div>
							</div>
							<div class="form-group1 row">
								<label class="col-sm-2">비밀번호</label>
								<div class="col-sm-3">
									<input name="password" type="text" class="form-control"
										placeholder="password">
								</div>
							</div>
							<div class="form-group1 row">
								<label class="col-sm-2">비밀번호확인</label>
								<div class="col-sm-3">
									<input name="password_confirm" type="text" class="form-control"
										placeholder="password confirm">
								</div>
							</div>
							<div class="form-group1 row">
								<label class="col-sm-2">성명</label>
								<div class="col-sm-3">
									<input name="name" type="text" class="form-control"
										placeholder="name">
								</div>
							</div>
							<div class="form-group1 row ">
								<label class="col-sm-2">이메일</label>
								<div class="col-sm-11">
									<input type="text" name="mail1" maxlength="50">@ <select
										name="mail2">
										<option>naver.com</option>
										<option>daum.net</option>
										<option>gmail.com</option>
										<option>nate.com</option>
									</select>
								</div>
							</div>
							<div class="form-group1 row">
								<label class="col-sm-2">전화번호</label>
								<div class="col-sm-3">
									<input name="phone" type="text" class="form-control"
										placeholder="phone">

								</div>
							</div>
							<div class="form-group1 row">
								<label class="col-sm-2 ">주소</label>
								<div class="col-sm-3">
									<input name="address" type="text" class="form-control"
										placeholder="address">

								</div>
							</div>
							<div class="form-group1 row">
								<div class="col-sm-offset-2 col-sm-4 ">
									<input type="reset" class="btn btn-primary1 " value="취소 "
										onclick="reset()">
									<input type="submit" class="btn btn-primary1 " value="등록 ">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<jsp:include page="./bottom.jsp" />
		</div>
	</div>
</body>
</html>