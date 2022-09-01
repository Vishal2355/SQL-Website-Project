<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Create Alerts</title>

</head>
<body style="background-color: coral;">
	<%
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Auctions", "root", "Piscataway1sql");
	Statement st = con.createStatement();
	PreparedStatement ps = null;
	ResultSet result = null;
	int product_id = Integer.parseInt(request.getParameter("product_id"));
	String username = (String) session.getAttribute("user");
	String insert = "INSERT INTO alerts(UserID, alert_message, product_id)" + "VALUES (?, ?, ?)";
	ps = con.prepareStatement(insert);
	String message = "Alert set for this item";
	ps.setString(1, username);
	ps.setString(2, message);
	ps.setInt(3, product_id);
	ps.executeUpdate();

	response.sendRedirect("alertSuccess.jsp");
	%>

</body>
</html>
