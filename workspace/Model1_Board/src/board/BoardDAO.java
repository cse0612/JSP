package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;

public class BoardDAO {
	//DB 관련 변수 선언
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	//전체 게시글 목록 조회 메서드 구현
	public List<BoardDO> getBoardList(String searchField, String searchText) {
		
		System.out.println("===> getBoardList() 기능 처리" );
		
		//결과값 반환할 listArray 객체 생성
		List<BoardDO> boardList = new ArrayList<BoardDO>();
		
		try {
			conn = JDBCUtil.getConnection();
			String where ="";
			
			//검색인 경우에만  where절 추가
			if(searchField != null && searchText != null) {
				where = "where "+searchField+" like '%"+searchText+"%'";
			} 
			//SQL문 완성
			String Condition_SQL = "select * from board "+where+" order by desc";  	
			
			pstmt = conn.prepareStatement(Condition_SQL);
			rs = pstmt.executeQuery();
			System.out.println("쿼리문 실행 성공! =>"+Condition_SQL);
			while(rs.next()) {
				BoardDO board = new BoardDO();	//BoardDO 객체 생성후 setter매서드를 통해 값을 저장
				board.setSeq(rs.getInt("SEQ"));
				board.setTitle(rs.getString("TITLE"));
				board.setWriter(rs.getString("WRITER"));
				board.setContent(rs.getString("CONTENT"));
				board.setRegdate(rs.getDate("REGDATE"));
				board.setCnt(rs.getInt("CNT"));
			
				boardList.add(board);	//리스트에 추가
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		 return boardList;
	}
}
