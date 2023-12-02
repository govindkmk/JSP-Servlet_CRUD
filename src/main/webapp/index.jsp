<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Registration Form</title>
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
                /* display: flex; */
                font-family: sans-serif;
            }
            .container{
                margin: auto;
                width: 500px;
                max-width: 90%;
            }
            .container form{
                width: 100%;
                height: 100%;
                padding: 20px;
                background: white;
                border-radius: 4px;
                box-shadow: 0 8px 16px rgba(0, 0, 0, .3);
            }
            .container form h1{
                text-align: center;
                margin-bottom: 24px;
                color: #222;
            }
            .container form .form-control{
                width: 100%;
                height: 40px;
                background: white;
                border-radius: 4px;
                border: 1px solid silver;
                margin: 10px 0 18px 0;
                padding: 0 10px;
            }
            .form-gender{
                font-size:x-large;
                margin: 10px 0px 18px 50px;
                padding: 0 10px;
            }
            .gender{
                width: 20%;
                height:1.5em;
            }
            .container form .btn{
                margin-left: 50%;
                transform: translateX(-50%);
                width: 120px;
                height: 34px;
                border: none;
                outline: none;
                background: green;
                cursor: pointer;
                font-size: 16px;
                text-transform: uppercase;
                color: white;
                border-radius: 4px;
                transition: .3s;
            }
            .container form .btn:hover{
                opacity: .7;
            }
        </style>
</head>
<body>


	<div class="nav-bar">
            <nav class="nav nav-pills nav-fill">
                <a class="nav-link active" aria-current="page" href="#">Home</a>
                <a class="nav-link" href="GetAllStudents.jsp">Get All Students</a>
                <a class="nav-link" href="LoginForm.jsp">Logout</a>
            </nav>
        </div><br>
        <div class="container">
            <form action="AddStudentServlet">
                <h1>Welcome to Student Registration Form </h1>
                <div class="form-group">
                    <label for="">Roll Number</label>
                    <input type="text" name="rollNumber" class="form-control" id="rollNumber" required>
                </div>
                <div class="form-group">
                    <label for="">Name</label>
                    <input type="text" name="name" class="form-control" id="name" required>
                </div>
                <div class="form-group">
                    <label for="">Father Name</label>
                    <input type="text" name="fatherName" class="form-control" id="fatherName" required>
                </div>
                <div class="form-group">
                    <label for="">Age</label>
                    <input type="number" name="age" class="form-control" id="age" required>
                </div>                
                <div class="form-group">
                    <label for="">Gender</label>
	                <div  class="form-gender" id="gender">   
	                    <input type="radio" name="gender" class="gender"  value="Male"> Male
	                    <input type="radio" name="gender" class="gender" value="Male"> Female 
	                </div>
                </div>
                <div class="form-group">
                    <label for="">Email</label>
                    <input type="email" name="email" class="form-control" id="email" required>
                </div>
                <div class="form-group">
                    <label for="">Department Name</label>
                    <select name="department" class="form-control" id="departmentName" >
                        <option value="" disabled selected>--Select Department--</option>
                        <option value="BS Computer Science">BS Computer Science</option>
                        <option value="BE Computer System">BE Computer System</option>
                        <option value="Telecommunication">BE Telecommunication</option>
                        <option value="City Regional Planning">City Regional Planning</option>
                        <option value="Electronics">Electronics Engineering</option>
                        <option value="Electrical">Electrical Engineering</option>
                        <option value="Software Engineering">Software Engineering</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="">Date of Birth</label>
                    <input type="date" name="dateOfBirth" class="form-control" id="dob" required>
                </div>
                <input type="submit" class="btn" value="Register">
            </form>
        </div>
        
</body>
</html>