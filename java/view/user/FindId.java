package view.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.user.UserDAO;
import biz.user.UserVO;


@WebServlet("/findid")
public class FindId extends HttpServlet {
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGetPost(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGetPost(request, response);
   }

   // Get Post Òú˜ë¦¬
   protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
	   
	   request.setCharacterEncoding("utf-8");
      UserVO vo = new UserVO();
      vo.setName(request.getParameter("name"));
      vo.setTel(request.getParameter("tel"));
      UserDAO udao = new UserDAO();
      UserVO user = udao.findId(vo);
      
      if(user != null) {
         System.out.println(user.getId());
         System.out.println(user.getName());
         HttpSession session = request.getSession();
         session.setAttribute("id", user.getId());
             response.sendRedirect("FindID2.jsp");
             
      }else {

    	  	response.sendRedirect("FindID2.jsp");
      }
   
   }

}