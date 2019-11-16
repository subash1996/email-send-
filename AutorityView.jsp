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
</head>
<body>
<a href="CentralAutorityView.jsp">BACK</a>


		<%-- 	  		<%				
	 	
	     String id=request.getSession().getAttribute("Id").toString(); 
	       
	       System.out.println("id is: "+id);
	       %>   --%>  
<% 
String Id="";
String filename=""; 
String filetype="";
String filesize="";
 String filekey="";
%>
	
 <table border="2" align="center" style="color:black; width: 90%; margin-top:10px;  background-color:transparent;">
		

	<tr>
		<td style="text-align:center; font-size:25px;" id="id">FILEID</td>
		
	<td style="text-align:center; font-size:25px;">FILENAME</td>
	
	 <td style="text-align:center; font-size:25px;">FILEKEY</td>
	 
	<td style="text-align:center; font-size:25px;">FILETYPE</td>
		
	<td style="text-align:center; font-size:25px;">FILESIZE</td>
	
 	
	<!-- <td style="text-align:center; font-size:25px;">STATUS</td> -->

	</tr>
	
<% 


Connection d = Dbconn.create();
PreparedStatement p = d.prepareStatement("SELECT id,filename,filekey,filetype,filesize FROM publiccloud.fileupload f");
ResultSet s=p.executeQuery();
 while(s.next()){
	 Id=s.getString(1);
filename=s.getString(2);
filekey=s.getString(3);
filetype=s.getString(4);
filesize=s.getString(5); 

 
%>
	  
 <tr>
  <td><%=s.getString(1)%></td>  
<td><%=s.getString(2)%></td>
  <td><%=s.getString(3)%></td> 
<td><%=s.getString(4)%></td>
 <td><%=s.getString(5)%></td>   
<%-- <td align="left"><a href="Documentdetails.jsp?Id=<%=Id%>&& file=<%=filename%>" method="post"><!-- <button class="btn btn-danger"  >Request</button> --></a></td> --%>
</tr> 
  <%}%>  
</table> 
  
</body>
</html>