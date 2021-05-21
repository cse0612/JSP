<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<%@ page import="board.BoardDO" %>	
<%@ page import="board.BoardDAO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%	
	request.setCharacterEncoding("UTF-8");
	
	//1. 게시글 번호 가져오기
	String seq = request.getParameter("seq");
	System.out.println("seq>>>" + seq);
	//2. BoardDO클래스 생성 후 초기화
	BoardDO boardDO = new BoardDO();
	boardDO.setSeq(Integer.parseInt(seq));	//정수변환후 저장
	
	//3. BoardDAO 클래스 생성 후 '게시글 상세보기' 메서드 조회
	BoardDAO boardDAO = new BoardDAO();
	BoardDO board = boardDAO.getBoard(boardDO);

	request.setAttribute("board", board);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기 페이지</title>
</head>
<body>
<div align="center">
	<h1>게시글 상세보기</h1>
	<a href="logout_proc.jsp">로그아웃</a>
	<hr>
	<form name="displayForm" method="POST" action="updateBoard_proc.jsp">
		<input type="hidden" name="seq" value="${board.seq}">
		<table border="1" cellspacing="0" cellpadding="0">
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" value="${board.title}"></td>
			</tr>
		<tr>
				<td>작성자</td>
				<td><input type="text" name="writer" value="${board.writer}"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" cols="40" name="content">${board.content}</textarea></td>
			</tr>
			<tr>
				<td>등록일</td>
				<td>${board.regdate}</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>${board.cnt}</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="글수정">
				</td>
			</tr>
		</table>
	</form>
	<hr>
	<a href="insertBoard.jsp">새 게시글 등록</a>&nbsp;&nbsp;&nbsp;
	<a href="deleteBoard_proc.jsp?seq=${board.seq}">게시글 삭제</a>&nbsp;&nbsp;&nbsp;
	<a href="getBoardList.jsp">전체 게시글 목록보기</a>
</div>
</body>
</html>