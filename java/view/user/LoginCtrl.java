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


@WebServlet("/LoginCtrl")
public class LoginCtrl extends HttpServlet {
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
      vo.setId(request.getParameter("id"));
      vo.setPassword(request.getParameter("password"));
      UserDAO udao = new UserDAO();
      UserVO user = udao.loginMember(vo);
      
      if(user != null) {
         System.out.println(user.getId());
         System.out.println(user.getName());
         HttpSession session = request.getSession();
         String mbNo = user.getTel();

              String result = mbNo.substring(mbNo.length()-8, mbNo.length());

         session.setAttribute("name", user.getName());
         session.setAttribute("email", user.getEmail());
         session.setAttribute("tel", result);
         session.setAttribute("id", user.getId());
         session.setAttribute("role", user.getRole());
             response.sendRedirect("index.jsp");
             
      }else {
         response.sendRedirect("login.jsp");
      }
   
   }

}