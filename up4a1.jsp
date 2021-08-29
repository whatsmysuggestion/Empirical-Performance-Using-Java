<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>


<% 
		//String location=(String)session.getAttribute("location");
		String uid = (String)session.getAttribute("uid");
		String search = (String)session.getAttribute("urlname");
		String oldsearch = (String)session.getAttribute("oldsearch");
		Statement st = null;
		ResultSet rs1=null;
		int id=0;
		
	try{
		
			Connection con=databasecon.getconnection();
			st=con.createStatement();
			String sql1="select * from frequent where uid='"+uid+"' and psearch='"+oldsearch+"' and nsearch='"+search+"' ";
			rs1=st.executeQuery(sql1);
			while(rs1.next()){
				
					id=rs1.getInt("count")+1;
				
				
		try {
			
			Connection con1=databasecon.getconnection(); 

			PreparedStatement ps=con1.prepareStatement("update frequent set count=? where uid='"+uid+"' and psearch='"+oldsearch+"' and nsearch='"+search+"' ");
				ps.setInt(1,id);
               			
	
			int x=ps.executeUpdate();
		
			if(x!=0)
			{
				response.sendRedirect("updateoldsearch.jsp?message=success");
			}
			else
			{
				response.sendRedirect("updateoldsearch.jsp?message=fail");
			}
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
			}	
	}
	catch (Exception eq) 
		{
			out.println(eq.getMessage());
		}
		
	
 %>
