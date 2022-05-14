<%@page import="beans.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="userDao" class="dao.UserDao"></jsp:useBean>
<%
	request.setCharacterEncoding("utf-8");

	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	System.out.print("username : " + username);
	System.out.print("password : " + password);
	
	UserBean resultBean = userDao.login(username, password); // null(회원없음) / not null(회원있음)

	String msg = "로그인 실패";
	String url = "login.jsp";
	
	if(resultBean != null) {
		msg = "로그인 성공";
		url = "../main/userInfo.jsp";
		
		session.setAttribute("id", resultBean.getId());
		session.setAttribute("username", resultBean.getUsername());
		session.setAttribute("email", resultBean.getEmail());
		session.setAttribute("createDate", resultBean.getCreateDate());
	}
	
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>
	
%>