<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/light.min.css">
</head>
<body style="background-color: coral">
<h2> Admin Page </h2>
	<form action = "checkAdminLogin.jsp" method = "post">
		Username: <input type = "text" name = "username" /> <br/>
		Password: <input type = "password" name = "password" /> <br/>
		<input type = "submit" value = "Submit" />
		
	</form>
</body>
</html>