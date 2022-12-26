package biz.board;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import biz.common.JDBCConnection;

public class BoardDAO {
	// 커넥션 풀 사용 오라클 DB 접속 메서드
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	// 전체글의 (갯수) 가져오는 메서드
	public int getAllCount() {
		int count = 0;
		try {
			conn = JDBCConnection.getConnection();
			String sql = "select count(*) from si_board";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()) {
				count = rs.getInt(1);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(rs, stmt, conn);
		}
		return count;
	}
	
	// 최신글 5개를 기준으로 게시판 글 가져오는 메서드
	public ArrayList<BoardVO> getAllBoard(int start, int end) {
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		try {
			conn = JDBCConnection.getConnection();
			String sql = "select * from (select A.*,Rownum Rnum from (select * from si_board order by ref desc, re_step asc)A) "
					+ "where Rnum >=? and Rnum <=?";
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, start);
			stmt.setInt(2, end);
			rs = stmt.executeQuery();
			while(rs.next()) {
				BoardVO bean = new BoardVO();
				bean.setSeq(rs.getInt(1));
				bean.setType(rs.getString(2));
				bean.setChoice(rs.getString(3));
				bean.setTitle(rs.getString(4));
				bean.setContent(rs.getString(5));
				bean.setUser_name(rs.getString(6));
				bean.setUser_email(rs.getString(7));
				bean.setFirst_tel(rs.getString(8));
				bean.setSecond_tel(rs.getString(9));
				bean.setRegdate(rs.getDate(10));
				bean.setCnt(rs.getInt(11));
				bean.setRef(rs.getInt(12));
				bean.setRe_step(rs.getInt(13));
				bean.setRe_level(rs.getInt(14));
				
				list.add(bean);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(rs, stmt, conn);
		}
		return list;
	}
	
	// 답글 달기
	public void reInsertBorad(BoardVO vo) {
		
		try {
			conn = JDBCConnection.getConnection();
			int ref = vo.getRef();
			int re_step = vo.getRe_step();
			int re_level = vo.getRe_level();
			
			String levelSql ="update si_board set re_level = re_level+1 where ref=? and re_level>?";
			stmt = conn.prepareStatement(levelSql);
			stmt.setInt(1,ref);
			stmt.setInt(2, re_level);
			stmt.executeUpdate();
			
			// 답글 데이터
			String sql = "insert into si_board values((select nvl(max(seq),0)+1 from si_board),?,?,?,?,?,?,?,?,sysdate,0,?,?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, vo.getType());
			stmt.setString(2, vo.getChoice());
			stmt.setString(3, vo.getTitle());
			stmt.setString(4, vo.getContent());
			stmt.setString(5, vo.getUser_name());
			stmt.setString(6, vo.getUser_email());
			stmt.setString(7, vo.getFirst_tel());
			stmt.setString(8, vo.getSecond_tel());
			stmt.setInt(9, ref);
			stmt.setInt(10, re_step+1);
			stmt.setInt(11, re_level+1);
			
			stmt.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(stmt, conn);
		}
		
	}

		
	// 답글 수정
	public int updateBoard(BoardVO vo) {
		int cnt = 0;
		try {
			conn = JDBCConnection.getConnection();

			String sql = "update si_board set title = ?, content = ? where seq = ?";
			stmt.setString(1, vo.getTitle());
			stmt.setString(2, vo.getContent());
			stmt.setInt(3, vo.getSeq());

			cnt = stmt.executeUpdate();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(stmt, conn);
		}

		return cnt;
	}
	
	public int addboard(BoardVO vo) {
		// 계층형 글쓰기 변수 할당
		int cnt = 0;
		int ref = 0 ;
		int re_step = 1;
		int re_leverl = 1;
		try {
			
			conn=JDBCConnection.getConnection();
			String refsql = "select max(ref) from si_board";
			stmt  = conn.prepareStatement(refsql);
			rs= stmt.executeQuery();
			if(rs.next()) {
				ref= rs.getInt(1)+1;
			}
			
			String sql = "insert into si_board values((select nvl(max(seq),0)+1 from si_board),?,?,?,?,?,?,?,?,sysdate,0,?,?,?)";
			stmt=conn.prepareStatement(sql);
			stmt.setString(1, vo.getType());
			stmt.setString(2, vo.getChoice());
			stmt.setString(3, vo.getTitle());
			stmt.setString(4, vo.getContent());
			stmt.setString(5, vo.getUser_name());
			stmt.setString(6, vo.getUser_email());
			stmt.setString(7, vo.getFirst_tel());
			stmt.setString(8, vo.getSecond_tel());
			stmt.setInt(9, ref);
			stmt.setInt(10, re_step);
			stmt.setInt(11, re_leverl);
			
			cnt = stmt.executeUpdate();
			conn.close();
			
			
		} catch (ClassNotFoundException e) {
	        e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(rs,stmt,conn);
		}
	
		return cnt;
	}
	
