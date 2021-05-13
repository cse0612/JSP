<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 추가 -->
<%@ page errorPage="error.jsp" %>
<%@ page import="board.BoardDO" %>	
<%@ page import="board.BoardDAO" %>
<%@ page import="java.util.List" %>	
<%
	request.setCharacterEncoding("UTF-8");

	//검색 대상(제목 또는 작성자) 및 검색 텍스트 객체를 저장할 변수
	String searchField = "";	//검색대상 객체 레퍼런스변수
	String searchText = "";		// 검색텍스트

	if(request.getParameter("searchCondition") != "" && request.getParameter("searchKeyword") != "") {
		searchField = request.getParameter("searchCondition");
		searchText = request.getParameter("searchKeyword");
	}
	
	//BoardDAO 클래스 객체 생성후 메서드 호출
	BoardDAO boardDAO = new BoardDAO();
	List<BoardDO> boardList = boardDAO.getBoardList(searchField, searchText);
	request.setAttribute("boardList", boardList);
	
	//총게시글 갯수 구하기
	int totalList = boardList.size();
	request.setAttribute("totalList", totalList);
	
	
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
</head>
<body>
	<h3>${IdKey}님
		환영합니다.&nbsp;&nbsp;&nbsp; <a href="logout_proc.jsp">로그아웃</a>
	</h3>
	<!-- 게시글 검색폼 -->
	<form name="form2" method="post" action="getBoardList.jsp">
		<p>총게시글:${totalList}</p>
		<table border="1" cellspacing="0" cellsapcing="0" width="700">
			<tr>
				<td align="center">
					<div class="input-group sm">
						<select name="searchCondition" class="form-select" style="width:50px">
		 						<option value="TITLE">제목</option>
								<option value="WRITER">작성자</option>
								<option value="CONTENT">내용</option>
						</select>
						<input type="text" name="searchKeyword"> 
						<input type="submit" value="검 색">
					</div>
				</td>
			</tr>
		</table>


		<!-- 게시판 목록 -->
		<table class="table" >
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">등록일</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>
			<tbody>
				<%  for(BoardDO board : boardList) { %>
				<tr>
					<th scope="row"><%=board.getSeq() %></th>
					<td><a href="getBoard.jsp?seq=<%=board.getSeq()%>"> <%=board.getTitle()%> </a></td>
					<td><%=board.getWriter() %></td>
					<td><%=board.getRegdate() %></td>
					<td><%=board.getCnt() %></td>
				</tr>
				<% 	}	%>
			</tbody>
		</table>
		<a href="getBoard.jsp">새 개시글 등록</a>
	</form>


</body>
</html>