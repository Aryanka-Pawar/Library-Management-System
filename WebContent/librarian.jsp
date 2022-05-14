<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="admin.css">
</head>
<body>
	<div class="form-container log-in-container">
		<form>
			<button onclick="location.href='addBooks.jsp'" type="button">Add Books</button>
			<button onclick="location.href='removeBook.jsp'" type="button">Remove Books</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-right">
				<h1>Welcome To Librarian Panel</h1>
				<p>Add or Remove Books.</p>
			</div>
		</div>
	</div>
</body>
</html>