package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MachineDAO;
import vo.MachineVO;

@WebServlet("/PalyMachineList")
public class PalyMachineList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MachineDAO dao = new MachineDAO();
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		
		ArrayList<MachineVO> list = new ArrayList<MachineVO>();
		
		list=dao.playMachine();
		request.setAttribute("list", list);
		request.getRequestDispatcher("gymSeat.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
