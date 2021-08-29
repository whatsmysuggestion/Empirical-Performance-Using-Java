<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>


<%

ResultSet rs=null;
PreparedStatement psmt1=null;

String uid = (String)session.getAttribute("uid");
String search = (String)session.getAttribute("urlname");

	java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "dd-MM-yyyy";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;

try{

	
	
			Connection	con2=databasecon.getconnection();

psmt1=con2.prepareStatement("insert into oldsearch(uid,oldsearch) values(?,?)");
psmt1.setString(1,uid);
psmt1.setString(2,search);

int s = psmt1.executeUpdate();
response.sendRedirect("homepage.jsp");

con2.close();
psmt1.close();

}catch(Exception ex){

out.println("Error in connection : "+ex);

}

%>
