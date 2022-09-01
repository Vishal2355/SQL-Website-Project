<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page
	import="java.io.*,java.util.*,java.sql.*, java.time.format.DateTimeFormatter, java.time.LocalDateTime, java.sql.Date"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	try {
		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Auctions", "root", "Piscataway1sql");


		String str = "CREATE TEMPORARY TABLE t2 (Select * FROM auction WHERE end_date < now() and status = 'open')";
		PreparedStatement ps = null;
		ps = con.prepareStatement(str);
		ps.executeUpdate();

		str = "UPDATE auction SET winner = 'No Winner' WHERE current_bid < min_price and auction_id in (SELECT auction_id FROM t2";
		ps = null;
		ps = con.prepareStatement(str);
		ps.executeUpdate();

		str = "UPDATE auction SET status = 'close' WHERE auction_id in (SELECT auction_id FROM t2)";
		ps = null;
		ps = con.prepareStatement(str);
		ps.executeUpdate();

		str = "SELECT * FROM t2 where current_bid > min_price";
		ps = con.prepareStatement(str);
		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			str = "INERST INTO alerts(username, alert_message, product_id, auction_id)" + "VALUES (?, ?, ?, ?)";
			ps = con.prepareStatement(str);
			ps.setString(1, rs.getString("winner"));
			ps.setString(2, "Congrats " + rs.getString("winner") + ", you have won the auction! Total amount due: $"
			+ rs.getString("current_bid"));
			ps.setInt(3, rs.getInt("product_id"));
			ps.setInt(4, rs.getInt("auction_id"));

			ps.executeUpdate();

		}

		str = "drop temporary table t2";

		ps = null;
		ps = con.prepareStatement(str);
		ps.executeUpdate();

	} catch (Exception e) {
		e.printStackTrace();
	}
	%>

</body>
</html>