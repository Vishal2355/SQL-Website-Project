<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Check Admin Login</title>
<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/light.min.css">
</head>
<body  style="background-color: coral;">
	<%
	String userid = request.getParameter("username");
	String pwd = request.getParameter("password");
	Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Auctions", "root", "Piscataway1sql");
    Statement stmt = con.createStatement();
	ResultSet rs = null;
	rs = stmt.executeQuery("select * from admin where UserID='" + userid + "'");
	if (rs.next()) {
		ResultSet rs1;
		out.println(userid);
		out.println(pwd);
		rs1 = stmt.executeQuery("select * from admin where UserID='" + userid + "' and password='" + pwd + "'");
		if (rs1.next()) {
			session.setAttribute("admin", userid); 
			response.sendRedirect("adminPage.jsp");
			out.println("welcome " + userid);
			out.println("<a href='logout.jsp'>Log out</a>");
		} else {
			out.println("Invalid password <a href='admin.jsp'>try again</a>");
		}
	} else {
		out.println("Invalid username <a href='adminLogin.jsp'>try again</a>");
	}
	%>

</body>
</html>