<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>request 테스트 결과  - 1</h2>
	<hr>
	<table border="1" cellspacing="1" cellpadding="5">
		<tr>
			<td>이름</td>
			<td width="80"><%= request.getParameter("username") %></td>
		</tr>
		<tr>
			<td>직업</td>
			<td width="80"><%= request.getParameter("job") %></td>
		</tr>
		<tr>
			<td>관심분야</td>
			<td width="80">
				<%
					String[] favorites = request.getParameterValues("favorite");
					
					for(int i=0; i < favorites.length; i++) {
						out.println(favorites[i] + "<br>");
					}
				%>
			</td>
		</tr>
	</table>
	<hr>
	<h2>request 테스트 결과 - 2</h2>
	<table border="0">
		<tr>
			<td>
			1. 클라이언트 IP 주소 : <%= request.getRemoteAddr() %><br>
			2. 요청 메서드: <%= request.getMethod() %><br>
			3. 프로토콜 : <%= request.getProtocol() %><br>
			
			</td>
		</tr>
	</table>
</body>
</html>