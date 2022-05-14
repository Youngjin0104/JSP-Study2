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
	%>
	<table width="800px">
		<tr height="100px">
			<td colspan="2" align="center" width="206px">
				<img alt="" src="../images/logo.png" width="180px">
			</td>
			<td colspan="4" align="center">
				<font size="10px">CAMPING GROUND</font>
			</td>
		</tr>
		<tr height="50px">
			<td width="110px" align="center">텐트</td>
			<td width="110px" align="center">의자</td>
			<td width="110px" align="center">식기류</td>
			<td width="110px" align="center">침낭</td>
			<td width="110px" align="center">테이블</td>
			<td width="140px" align="center"><%=request.getParameter("id") %></td>
		</tr>
	</table>
</body>
</html>