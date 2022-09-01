<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checking Register Details</title>
</head>
<body>
	<jsp:include page="checkWinner.jsp" />

	<%
	String userID = request.getParameter("UserID");
	String pass = request.getParameter("password");
	String email = request.getParameter("email");
	String name = request.getParameter("name");
	String account_type = request.getParameter("account_type");

	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Auctions", "root", "Piscataway1sql");
	Statement st = con.createStatement();

	ResultSet rs = null;
	rs = st.executeQuery("select * from account where UserID='" + userID + "'");

	if (rs.next()) {
		out.println("This username already exists!!! <a href='register.jsp'>Register</a>");
	} else {
		int index = st.executeUpdate("INSERT INTO `account` VALUES('" + name + "', '" + userID + "', '" + pass + "', '"
		+ email + "', '" + account_type + "')");

		session.setAttribute("user", userID);

		out.println("<h3> Account Registered Successfully");

		out.println("<form action='login.jsp'><input type='submit' value='Login'/></form>");
	}
	%>

</body>
</html>