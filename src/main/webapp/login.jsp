<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Form</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/light.min.css">
</head>
<body style="background-color: coral">
	<h3 >Login</h3>
	<form action="checkLoginDetails.jsp" method="POST">
		Username: <input type="text" name="UserID" /> <br /> Password: <input
			type="password" name="password" /> <br /> <input
			style="background-color: wheat;" type="submit" value="Submit" />
	</form>
	<a style="color: indianred;" href="register.jsp">Don't have an
		account? Register here.</a>
</body>
</html>