<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8");	
		String id = request.getParameter("id");
		String save = request.getParameter("save");
		
		// 코드 확인 응답값		
		if(save != null) {
			Cookie cookie = new Cookie("id", id);			
			// 쿠키 유효시간 설정
			cookie.setMaxAge(60*60*24); // 1day
			// 응답 헤더에 추가한다.
			response.addCookie(cookie);
			out.write("쿠키 생성 완료");
		}
	%>
	
</body>
</html>