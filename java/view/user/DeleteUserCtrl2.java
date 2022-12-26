package view.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.user.UserDAO;
import biz.user.UserVO;

@WebServlet("/DeleteUserCtrl2")
public class DeleteUserCtrl2 extends HttpServlet {
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		String name = (String)session.getAttribute("name");
		
		UserVO vo = new UserVO();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		
		vo.setId(id);
		vo.setPassword(pw);
		
		UserDAO dao = new UserDAO();
		
		UserVO user = dao.CheckUser(vo);
		
		
		if(name.equals(user.getName())) { // 세션 이름과 DB이름 비교
			
			if(user != null) { // DB갑이 있으면
				dao.DeleteUser(user.getSeq()); // 해당 seq 삭제
				response.sendRedirect("index.jsp");				
			}
		} else {
			response.sendRedirect("delete_user.jsp");
		}
		
		
		
	}

}
