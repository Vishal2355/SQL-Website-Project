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
<body style = "background-color: coral">
	<jsp:include page="checkWinner.jsp" />
	<%@ page import="java.sql.*"%>
	<%
	String userid = request.getParameter("UserID");
	String pwd = request.getParameter("password");
	Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Auctions", "root", "Piscataway1sql");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from customerrep where UserID='" + userid + "'");
    response.sendRedirect("customerRepHome.jsp");
    
    //if (rs.next()){
    //	 ResultSet rs1;
    //	    rs1 = st.executeQuery("select * from customerrep where UserID='" + userid + "' and password='" + pwd + "'");
    //	    if (rs1.next()) {
	//	session.setAttribute("customerrep", userid);
	//	response.sendRedirect("customerRepHome.jsp");
	//	out.println("welcome " + userid);
	//	out.println("<a href='logout.jsp'>Log out</a>");
    //	    }else{
    //			out.println("Invalid password <a href='customerRep.jsp'>try again</a>");

    //	    }
	//} else {
	//	out.println("Invalid username <a href='customerRep.jsp'>try again</a>");
	//}
	%>

</body>
</html>