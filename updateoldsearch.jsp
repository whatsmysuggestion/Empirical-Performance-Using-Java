//pshowshop1.jsp
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>

<%

		String uid = (String)session.getAttribute("uid");
		String search = (String)session.getAttribute("urlname");
										
				try{
				Connection	con=databasecon.getconnection();
				PreparedStatement ps=con.prepareStatement("Update oldsearch set oldsearch=? where uid='"+uid+"' ");
				ps.setString(1,search);
				int x=ps.executeUpdate();
				
				response.sendRedirect("homepage.jsp?message=success");
				}
				catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
			
	
		
	
 %>
