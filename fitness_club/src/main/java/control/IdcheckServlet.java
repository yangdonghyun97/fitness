package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.regDao;
import vo.MemberVO;

/**
 * Servlet implementation class IdcheckServlet
 */
@WebServlet("/IdcheckServlet")
public class IdcheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	regDao dao= new regDao();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String id=request.getParameter("id");
		int result=0;
		MemberVO vo= new MemberVO();
		vo.setId(id);
		result=dao.idcheck(vo);
		
		PrintWriter out = response.getWriter();
		if(result==1) {
			out.print("사용중인 아이디입니다");
		}else{
			out.print("사용가능한 아이디입니다");
		}
	}

}
