package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.StudentDAO;
import daoimpl.StudentDAOImp;
import model.Student;


/**
 * Servlet implementation class UpdateStudentServlet
 */
@WebServlet("/UpdateStudentServlet")
public class UpdateStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		StudentDAO studentDAO = new StudentDAOImp();
		HttpSession hs = request.getSession();
		Student student = (Student) hs.getAttribute("studentId");
		
		System.out.println(student.getId());
		try {
			
			String rollNumber = request.getParameter("rollNumber");
			String name = request.getParameter("name");
			String fatherName = request.getParameter("fatherName");
			String email = request.getParameter("email");
			int age = Integer.parseInt(request.getParameter("age"));
			String gender = request.getParameter("gender");
			String departmentName = request.getParameter("departmentName");
			String dob = request.getParameter("dateOfBirth");
			
			student.setRollNumber(rollNumber); 
			student.setName(name);
			student.setFatherName(fatherName); 
			student.setEmail(email);
			student.setAge(age);
			student.setGender(gender); 
			student.setDepartmentName(departmentName);
			student.setDateOfBirth(dob);
							 
			boolean success = studentDAO.updateStudent(student);
			
			if(success) {
				response.sendRedirect("GetAllStudents.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
