<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>home페이지로 가정</title>
</head>
<body>
	<div align="center">
		<h2>테스트</h2>
		<hr>
		<%@ include file="menu.jsp"%>
		<p/>
		<table border="0" cellpadding=5 cellspacing=1>
			<tr>
				<td><font size="1"><%@ include file="news.jsp" %></font></td>
				<td width="30px">&nbsp;</td>
				<td> <font size="1"><%@ include file="shopping.jsp" %></font> </td>
			</tr>
		</table>		
	</div>
</body>
</html>