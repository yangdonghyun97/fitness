package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.regDao;
import vo.helthinMember;

/**
 * Servlet implementation class workingServelt
 */
@WebServlet("/workingServelt")
public class workingServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
	regDao dao= new regDao();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<helthinMember> list = new ArrayList<>();
		list=dao.helthworking();
		System.out.println(list);
		request.setAttribute("list",list);
		request.getRequestDispatcher("main.jsp").forward(request, response);
		
	}

}
