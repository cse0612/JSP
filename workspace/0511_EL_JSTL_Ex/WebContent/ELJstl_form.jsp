<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>표현언어의 파라미터값 처리</h3>
	<form name="form1" method="POST" action="ELJstl_view.jsp">
		이름 : <input type="text" name="name"> <br><br>
		과목선택: <input type="checkbox" name="lang" value="HTML">HTML<br>
				<input type="checkbox" name="lang" value="CSS">CSS<br>
				<input type="checkbox" name="lang" value="Javascript">Javascript<br>
				<input type="checkbox" name="lang" value="JSP">JSP<br>
				<br>
		<input type="submit" value="제출">				
	</form>
</body>
</html>