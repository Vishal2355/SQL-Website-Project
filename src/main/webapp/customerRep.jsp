<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Representative Login</title>
<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/light.min.css">
</head>
<body style = "background-color: color">
<h2> Customer Rep Login</h2>
	<form action="checkCustomerRepLogin.jsp" method="POST">
		Username: <input type="text" name="username" /> <br /> Password: <input
			type="password" name="password" /> <br /> <input type="submit"
			value="Submit" />
	</form>

</body>
</html>