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
			<button onclick="location.href='addLibrarian.jsp'" type="button">Add Librarian</button>
			<button onclick="location.href='removeLibrarian.jsp'" type="button">Remove Librarian</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-right">
				<h1>Welcome To Admin Panel</h1>
				<p>Add or Remove Librarian.</p>
			</div>
		</div>
	</div>
</body>
</html>