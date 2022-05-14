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
		/*
			service 메서드 에서 만들어 주는 요소
		*/
		
		// 메서드 안에서 메서드를 사용하는 것과 마찬가지 이다. 안됨
		/* public void intCrement() {
		
		} */
	
	%>
	
	<!-- 선언문 -->
	<%!
	
	public void intCrement() {
		
	}
	
	public int intAdd(int a, int b) {
		return a + b;
	}
	
	%>
	
	<%!
		int a = 10;	// 멤버 변수
	%>
	
	<%!
		/* int a = 10; // 멤버 변수 --> 멤버 변수 중복 선언 에러 */
	%>
	
	<%
		int a = 100; // 지역 변수
	%>
	
	<%
		/* int a = 1110; // 지역변수 중복선언 에러 */
	%>
	
	<!-- 표현식에서 세미콜론은 사용하지 않음  -->
	<div style = "border: 1px solid #ddd; padding: 100px; width: 200px;">
	<%= intAdd(10,30) %>
	</div>
	
	<% 
		int number = 10;
		int count = 0;
		
		while(number > count) {
	%>	
	<%=
			count
	%>
	<%
			count++;
		}
	%>
	

</body>
</html>