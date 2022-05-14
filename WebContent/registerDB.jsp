<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="connect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String userName = request.getParameter("userName");
String userEmail = request.getParameter("userEmail");
String userPassword = request.getParameter("userPassword");
String isStudent = request.getParameter("isStudent");
try{
	PreparedStatement pst=con.prepareStatement("Insert into LOGIN (NAME, EMAIL, PASSWORD, ISSTUDENT) values(?,?,?,?)");
	pst.setString(1, userName);
	pst.setString(2, userEmail);
	pst.setString(3, userPassword);
	pst.setString(4, isStudent);
	int t = pst.executeUpdate();
	if(t>0){
		session.setAttribute("userName", userName);
		session.setAttribute("userEmail", userEmail);
		session.setAttribute("userPassword", userPassword);
		session.setAttribute("isStudent", isStudent);
		if(isStudent.equals("0")){
			session.setAttribute("message","Added successfully");
	  		response.sendRedirect("message.jsp");
		}else{
			response.sendRedirect("index.html");
		}
			
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