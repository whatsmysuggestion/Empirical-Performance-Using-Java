<%@ page import="java.sql.*,java.lang.*,databaseconnection.*"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.awt.*" %>
<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="org.jfree.chart.ChartUtilities" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.data.*" %>
<%@ page import="org.jfree.data.jdbc.JDBCCategoryDataset"%>

<%@ page  import="java.awt.*" %>
<%@ page  import="java.io.*" %>
<%@ page  import="org.jfree.chart.*" %>
<%@ page  import="org.jfree.chart.entity.*" %>
<%@ page  import ="org.jfree.data.general.*"%>
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
      
			
			<li><a href="index.html">SignOut</a></li>
			
        </ul>    	
    </div> <!-- end of templatemo_menu -->
    
    <div class="cleaner"></div>
</div> <!-- end of templatemo_header -->

<div id="templatemo_content">
	
    <div class="content_box">
    
    	<div class="col_w670">
        
        	<h2> Graph Represents User Browsing History</h2>
            
 <fieldset style="border: 15px solid #000000 ;
border-radius: 10px ;
-moz-border-radius: 10px ;
-webkit-border-radius: 10px ; width:160px;  margin: 0px 0px;">
      
     
	 
	 <%
				//  String myname=(String)session.getAttribute("myname");
				// System.out.println(myname);
				 // String name=null;

Connection con=null;
Statement st = null;
ResultSet rs = null;

//StringBuffer community=new StringBuffer();
StringBuffer count=new StringBuffer();
//String mycommunity[]=null;
String mydata=null;
int mylength=0; 

String dno=null;
final DefaultPieDataset data = new DefaultPieDataset();
try{
	 con=databasecon.getconnection();
	st = con.createStatement();
	String qry ="SELECT Distinct urlname, COUNT(urlname) as Count FROM transaction GROUP BY urlname"; 
	rs = st.executeQuery(qry);
	while(rs.next()){
		mydata=rs.getString(1)+"--"+rs.getString(2);
		data.setValue(mydata, new Double((double)rs.getInt(2)));
	
	}
	
	
	//match chart

		

		
								  						
		JFreeChart chart = ChartFactory.createPieChart
		("Pie Chart Representation Of Browsing History", data, true, true, false);
						
		try {
			final ChartRenderingInfo info = new 
			ChartRenderingInfo(new StandardEntityCollection());
						
			final File file1 = new File("D:/apache-tomcat-6.0.18/webapps/Personalized Web Search Engine/images/match.png");
			ChartUtilities.saveChartAsPNG(file1, chart, 600, 475, info);
						  
			} catch (Exception e) {
				out.println(e);
			}
	//chart
		
}
catch(Exception ex){
	out.println(ex);
}
%> 
				 
				<p><img src="images/match.png"></p> 				 
 
				
	 
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