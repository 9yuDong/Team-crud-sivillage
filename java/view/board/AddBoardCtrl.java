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



@WebServlet("/AddBoardCtrl.do")
public class AddBoardCtrl extends HttpServlet {
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGetPost(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGetPost(request, response);
   }


   
   protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");
      BoardVO vo = new BoardVO();
      HttpSession session = request.getSession();
      String name = (String)session.getAttribute("name");
      if(name==null) {
         response.sendRedirect("login.jsp");
      }
      String type = request.getParameter("type");
      String choice = request.getParameter("choice");
      String title = request.getParameter("title");
      String content = request.getParameter("content");
      String user_name = request.getParameter("user_name");
      String user_email = request.getParameter("user_email");
      String first_tel = request.getParameter("first_tel");
      String second_tel = request.getParameter("choice");
      
      vo.setType(type);
      vo.setChoice(choice);
      vo.setTitle(title);
      vo.setContent(content);
      vo.setUser_name(user_name);
      vo.setUser_email(user_email);
      vo.setFirst_tel(first_tel);
      vo.setSecond_tel(second_tel);
      BoardDAO bdao = new BoardDAO();
      int cnt = bdao.addboard(vo);
      
      //황규동 sendRedirect 수정  12/08
      if(cnt != 0) {   response.sendRedirect("GetBoardListCtrl");}
      
      }
      
      
      
      
   

}