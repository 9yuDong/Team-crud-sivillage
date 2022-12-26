package view.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.board.BoardDAO;
import biz.board.BoardVO;


@WebServlet("/DeleteBoardCtrl.do")
public class DeleteBoardCtrl extends HttpServlet {
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGetPost(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGetPost(request, response);
   }

   // Get Post 처리
   protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      request.setCharacterEncoding("utf-8");
      int num = Integer.parseInt(request.getParameter("num"));
      
      BoardVO vo = new BoardVO();
      vo.setSeq(num);
      
      BoardDAO bdao = new BoardDAO();
      int cnt = bdao.deleteBoard(vo);
      
      if(cnt != 0) response.sendRedirect("GetBoardListCtrl");
   }

}