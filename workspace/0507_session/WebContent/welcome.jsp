<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	//인증된 세션이 없는 경우 해당페이지를 볼수 없게 한다.
 	if(session.getAttribute("signedUser") == null) {
 		response.sendRedirect("logout.jsp");
 	}
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome 페이지</title>
</head>
<body>
<h1><%= session.getAttribute("signedUser") %>님 환영합니다.</h1>
<a href="logout.jsp">로그아웃</a>
<!--  form method="post" action="logout.jsp">
      <input type="submit" value="로그아웃">
</form-->


</body>
</html>