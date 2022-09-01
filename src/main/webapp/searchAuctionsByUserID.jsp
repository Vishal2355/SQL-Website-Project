<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<title>View Auctions By Users</title>
<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/light.min.css">
</head>
<body style = "background-color: coral">
	<a href="accountInfo.jsp">Return to homepage</a>
	<h3>View Auctions By Users</h3>
	<form>
		<input type="text" name="search" placeholder="UserID">
		<button type="submit">Search</button>
	</form>

	<%
	try {
		 Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Auctions", "root", "Piscataway1sql");
		    Statement stmt = con.createStatement();
		String entity = request.getParameter("search");
		String str = "SELECT * FROM account WHERE UserID LIKE '%" + entity
		+ "%' AND UserID NOT IN (SELECT UserID FROM admin) AND UserID NOT IN(SELECT UserID FROM customerrep)";
		ResultSet result = stmt.executeQuery(str);
		out.print("<table>");
		out.print("<tr>");
		out.print("<td>");
		out.print("UserID");
		out.print("</td>");
	
		out.print("</tr>");
		while (result.next()) {
			
			out.print("<tr>");
			out.print("<td>");
			out.print(result.getString("UserID"));
			out.print("</td>");
			
			
			out.print("<td>");
			out.print("<form action='viewAuctionUserID.jsp' method='post'><button name = 'UserID' type ='submit' value='"
					+ result.getString("UserID") + "'>View Auctions this User has participated in </button></form>");
			out.print("</td>");
			
			
			out.print("</tr>");
	}
	out.print("</table>");
	con.close();
	} catch (Exception e) {
	}
	%>

</body>
</html>