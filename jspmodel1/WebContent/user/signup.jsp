<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/style.css" rel="stylesheet">
</head>
<body>
	<h1>회원가입 페이지</h1>

	<form class="login" action="signupProc.jsp" method="post">

		<div>
			<label for="username">사용자 이름</label> <input type="text"
				name="username" id="username">
		</div>
		<div>
			<label for="password">패스워드</label> <input type="password"
				name="password" id="password">
		</div>
		<div>
			<label for="passwordCheck">패스워드 확인</label> <input type="password"
				name="passwordCheck" id="passwordCheck">
		</div>
		<div>
			<label for="email">email</label> <input type="text"
				name="email" id="email">
		</div>

		<div class="actions">
			<input type="submit" name="login" value="회원가입">
		</div>
	</form>

	
</body>
</html>