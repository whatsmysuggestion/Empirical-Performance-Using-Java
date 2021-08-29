<%@ page import="java.sql.*"  import="databaseconnection.*" errorPage="" %>
<%

String id=request.getParameter("id");
StringBuffer mytid=new StringBuffer();
String mytidtemp[]=null;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="cs" lang="cs">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>User Navigation</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" media="screen,projection" type="text/css" href="css/main.css" />
<link rel="stylesheet" media="print" type="text/css" href="css/print.css" />
<link rel="stylesheet" media="aural" type="text/css" href="css/aural.css" />
</head>
<body id="www-url-cz">
<div id="main" class="box">
  <div id="header">
    <h1 id="logo" align="center"><a href="#">Facilitating Effective User Navigation through<br />
<strong>Website Structure Improvement</strong><span></span></a></h1>
    <hr class="noscreen" />
    <div class="noscreen noprint">
      <p><em>Quick links: <a href="#content">content</a>, <a href="#tabs">navigation</a>, <a href="#search">search</a>.</em></p>
      <hr />
    </div>
    <div id="search" class="noprint">
      
    </div>
  </div>
  <div id="tabs" class="noprint">
    <h3 class="noscreen">Navigation</h3>
    <ul class="box">
	  
      <li><a href="#">Web URL<span class="tab-l"></span><span class="tab-r"></span></a></li>
      <li><a href="content.jsp">Web Content<span class="tab-l"></span><span class="tab-r"></span></a></li>
	  <li id="active"><a href="session.jsp">Mini Session<span class="tab-l"></span><span class="tab-r"></span></a></li>
	  <li><a href="home.html">LogOut<span class="tab-l"></span><span class="tab-r"></span></a></li>
      
    </ul>
    <hr class="noscreen" />
  </div>
  <div id="page" class="box">
    <div id="page-in" class="box">
      <div id="strip" class="box noprint">
        
        <hr class="noscreen" />
       
        <hr class="noscreen" />
      </div>
      <div id="content">
        <div class="article">
          
          
		  
            <h2><span>Mini</span> Session</h2>
            <div class="clr"></div>
            <!--Transaction Sequence-->

 						<table border="1">
						<tr>
							<th width="100">Id</th>
							<th width="150">URL Name</th>
							<th width="100">Session(min)</th>
							<th width="150">Status</th>
							<th width="150">Add/Eliminate</th>
							
						</tr>
 <%
 	
 	ResultSet rs7=null;
				try
				{
				
				Connection con3=databasecon.getconnection();
					Statement st7 = con3.createStatement();	
					//String uid = (String)session.getAttribute("uid");
				
					String qry3="select * from transaction where tid='"+id+"' ";
						rs7=st7.executeQuery(qry3);
						
							while(rs7.next())
						{
						
						%>
							<tr bgcolor="#0099FF">
								<td bgcolor="#00CCFF"><%=rs7.getString("id")%></td>
								<td bgcolor="#66FF99"><%=rs7.getString("urlname")%></td>
								<td bgcolor="#CCFFFF"><%=rs7.getString("time")%></td>
								<td bgcolor="#99CCFF"><%=rs7.getString("status")%></td>
								<td><a href="add.jsp?id=<%=rs7.getString("tid")%>">Add</a>&nbsp;&nbsp;
								<a href="eliminate.jsp?id=<%=rs7.getString("tid")%>">Eliminate</a></td>
							</tr>
				 			
							<%
						
						} 
						}
					catch(Exception e7){
						out.println(e7.getMessage());
					}
		
 %>
			</table>
			<!--End Transaction Sequence-->
         
		  
          
        </div>
        <hr class="noscreen" />
        
        <hr class="noscreen" />
        
        <hr class="noscreen" />
        
        <hr class="noscreen" />
      </div>
      <div id="col" class="noprint">
        <div id="col-in">
          <h3><span><a href="#">Mini Session</a></span></h3>
          <div id="about-me">
                
             
          </div>
		  <br />
		  <br />
           <p><img src="images/session.png" id="me" alt="Kutty Karthi!" title="Kutty Karthi!" width="180" height="180" /> </p>
        </div>
      </div>
    </div>
  </div>
  <div id="footer">
    <div id="top" class="noprint">
      <p><span class="noscreen">Back on top</span> <a href="#header" title="Back on top ^">^<span></span></a></p>
    </div>
    <hr class="noscreen" />
    
    <p id="copyright"> |  </p>
  </div>
</div>
</body>
</html>
