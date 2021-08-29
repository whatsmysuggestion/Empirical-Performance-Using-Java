<%@ page import="java.sql.*,databaseconnection.*"%>

<%
Connection con=null;
Statement st = null;
ResultSet rs = null;
int id=0;
	

try{
	 con=databasecon.getconnection();
	st = con.createStatement();
	String qry ="select max(tid) from transaction  "; 
	rs = st.executeQuery(qry);
	if(rs.next()){
		if(rs.getInt(1)==0)
					id=1;
				else
					id=rs.getInt(1)+1;
		session.setAttribute("tid",Integer.toString(id));
		response.sendRedirect("userpage.jsp");
	
	
	}
	else{
		out.println("Enter correct username, password");	
			
	}
	con.close();
	st.close();
		
		
}
catch(Exception ex){
	out.println(ex);
}
%>


