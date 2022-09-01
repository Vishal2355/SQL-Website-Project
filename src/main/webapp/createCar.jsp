<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Car</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/light.min.css">
</head>
<body style="background-color: coral;">
	<button style="background-color: wheat;"
		onclick="window.location.href='accountInfo.jsp';">Return to
		Homepage</button>
	<h2>Select Car</h2>
	<div class="content">
		<form action="checkCreateCar.jsp" method="POST">
			<label style="color: indianred;" for="category">Category</label> <br>
			<select name="category" id="category" required>
				<option value="" disabled selected hidden="true">Brand</option>
				<option value="Car">Car</option>
				<option value="Truck">Truck</option>
				<option value="Motorbike">Motorbike</option>
			</select> <br>
			
			
			<table>
				<tr>
					<td style="color: indianred;">Brand:</td>
					<td><input type="text" name="brand" required></td>
				</tr>
				<tr>
					<td style="color: indianred;">Color:</td>
					<td><input type="text" name="color" required></td>
				</tr>
				<tr>
					<td style="color: indianred;">Year:</td>
					<td><input type="text" name="year" required></td>
				</tr>
				<tr>
			</table>
			<input type="submit" value="Create Car">
		</form>
	</div>
</body>
</html>