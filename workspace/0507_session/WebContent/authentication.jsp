<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//인증 가능 사용자 및 패스워드 목록 생성
String[] users = {"park1234", "kim1234", "hong1234"};
String[] passwords = {"park123", "kim123", "hong123"};
		
String id = request.getParameter("id");
String pw = request.getParameter("pw");

int i;
for(i = 0; i < users.length; i++) {
	if(users[i].equals(id) && passwords[i].equals(pw)) {
		//세션값 등록하기
	    session.setAttribute("signedUser", id);
		response.sendRedirect("welcome.jsp");	    
	}
}

if(i ==  users.length) {	//인증실패시
	out.println("<script>alert('아이디가 일치하지 않습니다'); history.go(-1);</script>");
}
		

   
%>

    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login OK </title>
</head>
<body>
</body>
</html>