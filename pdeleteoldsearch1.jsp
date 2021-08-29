
<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>


<%


		String id=null;
		
//end time
	

		Statement st = null;
		ResultSet rs1=null;
			
	try{
		
			Connection con=databasecon.getconnection();
			st=con.createStatement();
			String sql1="select max(id) from transaction";
			rs1=st.executeQuery(sql1);
			while(rs1.next()){
			
					id=rs1.getString(1);
					session.setAttribute("id",id);
				Statement st2 = null;
				ResultSet rs2=null;
				try{
					Connection con2=databasecon.getconnection();
					st2=con2.createStatement();
					String sql2="select * from transaction where id='"+id+"'";
					rs2=st2.executeQuery(sql2);
					if(rs2.next()){
						String stime=rs2.getString("stime");
						session.setAttribute("stime",stime);
						System.out.println("stime"+stime);
						response.sendRedirect("pdeleteoldsearch.jsp");
					}
				}
				catch (Exception e2) 
				{
					out.println(e2.getMessage());
				}
		
			}	
	}
	catch (Exception eq) 
		{
			out.println(eq.getMessage());
		}
		
	
 %>
