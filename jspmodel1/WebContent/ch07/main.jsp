<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$("table").css("background-color","red");
</script>
<style type="text/css">
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	
	<table width="800px" border="1">
		<!-- TOP -->
		<tr height="150px">
			<td align="center" colspan="2">
				<jsp:include page="top.jsp">
					<jsp:param value="내정보" name="id"/>
				</jsp:include>
			</td>
		</tr>
		
		<!-- 페이지를 포함하는 개념 -->
		<%-- <%@ include file="top.jsp"> --%>
		
		
		<!-- left, center  -->
		<tr height="400px">
			<td align="center" width="200px"><jsp:include page="left.jsp"></jsp:include></td>
			<td align="center" width="600px"><jsp:include page="center.jsp"></jsp:include></td>
		</tr>
		
		<!-- Bottom -->
		<tr height="100px">
			<td align="center" colspan="2">
				<jsp:include page="bottom.jsp"></jsp:include>
			</td>
		</tr>
	</table>
</body>
</html>