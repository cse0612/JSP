<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--  JSTL 라이브러리를 현재 페이지에서 적용 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>제품 목록 보기</h2>
	<hr>
	<form name="myForm" method="POST" action="ProductSel.jsp">
		<jsp:useBean id="product" class="product.ProductTest" scope="page" />
		<select name="sel">
			<%--	// 기존 자바코드 방식
				for(String item : product.getProductList()) {
					out.println("<option>" + item + "</option>");
				}
			
				--> jstl 확장기술 적용  (JSP페이지에서 자바코드대신 태그형식으로 변경)
			--%>
			<c:forEach var="item" items="${product.getProductList()}">
				<option>${item}</option>
			</c:forEach>
		</select>
		
		<input type="submit" value="제품 선택">
	</form>
</body>
</html>