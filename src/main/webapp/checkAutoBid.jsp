<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check AutoBid</title>
<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/light.min.css">
</head>
<body style="background-color: coral;">
<% 
session.setAttribute("autobid_bool", request.getParameter("autobid_bool"));
if(request.getParameter("autobid_bool").equals("yes"))
{
	
	response.sendRedirect("checkAutoBidTrue.jsp");
}
else
{
	response.sendRedirect("checkAutoBidFalse.jsp");
}
	%>
</body>
</html>