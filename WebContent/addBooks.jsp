<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="register.css">
<script src="addBooks.js"></script>
</head>
<body>
<div class="form-container log-in-container">
		<form action="addBooksDB.jsp" method="post" onsubmit="return validate();">
			<h1>Add Book</h1>
			<input type="text" placeholder="Book Name" name="bookName" id="bookName"/>
			<input type="text" placeholder="Author Name" name="authorName" id="authorName"/>
			<input type="text" placeholder="Publisher Name" name="publisherName" id="publisherName"/>
			<input type="hidden" name="value" id="value" value="0"/>
			<input class="register" type="submit" value="Add Book">
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-right">
				<h1>Add Book</h1>
				<p>Please fill all the details.</p>
			</div>
		</div>
	</div>
</body>
</html>