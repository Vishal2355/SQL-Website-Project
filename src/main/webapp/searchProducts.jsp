<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Products</title>
<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/light.min.css">
</head>
<body style = "background-color: coral">
	<button style = "background-color: wheat" onclick="window.location.href='accountInfo.jsp';">Return to home dashboard</button>

	<h3>Search Cars Based on Keywords</h3>
	<form action = 'checkSearchProductsDetails.jsp' method ='post'>
		<input type="text" name="search" placeholder="search cars">
		<button type="submit">Search</button>
	</form>
</body>
</html>