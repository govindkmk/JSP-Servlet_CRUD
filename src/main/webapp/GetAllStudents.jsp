<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.IOException, java.sql.SQLException, dao.StudentDAO, daoimpl.*, model.Student, java.util.List, java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>All Students</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            body{
                min-height: 100vh;
                background: #eee;
                font-family: sans-serif;
            }
            .container{
                margin: auto;
                max-width: 90%;
                width: 65%;
                padding: 10px;
                text-align: center;
                border-radius: 15px;
            }
            .table {
                padding: 5px;
                margin: 5px;
                border-color: antiquewhite;
            }
            
            
        </style>
</head>
<body>

	<%
	StudentDAO studentDAO = new StudentDAOImp();
	
	List<Student> students = new ArrayList<>();
	
	try {
		students = studentDAO.getAllStudents();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	%>
	<div class="nav-bar">
            <nav class="nav nav-pills nav-fill">
                <a class="nav-link" href="index.jsp">Home</a>
                <a class="nav-link active" aria-current="page" href="#">Get All Students</a>
                <a class="nav-link" href="LoginForm.jsp">Logout</a>
            </nav>
        </div><br>

        <div class="container">
            <table class="table">
                <thead>
                    <th>Id</th>
                    <th>Roll Number</th>
                    <th>Name</th>
                    <th>Father Name</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>Age</th>
                    <th>Department Name</th>
                    <th>Date of Birth</th>
                    <th colspan=2>Action</th>
                </thead>
                <% for(Student student: students){ %>
                <tr>
                	<td><%= student.getId() %></td>
                	<td><%= student.getRollNumber() %></td>
                	<td><%= student.getName() %></td>
                	<td><%= student.getFatherName() %></td>
                	<td><%= student.getEmail() %></td>
                	<td><%= student.getGender() %></td>
                	<td><%= student.getAge() %></td>
                	<td><%= student.getDepartmentName() %></td>
                	<td><%= student.getDateOfBirth() %></td>
                	<td><a href="UpdateServlet?action=UPDATE&studentId=<%= student.getId() %>">Edit</a></td>
                	<td><a href="DeleteStudentServlet?action=DELETE&studentId=<%= student.getId() %>">Delete</a></td>
                	<%} %>
                </tr>
            </table>

        </div>
</body>
</html>