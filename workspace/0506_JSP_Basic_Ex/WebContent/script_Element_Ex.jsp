<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언문, 스크립트릿, 표현식 사용예제</title>
</head>
<body>
	<h2>선언문, 스크립트릿, 표현식 사용예제</h2>
	<%!	//선언문 => 전연변수 선언시 사용
	String str1 = "전역변수 입니다";	%>
	<%!//선언문 => 메서드 선언시 사용
	String getStr() {
		return str1;
	}
	%>
	<%	//스크립트릿 => 자바코드 기술시 사용
	String str2 = "지역변수입니다"; %>
	
	스크립트릿에서 선언한 변수 str2는<%= str2 %><br> 
	선언문에서 선언한 변수 str1는<%= getStr() %><br>
</body>
</html>