<%@ page import="java.sql.*,databaseconnection.*"%>
<%
	//String location=(String)session.getAttribute("location");
				String shopname2=null,sid=null;
				String iid=null,iname=null,mycategory=null,mylocation=null;
				int count=0;
				String sname = (String)session.getAttribute("urlname");
				String uid = (String)session.getAttribute("uid");
				String location1=null;
				ResultSet rs5=null;
				try
				{

					Connection con5=databasecon.getconnection();
					Statement st5 = con5.createStatement();		

					String qry5="select * from website where urlname='"+sname+"' ";
					rs5 =st5.executeQuery(qry5);
					while(rs5.next()){
						sid=rs5.getString("sid");
						mycategory=rs5.getString("category");
						mylocation=rs5.getString("location");
					}
				}
				catch(Exception e5){
				out.println(e5.getMessage());
				}
		
%><html xmlns="http://www.w3.org/1999/xhtml">
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
            
            <li><a href="pdeleteoldsearch1.jsp">SignOut</a></li>
			
        </ul>    	
    </div> <!-- end of templatemo_menu -->
    
    <div class="cleaner"></div>
</div> <!-- end of templatemo_header -->

<div id="templatemo_content">
	
    <div class="content_box">
    
    	<div class="col_w670">
        
        	
      <h2>Users WebLog/ Navigation:&nbsp;&nbsp;&nbsp;<strong><font color="#000000" size="3">Welcome:</font><font color="#006600" size="4">
        <%=sname%>
        </font></strong></h2>
            
 <fieldset style="border: 15px solid #000000 ;
border-radius: 10px ;
-moz-border-radius: 10px ;
-webkit-border-radius: 10px ; width:550px;  margin: 0px 0px;">
      
      <br>
      <br>
	   <%
			
				ResultSet rs=null;
				try
				{

					Connection con=databasecon.getconnection();
					Statement st = con.createStatement();	
	

					String qry="select * from content where urlname='"+sname+"'";
					rs =st.executeQuery(qry);
			while(rs.next())
			{
			%>
			 
      <p><font size="4" color="#006600"><strong><font color="#000000">Subject:</font>
        <%=rs.getString("title")%>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <%=rs.getString("date")%>
        </font></strong></p>
    <img src="viewimage.jsp?iid=<%=rs.getString("iid")%>" width="100" height="100" />
          <p><strong><%=rs.getString("description")%></strong></p>
          
      <p class="btn-more box noprint" align="right"><strong><a href="contentpage.jsp?id=<%=rs.getString("iid")%>"><font size="5">Next</font></a></strong></p>
		  
		  <%}
		}
		catch(Exception e){
		out.println(e.getMessage());
		}
		%>
        
      </fieldset>
            
                        
          <div class="h30"></div>
            
            
                
        </div>
        
        <div class="col_w210 last_col">
        	
   
                
            <div class="h50">
			<br><br>
			<fieldset style="border: 2px solid #000000 ;
border-radius: 10px ;
-moz-border-radius: 10px ;
-webkit-border-radius: 10px ; width:170px;  margin: 0px -40px;">

<p><img src="viewimage1.jsp?sid=<%=sid%>" width="50" height="50"/>
<p><strong>Category:</strong> &nbsp;&nbsp; &nbsp; <%=mycategory%></p> 
 <p><strong>Location:</strong> &nbsp;&nbsp; &nbsp; <%=mylocation%></p>        
          
			<h3><font color="#006600" size="3"><strong>WebPersonalization</strong></font></h3>
			
			 <%
			Connection con4=null;
			Statement st4 = null;
			ResultSet rs4 = null;			
			
			try{
				 con4=databasecon.getconnection();
				st4 = con4.createStatement();
				String qry4 ="select * from website where urlname!='"+sname+"' and category='"+mycategory+"' order by count DESC"; 
				rs4 = st4.executeQuery(qry4);
				while(rs4.next()){%>
            		<li id="category-active"><strong><a href="up5.jsp?search=<%=rs4.getString("urlname")%>"><%=rs4.getString("urlname")%></a></strong></li>
            
            	<%}
			}
			catch(Exception ex4){
				out.println(ex4);
			}
%>

<br>

 <h3><font color="#006600" size="3"><strong>WebTraversal</strong></font></h3>
 
   <%
			
	ResultSet rs9=null;
	try
	{

	Connection con9=databasecon.getconnection();
	Statement st9 = con9.createStatement();	
	
	String qry9="select * from frequent where uid='"+uid+"' and psearch='"+sname+"'  order by count DESC ";
	rs9 =st9.executeQuery(qry9);
	while(rs9.next())
		{	
	%>
            <li><strong><a href="up5.jsp?search=<%=rs9.getString("nsearch")%>"><%=rs9.getString("nsearch")%></a></strong></li>
            
     <%
		
		} 
	}
	catch(Exception e9){
		out.println(e9.getMessage());
	}
	%>        
			</fieldset>
			</div>
        
        	  
    
         
            
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