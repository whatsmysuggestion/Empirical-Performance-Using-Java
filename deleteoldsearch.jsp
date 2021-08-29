<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
		
	
	<% 
    String uid=(String)session.getAttribute("uid");
				
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
			
        try
		{
			con=databasecon.getconnection();
		
	    st=con.createStatement();
	    String sql="delete from oldsearch where uid='"+uid+"'";
 	    st.executeUpdate(sql);
			
		response.sendRedirect("index.html");
	}
catch(SQLException e1)	{ out.println("Database error"+e1.getMessage()); }


            %>
			
           