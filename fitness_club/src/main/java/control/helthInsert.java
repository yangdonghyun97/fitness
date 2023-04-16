package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.regDao;
import vo.helthinMember;

/**
 * Servlet implementation class PositionServlet
 */
@WebServlet("/helthinsert")
public class helthInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	regDao dao = new regDao();
	helthinMember vo= new helthinMember();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("id");
		System.out.println(id);
		HttpSession session = request.getSession();
		session.setAttribute("pid", id);   
		vo.setId(id);
		dao.helthInsert(vo);
	
		
	}

}
