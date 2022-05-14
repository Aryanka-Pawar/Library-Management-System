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
			<button onclick="location.href='catologue.jsp'" type="button">View Books</button>
			<button onclick="location.href='takeBook.jsp'" type="button">Take Book</button>
			<button onclick="location.href='returnBook.jsp'" type="button">Return Book</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-right">
				<h1>Welcome To Student Panel</h1>
				<p>Take or Return Book.</p>
			</div>
		</div>
	</div>
</body>
</html>