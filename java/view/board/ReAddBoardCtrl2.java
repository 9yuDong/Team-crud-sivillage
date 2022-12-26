package view.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.board.BoardVO;
import biz.board.BoardDAO;

@WebServlet("/ReAddBoardCtrl2.do")
public class ReAddBoardCtrl2 extends HttpServlet {

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGetPost(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGetPost(request, response);
   }
   // get, post
   protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // 한글처리
      request.setCharacterEncoding("utf-8");
      // 폼 데이터 받음
      BoardVO vo = new BoardVO();
      vo.setType(request.getParameter("type"));
      vo.setChoice(request.getParameter("choice"));
      vo.setTitle(request.getParameter("title"));
      vo.setContent(request.getParameter("content"));
      vo.setUser_name(request.getParameter("user_name"));
      vo.setUser_email(request.getParameter("user_email"));
      vo.setFirst_tel(request.getParameter("first_tel"));
      vo.setSecond_tel(request.getParameter("second_tel"));
      //vo.setRegdate(request.getParameter("regdate").toString());
      vo.setRef(Integer.parseInt(request.getParameter("ref")));
      vo.setRe_step(Integer.parseInt(request.getParameter("re_step")));
      vo.setRe_level(Integer.parseInt(request.getParameter("re_level")));
      
      BoardDAO bdao = new BoardDAO();
      bdao.reInsertBorad(vo);
      
      // 포워딩
      RequestDispatcher dis = request.getRequestDispatcher("GetBoardListCtrl");
      dis.forward(request, response);
      
      
      
      
      
   }

}