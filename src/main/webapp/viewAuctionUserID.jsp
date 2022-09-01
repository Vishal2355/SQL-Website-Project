<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>View Auctions By UserID</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/light.min.css">
</head>
<body style = "background-color: coral">
	<button onclick="window.location.href='accountInfo.jsp';">Return
		to Account Page</button>
	<h2>View Auctions that Other Users have participated in</h2>
	<p>The auctions he has either created or bid on</p>
	"
	<%
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Auctions", "root", "Piscataway1sql");

	Statement stmt = con.createStatement();
	ResultSet result = null;
	try {
		String UserID = request.getParameter("UserID");
		String str = "select auction_id, seller from auction where seller ='" + UserID + "'"
		+ "UNION select auction_id, buyer from bid where buyer = '" + UserID + "'";
		;
		result = stmt.executeQuery(str);

		out.print("<table>");
		out.print("<tr>");
		out.print("<th>");
		out.print("UserID");
		out.print("</th>");
		out.print("<th>");
		out.print("Auction ID");
		out.print("</th>");
		while (result.next()) {
			out.print("<tr>");
			out.print("<td>");
			out.print(UserID);
			out.print("</td>");
			out.print("<td>");
			out.print(result.getInt("auction_id"));
			out.print("</td>");
			out.print("</tr>");
		}
		out.print("</table>");
	} catch (Exception e) {
		out.print(e);
	} finally {
		if (result != null)
			result.close();
		if (stmt != null)
			stmt.close();
		if (con != null)
			con.close();
	}
	%>

</body>
</html>