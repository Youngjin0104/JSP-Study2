<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>1 부터 10까지 화면에 출력</h1>
	<!-- 스크립트 릿 -->
	<%
		// 1. 콘솔창에 출력
		// 1 ~ 10까지
		for(int i = 1; i <= 10; i++){
			// System.out.println(i);
	%>
	
	<!--표현식 -->
	<%= i%><br>
	<% 
		}
	%>

</body>
</html>