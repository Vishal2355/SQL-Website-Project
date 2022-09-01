<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Filter Items</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/light.min.css">
</head>
<body style = "background-color: coral">
	<button onclick="window.location.href='accountInfo.jsp';">Return
		to Homepage</button>
	<br>

	<b> Search the list of items by various criteria </b>
	<br>
	<b> Items in * are required </b>
	<br>
	<br>
	<form method="post" action="checkFilterProductDetails.jsp">
		<label for="brand">*Brand</label> <select name="category" id="category"
			required>
			<option value="" disabled selected hidden="true">Select
				category</option>
			<option value="Car">Car</option>
			<option value="Truck">Truck</option>
			<option value="Motorbike">Motorbike</option>
			


		</select> <br>
		<table>
			<tr>
				<td>Brand:</td>
				<td><input type="text" name="brand"></td>
			</tr>
			<tr>
				<td>Color:</td>
				<td><input type="text" name="color"></td>
			</tr>
			<tr>
				<td>Year:</td>
				<td><input type="text" name="year"></td>
			</tr>
			<tr>
				<td>Seller:</td>
				<td><input type="text" name="seller"></td>
			</tr>
			<tr>
				<td>Price less than:</td>
				<td><input type="text" name="price"></td>
			</tr>
		</table>
		<label for="status">*status</label> <select name="status" id="status"
			required>
			<option value="" disabled selected hidden="true">Select
				category</option>
			<option value="open">open</option>
			<option value="close">closed</option>
			<option value="both">both</option>

		</select> <br> <input type="submit" value="Search">
	</form>
</body>
</html>