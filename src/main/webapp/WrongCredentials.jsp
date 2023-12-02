<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Form</title>
	<style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            body{
                min-height: 100vh;
                background: #eee;
                display: flex;
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
            .container form .btn{
                margin-left: 50%;
                transform: translateX(-50%);
                width: 150px;
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
	<div class="container">
		<form action="LoginForm.jsp">
		    <h1>Wrong Credentials</h1>
		<input type="submit" class="btn" value="Back to Login">
		</form>
	</div>
     
</body>
</html>