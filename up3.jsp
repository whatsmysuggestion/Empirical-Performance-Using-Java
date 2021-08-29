<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>



<html>
<head>
</head>
<body>

<%
	String uid = (String)session.getAttribute("uid");
	String uname = (String)session.getAttribute("name");
	String search=(String)session.getAttribute("urlname");
	String status="Processing";	
		
		Statement st = null;
		ResultSet rs1=null;
		int id=0;
		
		String tid=(String)session.getAttribute("tid");

	try{
		
			Connection con=databasecon.getconnection();
			st=con.createStatement();
			String sql1="select max(id) from transaction";
			rs1=st.executeQuery(sql1);
			while(rs1.next()){
				if(rs1.getInt(1)==0)
					id=1;
				else
					id=rs1.getInt(1)+1;
					
			session.setAttribute("id",id);
//date
		java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "dd-MM-yyyy";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ; 
//time

	String DATE_FORMAT1 = "hh:mm:ss";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now) ;
String etime="00:00:00";
int time=0;
		
		try {	
					
				Connection con1=databasecon.getconnection(); 
			PreparedStatement ps=con1.prepareStatement("INSERT INTO transaction VALUES(?,?,?,?,?,?,?,?,?,?)");
				ps.setInt(1,id);
               	ps.setInt(2,Integer.parseInt(tid));
				ps.setString(3,uid);	
       			ps.setString(4,uname);
       			ps.setString(5,search);
			    ps.setString(6,strDateNew);
			    ps.setString(7,strDateNew1);
				ps.setString(8,etime);
				ps.setInt(9,time);
				ps.setString(10,status);
	
			int x=ps.executeUpdate();
		
			if(x!=0)
			{
				response.sendRedirect("up4.jsp?message=successfully registered");
			}
			else
			{
				response.sendRedirect("up4.jsp?message=fail");
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

	
 %>
</body>
</html>