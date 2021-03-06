<%-- 
    Document   : index
    Created on : Mar 21, 2013, 3:52:33 PM
    Author     : Maikel Vanmuysen, Tim Telen, Sven Haenen, Ruben Thonissen, Robin Verdingh
               : Project Groep 19
--%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset=utf-8>
<title>52Framework -- brought to you by the enavu network - Angel Grablev</title>
<meta name="keywords" content="keywords, here" />
<meta name="description" content="your description here" />

<script src="js/modernizr-1.1.min.js"></script><!-- this is the javascript allowing html5 to run in older browsers -->


<link rel="stylesheet" type="text/css" href="css/css3.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/general.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/grid.css" media="screen" />
<!-- @font-face provided by google, works on 97% of browsers -->
<link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz' rel='stylesheet' type='text/css'>

<style>
/* Feel free to remove these styles, they are for demo page */
.logo, h1, h2, h3, h4, h5, header { font-family: 'Yanone Kaffeesatz', arial, serif; font-size: large; }


header {height:175px; position:relative; margin-bottom:10px; border-bottom:#4B88BE; border-bottom-style: solid; border-bottom-width: 8px;}
	header .logo {font-size:5em; height:100px; padding-top:22px; font-weight:700; text-shadow:5px 5px 10px #4B88BE; color:#EB5A1E; filter: Shadow(Color=#4B88BE, Direction=135, Strength=13);}
	header .statement {width:20%; text-align:right; padding-top:100px;}
header nav { background-color:#EB5A1E; color:#fff; height:25px;   }
	nav ul {list-style:none;}
	nav ul li {float:left; margin-left:5px;}
	nav ul li a {display:block; color:#fff; text-decoration:none; padding:2px 8px; margin-top:3px;  
					-moz-border-radius-topleft: 5px; -webkit-border-top-left-radius: 5px; -moz-border-radius-topright: 5px; -webkit-border-top-right-radius: 5px;}
	nav ul li a:hover, nav ul li.active a {background-color:#4B88BE; color:#000;}


aside {min-height:525px;}	

footer { font-size:.8em; } 
</style>
</head>
<body>
<div class="row">
    <header>
        <div class="logo left"><img src="Afbeeldingen/logo2b.PNG" align="left">
           Festivals
        </div>
        
        <div class="statement right"><button type="button"><a href="#">Log In</a></button></div>
        
        <div class="clear"></div>
        
        <nav>
        	<ul>
            	<li class="active"><a href="/">Home</a></li>
                <li><a href="#">Festival</a></li>
                <li><a href="#">Bands</a></li>
                <li><a href="#">Locatie</a></li>
            </ul>
        </nav>
    </header>
    <div class="clear"></div>
    <aside class="col_4 col box_shadow shadow">
        <p style="padding:5px;"></p> <%-- Hiertussen komt de tekst voor in de box links in het scherm te zetten. --%>
    </aside>
    
    <div class="content col_12 col">
        <article>
              <%@page import="java.sql.*"%>
        <%
        Connection conn=null;
      String driver = "com.mysql.jdbc.Driver";
  String url="jdbc:mysql://localhost:3306";
  String dbName ="/groep19_festivals";
  String userName="root";
  String password="";
  try{
      Class.forName(driver).newInstance();
      String geb_naam = request.getParameter("geb_naam");
      String pwd = request.getParameter("pwd");
    
      
      conn = DriverManager.getConnection(url+dbName, userName, password);
      Statement stmt = conn.createStatement();
      ResultSet rs= stmt.executeQuery("SELECT gebr_naam,gebr_paswoord from geregistreerdegebruikers WHERE gebr_naam='" + geb_naam + "' AND gebr_paswoord = '" + pwd + "'");
 int count = 0;
 while (rs.next()){
     count++;
 }
 System.out.println(count);
 if (count == 1){

  response.sendRedirect("index.jsp");
     
 }

     
 
     
     
 
     rs.close();
     stmt.close();
     conn.close();
   
     
    
  
    
    
  }catch(Exception e){
      System.out.println("fout " + e.getMessage());
  }
  
  
  
    %>
        </article>  
    </div><!-- end content -->
    
    
  <div class="clear" style="height:10px; border-bottom:1px solid #ccc;"></div>
</div><!-- end wrap -->
<footer class="row">
    <section class="col_8 col align_left">
   Footer links
    </section>
    <section class="col_8 col align_right">
    Groep 19 : Maikel Vanmuysen, Tim Telen, Sven Haenen, Ruben Thonissen, Robin Verdingh
    </section>
</footer>
</body>
</html>







        
            

