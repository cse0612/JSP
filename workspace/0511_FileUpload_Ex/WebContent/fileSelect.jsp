<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="myForm" method="post" enctype="multipart/form-data" action="viewpage.jsp">
		작성자 	<input type="text" name="name"><br>
		제   목	<input type="text" name="subject"><br><br>
		업로드할 파일	<input type="file" name="uploadFile"><br><br> 
		<input type="submit" value="파일 올리기">
	</form>
</body>
</html>