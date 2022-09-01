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

	<button onclick="window.location.href='welcome.jsp';">Return
		to Home Screen</button>
	<br>

	<h2>Admin Options</h2>
	<a href="regCustomerRep.jsp">Create Customer Rep Account</a>
	<br>
	 
	<a href="manageUsers.jsp">Manage Users</a>
	
	
	<br>
	<a href="genSalesReport.jsp">Generate Sales Report</a>
	<br>

	<a href="Logout.jsp">Log out</a>

</body>
</html>