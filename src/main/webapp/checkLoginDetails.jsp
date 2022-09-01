<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Check Login Details</title>
<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/light.min.css">
</head>
<body  style = "background-color: coral">
<jsp:include page="checkWinner.jsp" />

<%
    String userid = request.getParameter("UserID");   
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Auctions", "root", "Piscataway1sql");
    Statement stmt = con.createStatement();
	
    ResultSet rs;
    rs = stmt.executeQuery("select * from account where UserID='" + userid + "'");
    if (rs.next()){
    	 ResultSet rs1;
    	    rs1 = stmt.executeQuery("select * from account where UserID='" + userid + "' and password='" + pwd + "'");
    	    if (rs1.next()) {
    	    	session.setAttribute("user", userid);
    	    	session.setAttribute("account_type", 
    	    			rs1.getString("account_type"));
    	        response.sendRedirect("accountInfo.jsp");
    	        out.println("welcome " + userid);
    	        out.println("<a href='Logout.jsp'>Log out</a>");
    	        out.println("<a href='accountInfo.jsp'>Account Page</a>");
    	    } else {
    	    	out.println(userid);
    	        out.println("Invalid password <a href='login.jsp'>try again</a>");
    	    }
    }
    else{
    	out.println("Username doesn't exist <a href= 'register.jsp'>Create An Account</a>");
    }
   
%>

</body>
</html>