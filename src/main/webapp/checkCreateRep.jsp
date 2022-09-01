<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create Customer Rep Account Check Details</title>
<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/light.min.css">
</head>
<body>
<jsp:include page="checkWinner.jsp" />
	<%
	String userID = request.getParameter("UserID");
	String pwd = request.getParameter("password");
	String email = request.getParameter("email");
	String name = request.getParameter("name");
	String account_type = request.getParameter("account_type");
	Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Auctions", "root", "Piscataway1sql");
    Statement st = con.createStatement();
	ResultSet rs = null;
	
	rs = st.executeQuery("select * from customerrep where UserID ='" + userID + "'");
	//out.println(rs.next());
	if (rs.next()) {
		out.println("Username exists, please try another \n <a href='regCustomerRep.jsp'>try again</a>");
	} else {
		int a = st.executeUpdate("SET FOREIGN_KEY_CHECKS=0;");
	//	int x = st.executeUpdate("insert into account values('" + userID + "', '" + pwd + "', '"
	//	+ email + "', '" + name + "', '" + account_type + "')");
		
		
		int y = st.executeUpdate("insert into customerrep values('" + userID + "', '" + pwd + "')");
		session.setAttribute("account_type", account_type);
		//int b = stmt.executeUpdate("SET FOREIGN_KEY_CHECKS=1;");
		//out.println(y);
		out.println("Customer Representative account created");
		out.println("<br><a href = 'adminPage.jsp'>Go back to homepage</a>");
	}
	%>

</body>
</html>