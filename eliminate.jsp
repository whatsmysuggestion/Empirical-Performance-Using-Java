<%@page import="java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>

<%
				String id = request.getParameter("id");
				
 				String status="Eliminated";
				
				try{
		
				Connection con2=databasecon.getconnection();
				PreparedStatement ps=con2.prepareStatement("Update transaction set status=? where tid='"+id+"'");
				ps.setString(1,status);
				
				
				int x=ps.executeUpdate();
				response.sendRedirect("session.jsp?message=success");
				}
				catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
			
		
	
 %>
