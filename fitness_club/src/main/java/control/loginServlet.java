package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.regDao;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	regDao dao = new regDao();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		int result=0;
		String id =request.getParameter("id");
		String pw =request.getParameter("pw");
		result=dao.login(id,pw);
		PrintWriter out = response.getWriter();
		if(result==1) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			response.sendRedirect("workingServelt");
		}else if(result==0) {
			String alert="잘못된 정보입니다";
		request.setAttribute("alert", alert);
		request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}
