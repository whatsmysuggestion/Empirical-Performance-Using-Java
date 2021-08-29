<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>


<% 
		
		String uid = (String)session.getAttribute("uid");
		String search = (String)session.getAttribute("urlname");
		String oldsearch="null";
		Statement st = null;
		ResultSet rs1=null;
		int id=0,count=0;
		
	try{
		
			Connection con=databasecon.getconnection();
			st=con.createStatement();
			String sql1="select max(tid) from frequent ";
			rs1=st.executeQuery(sql1);
			while(rs1.next()){
				if(rs1.getInt(1)==0)
					id=1;
				else
					id=rs1.getInt(1)+1;
				
		
		try {
			
			Connection con1=databasecon.getconnection(); 

			PreparedStatement ps=con1.prepareStatement("insert into frequent values(?,?,?,?,?) ");
				ps.setInt(1,id);
				ps.setString(2,uid);
               	ps.setString(3,search);
               	ps.setString(4,oldsearch);
				ps.setInt(5,count);			
					

			int x=ps.executeUpdate();
		
			if(x!=0)
			{
				response.sendRedirect("up4b2.jsp?message=success");
			}
			else
			{
				response.sendRedirect("up4b2.jsp?message=fail");
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
