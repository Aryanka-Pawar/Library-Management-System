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
String userEmail=request.getParameter("userEmail");
String userPassword=request.getParameter("userPassword");
String isStudent=(String)request.getParameter("isStudent");

if(userEmail.equals("admin@gmail.com") && userPassword.equals("admin")){
	response.sendRedirect("admin.jsp");
}

try{
	PreparedStatement pst=con.prepareStatement("Select * from LOGIN where EMAIL=?");
	pst.setString(1, userEmail);
	ResultSet rs = pst.executeQuery();
	
	if(rs.next()){
		if(userPassword.equals(rs.getString(4))&&isStudent.equals(rs.getString(5))){
			if(isStudent.equals("1")){
				out.println("Name:" +rs.getString(2));
				response.sendRedirect("student.jsp");
			}else{
				out.println("Name:" +rs.getString(2));
				response.sendRedirect("librarian.jsp");
			}
		}
		else if(!userPassword.equals(rs.getString(4))){
			session.setAttribute("message","Invalid Password");
	  		response.sendRedirect("message.jsp");
		}else if(!isStudent.equals(rs.getString(5))){
			session.setAttribute("message","Error 404");
	  		response.sendRedirect("message.jsp");
		}else{
			session.setAttribute("message","Error 404");
	  		response.sendRedirect("message.jsp");
		}
		
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