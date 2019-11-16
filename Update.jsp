<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import=" Dbconnection.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <link rel="icon" href="web1.jpg" type="image/gif" sizes="20X20">
 --><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
 <style>
    body
    {
  background: linear-gradient(to bottom, #33ccff 0%, #ffff66 100%);
 height: 606px;
    }
table, th, td {
    font-family:Times new roman;
    border: 3px double black;
    border-collapse: collapse;
    text-align: center;  
    color:black;
    font-size:20px;
    padding-bottom: 5px;
}

     a {
  font-size:34px;
  font-family:Times new roman;
  display: block;
  color: black;
  text-align: center;
  margin-left:80%;
  margin-top: 3%;
}
button{
margin-left:-180px; 
font-family:The Devil Net; 
font-size:15px;
}
 </style>
 <script>
 function editRecord(id){
	    var f=document.form;
	    f.method="post";
	    f.action='EditAutority.jsp?id='+id;
	    f.submit();
	}
 </script>
</head>
<body>
<form method="post" name="form">
<a href="UserView.jsp">BACK</a>


					<%
					String edit =request.getParameter("edit");
					System.out.println("edit==="+edit);
					
					String id=request.getParameter("id");
					System.out.println("id is:"+id);
					
					  /*String username=request.getSession().getAttribute("name").toString(); 
				       
				       System.out.println("Gmail Id: "+username);
 */ 
   
%>
	
  
	
<% 


Connection d = Dbconn.create();
PreparedStatement p = d.prepareStatement("UPDATE publiccloud.userrequest u SET status='"+edit+"' where sno='"+id+"'");
p.executeUpdate();
response.sendRedirect("AutorityRequest.jsp");
/* <%--  while(s.next()){
name=s.getString(2);
filename=s.getString(3);
username=s.getString(6); 
 status=s.getString(7); */
 %>
	  
   
</table> 
</form>  
</body>
</html>