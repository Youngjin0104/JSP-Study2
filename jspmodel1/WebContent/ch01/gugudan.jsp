<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>구구단 화면에 출력</h1>
	
	<%
		for(int i = 2; i <= 9; i++) {
			for(int j = 1; j <= 9; j++){
				System.out.println(i + " X " + j + " = " + (i * j));
			}
			System.out.println();
		}
	%>
	
	<%
		for(int i = 2; i <= 9; i++) {
			for(int j = 1; j <= 9; j++){
	%>
		
		<%= i %> X <%= j %> = <%= i * j %> &nbsp; &nbsp;
	
	<%
				/* System.out.println(i + " X " + j + " = " + (i * j)); */
			}
	%>
		<br>
	<%	
		}
	%>

</body>
</html>