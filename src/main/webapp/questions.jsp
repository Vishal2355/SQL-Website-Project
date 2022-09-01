<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ask Question</title>
<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/light.min.css">
</head>
<body style="background-color: coral;">
	<button onclick="window.location.href='accountInfo.jsp';">Return to Accounts Page</button>
	<div class="frontend">
		<h2>Submit a new question:</h2>
		<form action="checkQuestionDetails.jsp" method="post">
			<textarea style="font-size: 18pt" rows="1" cols="60" maxlength="250"
				name="question" placeholder = 'ask a question here'></textarea>
			<br> <input type="submit" value="submit">
		</form>
	</div>
	<h2>
		<a href="allQuestions.jsp">View all Questions</a><br>
		<a href="searchQuestions.jsp">Search for Questions</a>
	</h2>
</body>
</html>