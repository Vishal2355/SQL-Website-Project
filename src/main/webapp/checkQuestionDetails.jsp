<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Check Question Details</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/light.min.css">
</head>
<body style="background-color: coral">



	<%
	PreparedStatement ps = null;

	try {

		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Auctions", "root", "Piscataway1sql");

		Statement st = con.createStatement();

		String UserID = (session.getAttribute("user")).toString();
		String question = request.getParameter("question");

		if (question != null) {
			String insert = "INSERT INTO questions (UserID, question, answer)" + "VALUES (?, ?, ?)";
			ps = con.prepareStatement(insert);
			ps.setString(1, UserID);
			ps.setString(2, question);
			ps.setString(3, "Customer rep hasn't answered yet");
			int index = 0;
			index = ps.executeUpdate();
			if (index < 1) {
		out.println("Insert failed");
			} else {
		out.print(
				"<h3>Your question has been submitted successfully. Please wait for a representative to answer your question shortly.</h3>");
		out.print("<a href='searchQuestions.jsp'>Search for questions</a><br>");
		out.print("<a href='accountInfo.jsp'>Return to homepage</a>");
		return;
			}
		} else {
	%>
	<h2>Please input a question</h2>
	<p><%=session.getAttribute("user")%>, <a href="allQuestions.jsp">Click
			here to ask a question.</a>
	</p>
	<p>
		Otherwise, <a href="welcome.jsp">click here to return to the
			welcome page.</a>
		<%
		return;
		}
		} catch (Exception e) {
		out.print("<p>Error connecting to MYSQL server.</p>" + e);

		}
		%>
	
</body>
</html>