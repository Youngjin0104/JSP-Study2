<%@page import="ch13.MemberBean"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="memberList" class="ch13.MemberDao"></jsp:useBean>
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
			<td><strong>NAME</strong></td>
			<td><strong>ADDRESS</strong></td>
		</tr>
		<%
			Vector<MemberBean> vlist = memberList.getMemberBeans();
			int counter = vlist.size();
			for(int i = 0; i < vlist.size(); i++) {
				MemberBean bean = vlist.get(i);
		%>
		<tr>
			<td><%=vlist.get(i).getMemberID() %></td>
			<td><%=bean.getMemberName() %></td>
			<td><%=bean.getMemberAddress() %></td>
		</tr>		
		<% 	}%>
	</table>
	total records = <%=counter %>

</body>
</html>