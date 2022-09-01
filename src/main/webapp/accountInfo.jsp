<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<STYLE type="text/css">
H1 {
	text-align: center;
	background-color: skyblue
}

DIV {
	border-width: 0;
	border: solid;
	border-color: white;
	background-color: skyblue
}
</STYLE>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Account Page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/light.min.css">
</head>
<body style="background-color: coral">
	<button style="background-color: wheat"
		onclick="window.location.href='Logout.jsp';">Logout</button>
	<br>

	<%
	out.println("Welcome: " + session.getAttribute("user"));
	%>
	<div class="frontend">
		<h1>Account Page</h1>

		<div>
			<h2 style="color: black;">Auction Settings</h2>
			<ul>
				<li><a style="color: indianred;" href="sortAuctions.jsp">View
						All Open Auctions</a></li>
				<li><a style="color: indianred;" href="myAuctions.jsp">My
						Auctions</a></li>
				<li><a style="color: indianred;" href="createCar.jsp">Create
						a new Car</a></li>
				<li><a style="color: indianred;" href="showAllCars.jsp">View
						Cars</a></li>
			</ul>
		</div>

		<div>
			<h2 style="color: black;">Search Settings</h2>
			<ul>
				<li><a style="color: indianred;" href="filterProducts.jsp">Filter
						Cars Based on Criteria</a></li>
				<li><a style="color: indianred;" href="searchProducts.jsp">Search
						Cars Based on Keywords</a></li>
				<li><a style="color: indianred;"
					href="searchAuctionsByUserID.jsp">Search Auctions By UserID</a></li>
			</ul>
		</div>

		<div>
			<h2 style="color: black;">Account Settings</h2>
			<ul>
				<li><a style="color: indianred;" href="myAlerts.jsp">View
						My Alerts</a></li>
				<li><a style="color: indianred;" href="myBidHistory.jsp">View
						My Bid History</a></li>
			</ul>
		</div>

		<div>
			<h2 style="color: black;">Ask a Question</h2>
			<ul>
				<li><a style="color: indianred;" href="questions.jsp">Ask
						Question to a Customer Representative</a></li>
			</ul>
		</div>
	</div>
</body>
</html>