<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>쿠키 확인 하기</h1>
<%
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for(int i = 0; i < cookies.length; i++) {
			if (cookies[i].getName().equals("myCookie")) {
				System.out.print("쿠키 이름 : " + cookies[i].getName());
				System.out.print("쿠키 값 : " + cookies[i].getValue());
			}
		}
	}
%>
</body>
</html>