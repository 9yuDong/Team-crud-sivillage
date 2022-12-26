package view.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.board.BoardDAO;
import biz.board.BoardVO;


@WebServlet("/UpdateBoardCtrl.do")
public class UpdateBoardCtrl extends HttpServlet {
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGetPost(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGetPost(request, response);
   }

   // Get Post 처리
   protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");
      
      // num값 받기
      int num = Integer.parseInt(request.getParameter("num"));
      String title = request.getParameter("title");
      String content = request.getParameter("content");

      // DAO
      BoardDAO bdao = new BoardDAO();
      bdao.updateBoard(num,title,content);
      
      RequestDispatcher dis = request.getRequestDispatcher("GetBoardListCtrl");
      dis.forward(request, response);
   }

}