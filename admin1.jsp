<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<title>User Navigation</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%

Statement st = null;
ResultSet rs = null;
String name = request.getParameter("name");
String password = request.getParameter("password");


session.setAttribute("name",name);
session.setAttribute("password",password);
if((name.equals("admin"))&(password.equals("admin")))
{
	response.sendRedirect("website.jsp");

}
	
	else{
		
		
			response.sendRedirect("error.jsp");
	}	


%>
</body>
</html>

