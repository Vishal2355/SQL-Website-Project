<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Check Create Car</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/light.min.css">
</head>
<body>


	<%
	PreparedStatement ps = null;
	ResultSet rs = null;
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Auctions", "root", "Piscataway1sql");


	Statement stmt = con.createStatement();

	String category = request.getParameter("category");
	String brand = request.getParameter("brand");
	String color = request.getParameter("color");
	String year = request.getParameter("year");
	String UserID = session.getAttribute("user").toString();
	String insert = "INSERT INTO product (category, brand, color, year, seller)" + "VALUES(?, ?, ?, ?, ?)";
	ps = con.prepareStatement(insert, Statement.RETURN_GENERATED_KEYS);
	ps.setString(1, category);
	ps.setString(2, brand);
	ps.setString(3, color);
	ps.setString(4, year);
	ps.setString(5, UserID);
	int result = 0;
	result = ps.executeUpdate();
	if (result < 1) {
		out.println("Error: Product creation failed.");
	} else {
		rs = ps.getGeneratedKeys();
		rs.next();
		int product_id = rs.getInt(1);
		response.sendRedirect("showAllCars.jsp");
		return;

	}
	%>
</body>
</html>