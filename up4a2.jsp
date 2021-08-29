<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>

<%

		String uid = (String)session.getAttribute("uid");
		String search = (String)session.getAttribute("urlname");
		String oldsearch = (String)session.getAttribute("oldsearch");
		String newsearch=null;
		int tid=0,count=1;
		Statement st = null;
		ResultSet rs1=null;
	
	
	try{
		
			Connection	con=databasecon.getconnection();
			st=con.createStatement();
			String sql1="select * from frequent where uid='"+uid+"' and psearch='"+oldsearch+"' and nsearch='"+newsearch+"' ";
			rs1=st.executeQuery(sql1);
			if(rs1.next()){
				tid=rs1.getInt("tid");				
				try{
				Connection	con2=databasecon.getconnection();
				PreparedStatement ps=con.prepareStatement("update frequent set nsearch=?,count=? where tid='"+tid+"' ");
				ps.setString(1,search);
				ps.setInt(2,count);
				ps.executeUpdate();
				
				response.sendRedirect("updateoldsearch.jsp?message=success");
				}
				catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
			}
			else
				response.sendRedirect("up4a3.jsp?message=success");	
	}
	catch (Exception e) 
		{
			out.println(e.getMessage());
		}
		
	
 %>
