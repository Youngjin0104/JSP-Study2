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
		
		/* String id = request.getParameter("id"); */
	%>
	<!-- request로 넘어온 데이터를 자바 빈즈랑 맵핑 시켜주는 useBean 액션태그 -->
	<!-- 객체 생성 : MemberBean mbean = new MemberBean() -->
	<jsp:useBean id="mbean" class="com.company.aboutking.beans.MemberBean">
		<!-- 한번에 설정할 수 있다 -->
		<jsp:setProperty name = "mbean" property="*"/>
		<!-- 필요하다면 하나씩 셋팅도 가능하다. -->
	</jsp:useBean>
	
	<h2>당신의 아이디는 : <jsp:getProperty name = "mbean" property="id"/> </h2>
	<h2>당신의 패스워드는 : <jsp:getProperty name = "mbean" property="pass1"/> </h2>
	<h2>당신의 이메일는 : <jsp:getProperty name = "mbean" property="email"/> </h2>
	<h2>당신의 전화번호는 : <jsp:getProperty name = "mbean" property="tel"/> </h2>
	<h2>당신의 주소는 : <jsp:getProperty name = "mbean" property="address"/> </h2>
		
	<!-- 다른 방식도 사용이 가능 -->
	<p>
	당신의 주소는 <%=mbean.getAddress() %> 입니다.
	
</body>
</html>