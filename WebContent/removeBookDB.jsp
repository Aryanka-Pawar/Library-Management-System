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
String bookName=request.getParameter("bookName");
String duration=request.getParameter("duration");

try{
	PreparedStatement pst=con.prepareStatement("Delete from BOOK_DATABASE where NAME=?");
  	pst.setString(1,bookName);
  	
  	int t = pst.executeUpdate();
  	if(t>0){
  		if(duration.equals("-1")){
  			session.setAttribute("message","Removed Successfully");
  		}else{
  			session.setAttribute("message",bookName+" is issued for "+duration+" days");
  		}
  		
  		response.sendRedirect("message.jsp");
  	}else{
  		session.setAttribute("message","Error 404");
  		response.sendRedirect("message.jsp");
  	}
	
}
catch(Exception e){
	System.out.println(e);
}
%>
</body>
</html>