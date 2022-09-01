<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Alerts</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/light.min.css">
</head>
<body style = "background-color: coral">
	<button onclick="window.location.href='accountInfo.jsp';">Return
		to account page</button>

	<h2>View your alerts</h2>
	<%
	try {

		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Auctions", "root", "Piscataway1sql");

		Statement stmt = con.createStatement();

		String user = session.getAttribute("user").toString();
		String str = "select * from alerts a where a.UserID=?";
		ResultSet result = null;
		PreparedStatement ps2 = con.prepareStatement(str);
		ps2.setString(1, user);
		result = ps2.executeQuery();
		out.print("<table>");
		out.print("<tr>");
		out.print("<th>");
		out.print("Alert ID ");
		out.print("</th>");
		out.print("<th>");
		out.print("Alert Message");
		out.print("</th>");
		out.print("<th>");
		out.print("Product ID");
		out.print("</th>");
		out.print("<th>");
		out.print("Auction ID");
		out.print("</th>");
		out.print("</tr>");
		while (result.next()) {
			out.print("<tr>");
			out.print("<td>");
			out.print(result.getInt("alert_id"));
			out.print("</td>");
			out.print("<td>");
			out.print(result.getString("alert_message"));
			out.print("</td>");
			out.print("<td>");
			out.print(result.getInt("product_id"));
			out.print("</td>");
			if (result.getInt("auction_id") == 0) {
		out.print("<td>");
		out.print("No Auction yet");
		out.print("</td>");
			} else {
		out.print("<td>");
		out.print(result.getInt("auction_id"));
		out.print("</td>");
			}
			out.print("</tr>");
		}
		out.print("</table>");
		con.close();
	} catch (Exception e) {
	}
	%>

</body>
</html>