	// 답글 삭제
	public int deleteBoard(BoardVO vo) {
		int cnt = 0;
		try {
			conn = JDBCConnection.getConnection();
         
			String sql = "delete from si_board where seq = ?";
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, vo.getSeq());
			cnt = stmt.executeUpdate();
       
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(stmt, conn);
		}
      
		return cnt;
   }

   // 글 수정
   public void updateBoard(int num, String title, String content) {
      try {
         conn = JDBCConnection.getConnection();
         
         String sql = "update si_board set title = ?, content = ? where seq = ?";
         stmt = conn.prepareStatement(sql);
         stmt.setString(1, title);
         stmt.setString(2, content);
         stmt.setInt(3, num);
         
         stmt.executeUpdate();
         
      } catch (ClassNotFoundException e) {
         e.printStackTrace();
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         JDBCConnection.close(stmt, conn);
      }

   }
   
   // 하나의 글 가져오기
   public BoardVO getOneUpdateBoard(int num) {
      BoardVO bean = null;
      try {
         conn = JDBCConnection.getConnection();
         // SQL
         String sql = "select * from si_board where seq=?";
         // ?
         stmt = conn.prepareStatement(sql);
         // ? 매핑
         stmt.setInt(1, num);
         // 실행
         rs = stmt.executeQuery();
         // 사용
         while(rs.next()) {
            bean = new BoardVO();
            bean.setSeq(rs.getInt(1));
            bean.setType(rs.getString(2));
            bean.setChoice(rs.getString(3));
            bean.setTitle(rs.getString(4));
            bean.setContent(rs.getString(5));
            bean.setUser_name(rs.getString(6));
            bean.setUser_email(rs.getString(7));
            bean.setFirst_tel(rs.getString(8));
            bean.setSecond_tel(rs.getString(9));
            bean.setRegdate(rs.getDate(10));
            bean.setCnt(rs.getInt(11));
            bean.setRef(rs.getInt(12));
            bean.setRe_step(rs.getInt(13));
            bean.setRe_level(rs.getInt(14)); 
         }
         // 반납
         stmt.close();
         rs.close();
         conn.close();

      } catch (ClassNotFoundException e) {
         e.printStackTrace();
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         JDBCConnection.close(rs, stmt, conn);
      }

      return bean;
   }

	public BoardVO getOneBoard(int num) {
		BoardVO bean = new BoardVO();
		try {
	         conn = JDBCConnection.getConnection();
	         // SQL
	         String sql = "select * from si_board where seq=?";
	         // ?
	         stmt = conn.prepareStatement(sql);
	         // ? 매핑
	         stmt.setInt(1, num);
	         // 실행
	         rs = stmt.executeQuery();
	         // 사용
	         while(rs.next()) {
	            bean.setSeq(rs.getInt(1));
	            bean.setType(rs.getString(2));
	            bean.setChoice(rs.getString(3));
	            bean.setTitle(rs.getString(4));
	            bean.setContent(rs.getString(5));
	            bean.setUser_name(rs.getString(6));
	            bean.setUser_email(rs.getString(7));
	            bean.setFirst_tel(rs.getString(8));
	            bean.setSecond_tel(rs.getString(9));
	            bean.setRegdate(rs.getDate(10));
	            bean.setCnt(rs.getInt(11));
	            bean.setRef(rs.getInt(12));
	            bean.setRe_step(rs.getInt(13));
	            bean.setRe_level(rs.getInt(14)); 
	         }
	         // 반납
	         stmt.close();
	         rs.close();
	         conn.close();

	      } catch (ClassNotFoundException e) {
	         e.printStackTrace();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         JDBCConnection.close(rs, stmt, conn);
	      }

	      return bean;
	}
		
	
	
	
	
	
	
	
	
	
	
}
