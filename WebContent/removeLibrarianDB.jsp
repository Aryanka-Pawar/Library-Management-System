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
String email=request.getParameter("userEmail");
try{
	PreparedStatement pst=con.prepareStatement("Delete from LOGIN where EMAIL=?");
  	pst.setString(1,email);
  	
  	int t = pst.executeUpdate();
  	if(t>0){
  		session.setAttribute("message","Removed Successfully");
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