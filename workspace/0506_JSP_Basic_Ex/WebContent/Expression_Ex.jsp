<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  페이지 지시어 필요 -->
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현식 응용 예제</title>
</head>
<body>
	<%
		String[] str = {"자바", "오라클", "HTML", "CSS", "Javascript"};
		Random rnd = new Random();
		int i = rnd.nextInt(5);	// 난수발생
	%>
	<%= str[i] %> 과목을 선택했습니다.
</body>
</html>