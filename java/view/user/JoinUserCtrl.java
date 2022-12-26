package view.user;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.user.UserDAO;
import biz.user.UserVO;


@WebServlet("/JoinUserCtrl")
public class JoinUserCtrl extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	// Get Post 泥섎━
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		// �뤌 �뙆�씪硫뷀꽣 媛� 諛쏄린
		String email = request.getParameter("email");
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		String pw2 = request.getParameter("password2");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String bday = request.getParameter("bday");
		String address = request.getParameter("address");
		
		// 諛곗뿴 媛� 諛쏄린
		String[] agree = request.getParameterValues("agree");
		String data = "";
		for(String check : agree) {
			data += check + "";
		}
		
		UserVO bean = new UserVO();
		
		bean.setEmail(email);
		bean.setId(id);
		bean.setPassword(pw);
		bean.setName(name);
		bean.setTel(tel);
		bean.setBday(bday);
		bean.setAddress(address);
		bean.setAgree(data);
		
		
		
		
		if(pw.equals(pw2)) {
			
			UserDAO dao = new UserDAO();			
			dao.insertUser(bean);
			// �룷�썙�뵫
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);
			
		}
		
		
		
	}

}
