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
	String name = request.getParameter("name");
	String bloodType = request.getParameter("bloodType");
	String color = request.getParameter("color");
%>

	<h1 style= "color:<%=color %>">Forward Tag2</h1>
	<b><%=name %></b>님의 혈액형은 <b><%=bloodType %></b>형이고 성격은 단순무식합니다.

</body>
</html>