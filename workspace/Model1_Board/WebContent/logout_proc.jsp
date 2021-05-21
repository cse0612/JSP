<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<%	//로그아웃 처리
	session.invalidate();				//세션 삭제
	response.sendRedirect("login.jsp");
%>