<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="connect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String bookName = request.getParameter("bookName");
String authorName = request.getParameter("authorName");
String publisherName = request.getParameter("publisherName");
String value = request.getParameter("value");
try{
	PreparedStatement pst=con.prepareStatement("Insert into BOOK_DATABASE (NAME, AUTHOR, PUBLISHER, QUANTITY) values(?,?,?,?)");
	pst.setString(1, bookName);
	pst.setString(2, authorName);
	pst.setString(3, publisherName);
	pst.setString(4, "1");
	int t = pst.executeUpdate();
	if(t>0){
		if(value.equals("0")){
			session.setAttribute("message","Added successfully");
		}else{
			session.setAttribute("message","Returned successfully");
		}
  		response.sendRedirect("message.jsp");
	}else{
		session.setAttribute("message","Error 404");
  		response.sendRedirect("message.jsp");
	}
	
}catch(Exception e){
	System.out.print(e);
}
%>
</body>
</html>