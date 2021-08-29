<%@ page import="java.sql.*,databaseconnection.*"%>
<%
		String uid = (String)session.getAttribute("uid");

		StringBuffer myurl=new StringBuffer();
		String myurltemp[]=null;
		Statement st8 = null;
		ResultSet rs8=null;
		Connection	con8=databasecon.getconnection();
		st8=con8.createStatement();
	
	try{
		
			
			String sql1="select Distinct(urlname) from website";
			rs8=st8.executeQuery(sql1);
			
			while(rs8.next()){
				
				myurl.append(rs8.getString(1));
				myurl.append(",");
				
								
			}
			myurltemp=(myurl.toString()).split(",");
			System.out.println("myurltemp"+myurltemp.length);
				
	}
	catch (Exception e6) 
		{
			out.println(e6.getMessage());
		}
		
	
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
     
      <form name="f" action="mpmodel1.jsp" method="post">
     
          		<table width="586">
				<tr>
				<td width="119" height="65">
				<select name="n1" style="border: 1px solid black">
					<option>Select URL</option>
				<%
					for(int i=0;i<myurltemp.length;i++){
				%>
						<option value="<%=myurltemp[i]%>"><%=myurltemp[i]%></option>
					<%}%>
				</select>
				</td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<td width="119">
				<select name="n2" style="border: 1px solid black">
					<option>Select URL</option>
				<%
					for(int j=0;j<myurltemp.length;j++){
				%>
						<option value="<%=myurltemp[j]%>"><%=myurltemp[j]%></option>
					<%}%>
				</select>
				</td>
				
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				<td width="119">
				<select name="n3" style="border: 1px solid black">
					<option>Select URL</option>
				<%
					for(int k=0;k<myurltemp.length;k++){
				%>
						<option value="<%=myurltemp[k]%>"><%=myurltemp[k]%></option>
					<%}%>
				</select>
				</td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<td width="119">
				<select name="n4" style="border: 1px solid black">
					<option>Select URL</option>
				<%
					for(int p=0;p<myurltemp.length;p++){
				%>
						<option value="<%=myurltemp[p]%>"><%=myurltemp[p]%></option>
					<%}%>
				</select>
				</td>
				<br>
					<td width="86" colspan="2" align="center"><input type="submit" name="sub" value="Submit" style="border: 1px solid black" /></p></td>
				</tr>
				</table>
      		</form>
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