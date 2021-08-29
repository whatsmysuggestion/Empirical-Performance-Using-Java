<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>

<%

		
		String uid = (String)session.getAttribute("uid");
		String search = (String)session.getAttribute("urlname");
		
		
		Statement st = null;
		ResultSet rs1=null;
	
	
	try{
		
			Connection	con=databasecon.getconnection();
			st=con.createStatement();
			String sql1="select * from frequent where uid='"+uid+"' and psearch='"+search+"' ";
			rs1=st.executeQuery(sql1);
			if(rs1.next()){
								
				response.sendRedirect("up4b2.jsp?message=success");
			}
			else
				response.sendRedirect("up4b1.jsp?message=success");	
	}
	catch (Exception e) 
		{
			out.println(e.getMessage());
		}
		
	
 %>
