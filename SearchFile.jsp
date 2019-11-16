<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.util.*"%> 
    <%@page import="java.sql.*" %>
    <%@page import="Dbconnection.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Flat Search Box Responsive Widget Template </title>
<link href="css/stylesearch.css" rel="stylesheet" type="text/css" media="all"/>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Flat Search Box Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--Google Fonts-->
</head>
<body>
	
	 <%				
			
	     String username=request.getSession().getAttribute("name").toString(); 
	       
	       System.out.println("username: "+username);
	       
	       
	       %>
	       
<div class="search">
	<div class="s-bar">
	   <form action="SearchShow.jsp" method="post">
		<input type="text" name="file" value="Search File" onfocus="this.value = '';">
		<input type="submit"  value="Search"/>
		
		 
	  </form>
	</div>
	</div>   
</body>
</html>