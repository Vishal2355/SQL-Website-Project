<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ask a questions</title>
</head>
<body style = "background-color: coral">

	<button onclick="window.location.href='accountInfo.jsp';">Home
		Page (acount)</button>
	<div class="frontend">
		<h2>Ask a new question:</h2>
		<form action="checkQuestionDetails.jsp" method="post">
			<textarea style="font-size: 18pt" rows="1" cols="60" maxlength="250"
				name="question" placeholder='ask a question here'></textarea>
			<br> <input type="submit" value="submit">

		</form>

	</div>

	<h2>
		<a href="questions.jsp">See all Questions</a><br> <a
			href="questionSearcher.jsp">Search a specific question</a>
	</h2>
</body>
</html>