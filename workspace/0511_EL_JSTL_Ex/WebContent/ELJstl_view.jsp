<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름 : ${param.name}
	<br> 선택한 과목 :
	<%--   빈데이타가 들어오면 에러 발생
	for(String item : request.getParameterValues("lang")) {
		out.println(item + "<br>");
	}
	--%>
	<%--다른방식 --%>
	<c:choose>
		<c:when test="${empty paramValues.lang}">
			선택없음
		</c:when>
		<c:otherwise>
			<c:forEach var="subject" items="${paramValues.lang}">
				${subject} 
			</c:forEach>
		</c:otherwise>
	</c:choose>
</body>
</html>