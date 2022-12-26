package view.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.board.BoardDAO;
import biz.board.BoardVO;


@WebServlet("/GetBoardListCtrl")
public class GetBoardListCtrl extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	// Get Post 처리
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// # 1. 넘버링 페이지
		
		// 화면에 보여질 게시판 글 갯수 지정
		int pageSize = 10;
		// 현재 보여지고 있는 페이지의 넘버값 읽기
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum ="1";
		}
		
		// 전체 게시글의 갯수 = 이전, 이후 버튼 필요유무 판별시 사용
		int count = 0;
		// JSP 페이지 내에서 보여질 넘버링 숫자값 저장 변수
		int number = 0;
		//  현재 보여지고 있는 페이지 정보 = 숫자로 형변환
		int currentPage = Integer.parseInt(pageNum);
		
		// # 2. 전체 글의 갯수를 가져와야 하기 때문에 비지니스 로직 처리
		BoardDAO bdao = new BoardDAO();
		count = bdao.getAllCount();
		
		// # 3. 전체 보여질 페이지의 시작 번호를 설정
		int startRow =(currentPage-1) * pageSize +1;
		int endRow = currentPage * pageSize;
		
		// # 4. 최신글 5개를 기준으로 게시판의 글을 리턴
		ArrayList<BoardVO> list = bdao.getAllBoard(startRow, endRow);
		// 화면에 보일 number 설정
		number = count - (currentPage-1) * pageSize;
		
		//ArrayList<BoardVO> list = bdao.getBoardList();
		// 바인딩
		request.setAttribute("list", list);
		request.setAttribute("number", number);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("count", count);
		request.setAttribute("currentPage", currentPage);
		
		RequestDispatcher dis = request.getRequestDispatcher("getBoardList.jsp");
		dis.forward(request, response);
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
