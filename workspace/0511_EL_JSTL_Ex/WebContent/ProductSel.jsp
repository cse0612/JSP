<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProductSel.jsp 페이지</title>
</head>
<body>
	<jsp:useBean id="product" class="product.ProductTest" scope="page"/>
	1. 선택한 제품 : ${param.sel} ㅇ<br>
	2. 연산문 사용예 : ${product.num1 + product.num2}<br>
	
	
</body>
</html>