<%@ page import="java.sql.*,databaseconnection.*"%>
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
			<li><a href="history.jsp">My History</a></li>
			
			<li><a href="index.html">SignOut</a></li>
			
        </ul>    	
    </div> <!-- end of templatemo_menu -->
    
    <div class="cleaner"></div>
</div> <!-- end of templatemo_header -->

<div id="templatemo_content">
	
    <div class="content_box">
    
    	<div class="col_w670">
        
        	<h2>User WebSearch  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#000000" face="monotypr corsiv" style="">Welcome:<%=session.getAttribute("name")%></font></h2>
            
 <fieldset style="border: 15px solid #000000 ;
border-radius: 10px ;
-moz-border-radius: 10px ;
-webkit-border-radius: 10px ; width:160px;  margin: 0px 0px;">
      
      <br>
      <br>
      <table width="555" align="center">
        <form action="up2.jsp" method="post" name="form" id="sendemail">
          <tr> 
            <td width="155" height="46"><font size="3">Search URL</font></td>
            <td width="333" class="fielditem"><input type="text"  name="search" style="border: 1px solid black" size="50px"></td>
          </tr>
          
          <tr> 
            <td height="36"></td>
            <td><input type="submit" name="B1" class="button" value="Search" style="border: 1px solid black"> 
              &nbsp;&nbsp; <input type="reset" name="reset" class="button" value="Clear" style="border: 1px solid black"></td>
          </tr>
        </form>
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