<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="login.css">
<script src="removeBook.js"></script>
</head>
<body>
	<div class="form-container log-in-container">
		<form action="removeBookDB.jsp" method="post" onsubmit="return validate();">
			<h1>Remove Book</h1>
			<input type="text" placeholder="Book Name" name="bookName" id="bookName"/>
			<input type="hidden" placeholder="Duration (in days)" name="duration" id="duration" value="-1"/>
			<input class="login" type="submit" value="Remove Book">
		</form>
	</div>
	
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-right">
				<h1>Remove Book</h1>
				<p>Please fill all the details.</p>
			</div>
		</div>
	</div>
</body>
</html>