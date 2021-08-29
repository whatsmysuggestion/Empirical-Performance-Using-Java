<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="orange spice, contacts, css templates, CSS, HTML" />
<meta name="description" content="Orange Spice Contacts - Free CSS Template provided by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript">
function validation()
{
var a = document.form.name.value;
var b = document.form.password.value;


if(a=="")
{
alert("Enter the Username");
document.form.name.focus();
return false;
}


if(b=="")
{
alert("Enter the password");
document.form.password.focus();
return false;
}


}
</script>
</head>
<body>
<div id="templatemo_header">

	<div id="site_title">
        
    </div> <!-- end of site_title -->
   
    <div id="templatemo_menu">
        <ul>
            <li><a href="index.html">Home</a></li>
             <li><a href="admin.jsp">AdminLogin</a></li>
            <li><a href="user.jsp">UserLogin</a></li>
			<li><a href="register.jsp">Registeration</a></li>
        </ul>    	
    </div> <!-- end of templatemo_menu -->
    
    <div class="cleaner"></div>
</div> <!-- end of templatemo_header -->

<div id="templatemo_content">
	
    <div class="content_box">
    
    	<div class="col_w670">
        
        	<h2>AdminLogin</h2>
            
 <fieldset style="border: 15px solid #000000 ;
border-radius: 10px ;
-moz-border-radius: 10px ;
-webkit-border-radius: 10px ; width:160px;  margin: 0px 0px;">
      
      <br>
      <br>
      <table width="500" align="center">
        <form action="admin1.jsp" method="post" name="form" onSubmit="return validation();">
          <tr align="center"> 
            <td width="155" height="46"><font size="3">UserName</font></td>
            <td width="333" class="fielditem"><input type="text"  name="name" style="border: 1px solid black"></td>
          </tr>
          <tr align="center"> 
            <td width="155" height="51" class="paragraping"><font size="3">Password</font></font></td>
            <td width="333" class="fielditem"><input type="password"  name="password" style="border: 1px solid black"></td>
          </tr>
       
          <tr align="center"> 
            <td height="36"></td>
            <td><input type="submit" name="B1" class="button" value="Login" style="border: 1px solid black"> 
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