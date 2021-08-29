
<%@ page import="java.sql.*"  import="databaseconnection.*" errorPage="" %>
<%

StringBuffer mytid=new StringBuffer();
String mytidtemp[]=null;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="orange spice, contacts, css templates, CSS, HTML" />
<meta name="description" content="Orange Spice Contacts - Free CSS Template provided by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />


</head>
<body>
<div id="templatemo_header">

	<div id="site_title">
        
    </div> <!-- end of site_title -->
   
    <div id="templatemo_menu">
        <ul>
            <li><a href="index.html">Home</a></li>
            
            <li><a href="website.jsp">Add URL</a></li>
			<li><a href="content.jsp">Add WebContent</a></li>
			<li><a href="session.jsp">BrowsingHistory</a></li>
			<li><a href="graph.jsp">Graph</a></li>
        </ul>    	
    </div> <!-- end of templatemo_menu -->
    
    <div class="cleaner"></div>
</div> <!-- end of templatemo_header -->

<div id="templatemo_content">
	
    <div class="content_box">
    
    	<div class="col_w670">
        
        	<h2>View Browsing History : All Users</h2>
            
 <fieldset style="border: 15px solid #000000 ;
border-radius: 10px ;
-moz-border-radius: 10px ;
-webkit-border-radius: 10px ; width:800px;  margin: 0px 0px;">
      
      <br>
      <br>
     <%
		
		Statement st8 = null;
		ResultSet rs8=null;
		Connection	con8=databasecon.getconnection();
		st8=con8.createStatement();
	
	try{
		
			
			String sql1="select Distinct(tid) from transaction  order by tid DESC";
			rs8=st8.executeQuery(sql1);
			
			while(rs8.next()){
				
				mytid.append(rs8.getString(1));
				mytid.append(",");
				
								
			}
			mytidtemp=(mytid.toString()).split(",");
			System.out.println("mytidtemp"+mytidtemp.length);
				
	}
	catch (Exception e6) 
		{
			out.println(e6.getMessage());
		}
		
	
 %>
 						<table border="1">
						<tr bgcolor="#FF0000">
							<th width="100">UserId</th>
							<th width="100">Transaction Id</th>
							<th width="150">UserName</th>
							<th width="150">URLName</th>
							<th width="150">Date</th
							><th width="100">Start Time(min)</th>
							<th width="150">End Time</th>
							<th width="150">Spending Time(In min)</th>
							
							
						</tr>
 <%
 	for(int i=0;i<mytidtemp.length;i++){
 	ResultSet rs7=null;
				try
				{
				
				Connection con3=databasecon.getconnection();
					Statement st7 = con3.createStatement();	
					//String uid = (String)session.getAttribute("uid");
				
					String qry3="select * from transaction where tid='"+mytidtemp[i]+"' ";
						rs7=st7.executeQuery(qry3);
						
							while(rs7.next())
						{
						
						%>
							<tr bgcolor="">
								<td bgcolor=""><strong><%=rs7.getString("id")%></strong></td>
								<td bgcolor=""><strong><%=rs7.getString("tid")%></strong></td>
								<td bgcolor=""><strong><%=rs7.getString("username")%></strong></td>
								<td bgcolor=""><strong><%=rs7.getString("urlname")%></strong></td>
								<td bgcolor=""><strong><%=rs7.getString("date")%></strong></td>
								<td bgcolor=""><strong><%=rs7.getString("stime")%></strong></td>
								<td bgcolor=""><strong><%=rs7.getString("etime")%></strong></td>
								<td bgcolor=""><strong><%=rs7.getString("time")%></strong></td>
								
							</tr>
				 			
							<%
						
						} 
						}
					catch(Exception e7){
						out.println(e7.getMessage());
					}
		}
 %>
			</table>
      </fieldset>
            
                        
          <div class="h30"></div>
            
            
                
        </div>
        
        <div class="col_w210 last_col">
        	
   
                
            <div class="h50"></div>
        
        	  
    
         
            
            <div class="h50">
			
            </div>
            
           
        </div>
        
        <div class="cleaner"></div>
        
    </div>
    
    <div class="cleaner"></div>
</div> <!-- end of templatemo_content -->

<div id="templatemo_footer">

	<br><br>
    	<p align="center"></p>
    
    
</div> <!-- end of templatemo_footer -->

</body>
</html>