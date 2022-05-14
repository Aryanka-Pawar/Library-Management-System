<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="connect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="catologue.css">
</head>
<body>
<%
try{
	PreparedStatement pst=con.prepareStatement("Select * from BOOK_DATABASE");
	ResultSet rs = pst.executeQuery();
	%>
	<div class="grid-container">
	<%
	while(rs.next()){
		String bookName = rs.getString(2);
		String authorName = rs.getString(3);
		String publisherName = rs.getString(4);
		%>
		<div class="grid-container">
		  <div class="grid-item">
			<div class="card">
			  <img src="1.png" alt="Book Image">
			  <p class="price"><%=publisherName %></p>
			  <h1><%=authorName %></h1>
			  <p><button type="button"><%=bookName %></button></p>
			</div>
		  </div>
		</div>
	
		<%
	}
	%>
	</div>
	<%
}
catch(Exception e){
	System.out.println(e);
}

%>
</body>
</html>