<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="register.css">
<script src="register.js"></script>
</head>
<body>
	<div class="form-container log-in-container">
		<form action="registerDB.jsp" method="post" onsubmit="return validate();">
			<h1>Registration</h1>
			<input type="text" placeholder="Name" name="userName" id="userName"/>
			<input type="email" placeholder="Email" name="userEmail" id="userEmail"/>
			<input type="password" placeholder="Password" name="userPassword" id="userPassword"/>
			<input type="password" placeholder="Confirm Password" name="userConfirmPassword" id="userConfirmPassword"/>
			<input type="hidden" id="isStudent" name="isStudent" value="0">
			<input class="register" type="submit" value="Register">
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-right">
				<h1>Add Librarian</h1>
				<p>Please fill all the details.</p>
			</div>
		</div>
	</div>
</body>
</html>