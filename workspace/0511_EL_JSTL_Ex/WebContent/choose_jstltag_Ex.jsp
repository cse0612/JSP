<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>c:choose 태그 실습</h2>
	<form name="myForm" method="post">
		<select name="sel">
			<option selected>과목선택</option>
			<option value="JSP">JSP</option>
			<option value="PHP">PHP</option>
			<option value="ASP">ASP</option>
		</select>
		<input type="submit" value="과목선택">
	</form>
	<hr>
	<c:choose>
		<c:when test="${param.sel == 'JSP'}">
			JSP 과목을 선택했습니다.
		</c:when>
		
		<c:when test="${param.sel == 'PHP'}">
			PHP 과목을 선택했습니다.
		</c:when>
		
		<c:when test="${param.sel == 'ASP'}">
			ASP 과목을 선택했습니다.
		</c:when>
		
		<c:otherwise>
			과목을 선택하지 않았습니다.
		</c:otherwise>
	</c:choose>
</body>
</html>