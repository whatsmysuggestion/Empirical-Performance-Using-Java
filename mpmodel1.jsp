<%@ page import="java.sql.*,databaseconnection.*"%>
<%
String uid = (String)session.getAttribute("uid");	

String n1=request.getParameter("n1");
String n2=request.getParameter("n2");
String n3=request.getParameter("n3");
String n4=request.getParameter("n4");

String n=n1+","+n2+","+n3+","+n4;	

String temp[]=null;
temp=n.split(",");
	
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
            
             <li><a href="mpmodel.jsp">Domain Knowledge Modeling</a></li>
			     <li><a href="mpmodel.jsp">Back</a></li>
			
			 <li><a href="index.html">SignOut</a></li>
			
			
			
        </ul>    	
    </div> <!-- end of templatemo_menu -->
    
    <div class="cleaner"></div>
</div> <!-- end of templatemo_header -->

<div id="templatemo_content">
	
    <div class="content_box">
    
    	
    <div class="col_w670"> 
      <h2>Domain Knowledge Modeling - Matrix</h2>
            
 <fieldset style="border: 15px solid #000000 ;
border-radius: 10px ;
-moz-border-radius: 10px ;
-webkit-border-radius: 10px ; width:160px;  margin: 0px 0px;">
     <table width="513" height="350px" style="margin-right:10px;">
<tr>
          <td width="194"><strong><font color="#009900" size="4">DKM</font></strong></td>
<%for(int i=0;i<temp.length;i++){%>
	<td width="121"><strong><font color="#FF0000" size="4"><%=temp[i]%></font></strong></td>
<%}%>
</tr>
<%
ResultSet rs = null;
Connection con=databasecon.getconnection(); 
Statement st=con.createStatement();
for(int i=0;i<temp.length;i++){
%>
<tr>
<td><strong><font color="#FF0000" size="4"><%=temp[i]%></font></strong></td>
<%
	for(int j=0;j<temp.length;j++){
		
		String qry ="select * from frequent where uid='"+uid+"' and psearch = '"+temp[i]+"' and nsearch='"+temp[j]+"' "; 
		rs = st.executeQuery(qry);
			if(rs.next()){
				
				String qry1 ="select * from transaction where uid='"+uid+"' and urlname ='"+temp[j]+"' and status='Mp Model' "; 
				rs = st.executeQuery(qry1);
					if(rs.next()){%>
						<td align="center"><strong>1</strong></td>
					<%}
					else{%>
						<td width="83" align="center"><strong>0</strong></td>
					<%}			
			}
			else
			{%>
				<td width="95" align="center"><strong>0</strong></td>		
			<%}
	}
%>
</tr>
<%
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