<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<STYLE type="text/css">
</STYLE>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register Account</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/light.min.css">
</head>
<body style="background-color: coral">

	<h3 style="color: black; font-size: 40px;">Create a New Customer Rep Account</h3>
	<form style="color: indianred;" action="checkCreateRep.jsp"
		method="POST">
		Enter name: <input type="text" name="name" /> <br /> 
		Enter username: <input type="text" name="UserID" /> <br /> 
		Enter password: <input type="password" name="password" /> <br /> 
		Enter email: <input type="text" name="email" /> <br /> 
		<br> <input style="background-color: wheat;" type="submit"
			value="Submit" />
	</form>
</body>
</html>