

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Servlet01")
public class Servlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Servlet01() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet() 메소드 실행");
		
		//데이터 받기
		String name = request.getParameter("name");
		String age =  request.getParameter("age");
		
		System.out.println(name);
		System.out.println(age);
		
		//jsp로 페이지 이동
		//result1.jsp로 페이지만 이동(데이터 못 가져 감)
		//response.sendRedirect("result1.jsp");
		
		//데이터 적제(가져갈 이름)
		request.setAttribute("id", "java");
		request.setAttribute("score", 80);
		request.setAttribute("name", name);
		request.setAttribute("age", age);
			
		
		//데이터를 전달할 수 있는 페이지 이동 기법
		RequestDispatcher dispatcher = request.getRequestDispatcher("regMemberDe.jsp");
		dispatcher.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
