

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegServlet2")
public class RegServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegServlet2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글 인코딩
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		System.out.println("doPost() 메소드 실행");
		
		//데이터 받고 넘기기
		request.setAttribute("id", request.getParameter("id"));
		request.setAttribute("pw", request.getParameter("pw"));
		request.setAttribute("name", request.getParameter("name"));
		request.setAttribute("email", request.getParameter("email"));
		request.setAttribute("date", request.getParameter("date"));
		//연락처 정보 가공 : ex)010-0000-0000
		String[] tell =  request.getParameterValues("tell");
		String phone = "";
		for(String e : tell) { //"010-"
			phone = phone + e + "-"; // "010-" + " "1111" + "-" + "2222" + "-"
		}
		//13글자중 마지막 -1만큼까지만 출력
		phone = phone.substring(0, phone.length()-1);
		request.setAttribute("tell", phone);
		
		request.setAttribute("lesson", request.getParameterValues("lesson"));
		request.setAttribute("answer", request.getParameter("answer"));
		request.setAttribute("refferal", request.getParameter("refferal"));
		request.setAttribute("introduce", request.getParameter("introduce"));
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("memberInfo.jsp");
		dispatcher.forward(request, response);
	
	}
}
