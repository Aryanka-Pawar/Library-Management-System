<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="message.css">
</head>
<body>
<%
String message = (String)session.getAttribute("message");
%>
<div id="main">
   	<div class="fof">
       	<h1><%=message %></h1>
       	<%
       	if(message=="Error 404"){
    		%>
    		<button onclick="location.href='loginPage.html'" type="button">Back To Login</button>
    		<%
       	}
       	%>
   	</div>
</div>
</body>
</html>