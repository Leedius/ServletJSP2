

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stu.Student;

@WebServlet("/regStudent")
public class RegStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegStudentServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글 인코딩
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		//데이터 받기
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age")); 
		int score = Integer.parseInt(request.getParameter("score")); 
		
		//모든 데이터를 가져갈 Student 객체 생성
		//방법1
//		Student students = new Student();
//		students.setName(name);
//		students.setAge(age);
//		students.setScore(score);
		
		//방법2
		Student students = new Student(name, age, score);
		
		//데이터 보내기
		request.setAttribute("student", students);
		
		//페이지 이동
		RequestDispatcher dispatcher = request.getRequestDispatcher("show_stu.jsp");
		dispatcher.forward(request, response);

	}

}
