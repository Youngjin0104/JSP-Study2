<%@page import="com.google.gson.Gson"%>
<%@page import="beans.UserBean"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="userDao" class="dao.UserDao"></jsp:useBean>
    
<%
    
	// MIME 타입
	response.setContentType("application/json");
	Vector<UserBean> list = userDao.getUserBeans();    	
    Gson gson = new Gson();
    
	String jsonStr = gson.toJson(list);
	
	response.getWriter().write(jsonStr);
	
%>