<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>

<%

		
		String uid = (String)session.getAttribute("uid");
		String oldsearch=null;
		Statement st = null;
		ResultSet rs1=null;
	
	
	try{
		
			Connection	con=databasecon.getconnection();
			st=con.createStatement();
			String sql1="select * from oldsearch where uid='"+uid+"'";
			rs1=st.executeQuery(sql1);
			if(rs1.next()){
				oldsearch=rs1.getString("oldsearch");
				session.setAttribute("oldsearch",oldsearch);				
				response.sendRedirect("up4a.jsp?message=success");
			}
			else
				response.sendRedirect("up4b.jsp?message=success");	
	}
	catch (Exception e) 
		{
			out.println(e.getMessage());
		}
		
	
 %>
