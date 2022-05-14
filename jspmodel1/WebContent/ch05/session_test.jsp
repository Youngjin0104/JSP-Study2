<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>세션 연습</h2>
	<%
		String name = "myId";
	
		// 세션을 이용하여 데이터를 유지
		session.setAttribute("name1", name);
		
		// 세션 유지 시간
		session.setMaxInactiveInterval(10); // 분 단위
		
		String subName = "TOM";
	%>
	
	<a href="session_name.jsp?subName=<%=subName%>">세션 네임 페이지로 이동</a>
</body>
</html>