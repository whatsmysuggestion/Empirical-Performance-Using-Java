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

try{
	Connection con=databasecon.getconnection();
	st = con.createStatement();
	String qry ="select * from profile where name='"+name+"' AND password='"+password+"'"; 
	rs = st.executeQuery(qry);

	if(!rs.next()){
		out.println("Enter correct username, password ");
		%>
				<html>
					<body><br><a href="index.html">Go to home</a></body>
				</html>
		<%	
	}
	else{
		session.setAttribute("uid",Integer.toString(rs.getInt("id")));
		session.setAttribute("mylocation",rs.getString("location"));
		
			response.sendRedirect("up1.jsp");
	}	

}
catch(Exception ex){
	out.println(ex);
}
%>
</body>
</html>

