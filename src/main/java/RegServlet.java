

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		System.out.println("doPost() 메소드 실행");
		
		//데이터 받기
		String[] tell = request.getParameterValues("tell");
		//데이터 보내기
		request.setAttribute("tell", tell);
		
		//데이터 받고 보내기
		request.setAttribute("id", request.getParameter("id"));
		request.setAttribute("pw", request.getParameter("pw"));
		request.setAttribute("name", request.getParameter("name"));
		request.setAttribute("email", request.getParameter("email"));
		request.setAttribute("date", request.getParameter("date"));
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("regMemberDetail.jsp");
		dispatcher.forward(request, response);
	
	}

}
