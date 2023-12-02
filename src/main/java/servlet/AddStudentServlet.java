package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.StudentDAO;
import daoimpl.StudentDAOImp;
import model.Student;


/**
 * Servlet implementation class AddStudentServlet
 */
@WebServlet("/AddStudentServlet")
public class AddStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddStudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String rollNumber = request.getParameter("rollNumber");
		String name = request.getParameter("name");
		String fatherName = request.getParameter("fatherName");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String department = request.getParameter("department");
		String dateOfBirth = request.getParameter("dateOfBirth");
		
		StudentDAO studentDAO = new StudentDAOImp();
		Student student = new Student();
		
		student.setRollNumber(rollNumber);
		student.setName(name);
		student.setFatherName(fatherName);
		student.setAge(age);
		student.setEmail(email);
		student.setDepartmentName(department);
		student.setDateOfBirth(dateOfBirth);
		student.setGender(gender);
		
		
		
		try {
			boolean success = studentDAO.addStudent(student);
			if(success) {
				response.sendRedirect("GetAllStudents.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
