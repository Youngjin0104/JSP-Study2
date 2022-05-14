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
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		System.out.println("id:" + id);
	%>
	<!-- MemberBean2 regBean = new MemberBean2(); -->
	<jsp:useBean id="regBean" class="com.company.aboutking.beans.MemberBean2"></jsp:useBean>
	<jsp:setProperty property="*" name="regBean"/>
	
	<h2>아이디 <jsp:getProperty property="id" name="regBean"/></h2>
	<h2>패스워드 <jsp:getProperty property="pwd" name="regBean"/></h2>
	<h2>이름 <jsp:getProperty property="name" name="regBean"/></h2>
	<h2>생년월일 <jsp:getProperty property="birthday" name="regBean"/></h2>
	<h2>이메일 <jsp:getProperty property="email" name="regBean"/></h2>
	
</body>
</html>