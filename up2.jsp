<%@ page import="java.sql.*,databaseconnection.*"%>

<%

Statement st = null;
ResultSet rs = null;
String uid = (String)session.getAttribute("uid");
String uname = (String)session.getAttribute("name");
System.out.println("name"+uname);
String urlname=request.getParameter("search");
session.setAttribute("urlname",urlname);

try{
	Connection con=databasecon.getconnection();
	st = con.createStatement();
	String qry ="select * from website where urlname='"+urlname+"' "; 
	rs = st.executeQuery(qry);

	if(!rs.next()){
		out.println("Enter Correct URL");
		%>
				<html>
					<body><br><a href="userpage.jsp">Go Back</a></body>
				</html>
		<%	
	}
	else{
			response.sendRedirect("up3.jsp?search="+urlname+"");
		}

}
catch(Exception ex){
	out.println(ex);
}
%>



