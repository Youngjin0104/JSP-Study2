<%@page import="ch13.RegisterBean"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="regDao" class="ch13.RegisterDao"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#ffffcc">
	<h2>JSP 스크립트릿에서 데이터베이스 연동 예제</h2>
	<h3>회원정보</h3>
	<table bordercolor="#0000ff" border="1">
		<tr>
			<td><strong>ID</strong></td>
			<td><strong>PWD</strong></td>
			<td><strong>NAME</strong></td>
			<td><strong>NUM1</strong></td>
			<td><strong>NUM2</strong></td>
			<td><strong>EMAIL</strong></td>
			<td><strong>PHONE</strong></td>
			<td><strong>ZIPCODE/ADDRESS</strong></td>
			<td><strong>JOB</strong></td>
		</tr>
		<%
			Vector<RegisterBean> vlist = regDao.getRegisterList();
			int counter = vlist.size();
			for(int i = 0; i < vlist.size(); i++) {
				RegisterBean bean = vlist.get(i);
		%>
		<tr>
			<td><%=vlist.get(i).getId() %></td>
			<td><%=bean.getPwd() %></td>
			<td><%=bean.getName() %></td>
			<td><%=bean.getNum1() %></td>
			<td><%=bean.getNum2() %></td>
			<td><%=bean.getEmail() %></td>
			<td><%=bean.getPhone() %></td>
			<td><%=bean.getZipcode() %> / <%=bean.getAddress() %></td>
			<td><%=bean.getJob() %></td>
		</tr>		
		<% 	}%>
	</table>
	total records = <%=counter %>
	<br>

</body>
</html>