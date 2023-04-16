package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MachineDAO;
import DAO.regDao;


@WebServlet("/playServlet")
public class playServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MachineDAO dao = new MachineDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		String play=request.getParameter("play");
		System.out.println(name+play);
		
		if(play.equals("사용")) {
			dao.machinestart(name);		
		}else {
			dao.machineand(name); 
		}
		response.sendRedirect("PalyMachineList");
		
	}

}
