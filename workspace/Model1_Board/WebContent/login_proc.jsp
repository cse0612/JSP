<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 에러처리 페이지 추가  -->
<%@ page errorPage="error.jsp" %>
<!-- user 객체 클래스 추가  -->
<%@ page import="user.UserDO" %>
<%@ page import="user.UserDAO" %>
    
<%
	request.setCharacterEncoding("UTF-8");
	//1. 사용자 입력 정보 추출
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	//2. UserDO 클래스 객체 생성 후 필드(중간저장소)에 값을 초기화한다.
	UserDO userDO = new UserDO();
	userDO.setId(id);
	userDO.setPassword(password);
	
	//3. UserDAO 클래스 객체 생성후 getUser() 매서드 호출  타입: userDO 
	UserDAO userDAO = new UserDAO();
	UserDO user = userDAO.getUser(userDO);

	System.out.println("getUser() >>>" + user);	//result: getUser() >>>user.UserDO@3ed2fac9

	//4. 포워딩
	if(user != null) {
		//[중요] 세션 객체 "키"에 값 저장하기
		session.setAttribute("IdKey", id);
		response.sendRedirect("getBoardList.jsp");
	} else {
		// response.sendRedirect() 사용시 out.println 무시됨
		//out.println("<script>alert('로그인 실패!!');</script>");
		response.sendRedirect("login.jsp");
	}
%>    