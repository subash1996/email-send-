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
<a href="UserView.jsp">BACK</a>


			 		<%				
			
	     String Id=request.getSession().getAttribute("id").toString(); 
	       
	       System.out.println("Ids: "+Id);
	       %>  
<% 
/* String Id="";
 */String filename=""; 
String filetype="";
String filesize="";
String Encryption="";
String decryption="";

%>
	
 <table border="2" align="center" style="color:black; width: 90%; margin-top:10px;  background-color:transparent;">
		

	<tr>
		<!-- <td style="text-align:center; font-size:25px;">FILEID</td> -->
		
	<td style="text-align:center; font-size:25px;">FILENAME</td>
	
	<td style="text-align:center; font-size:25px;">FILETYPE</td>
		
	<td style="text-align:center; font-size:25px;">FILESIZE</td>
	
<td style="text-align:center; font-size:25px;">Encryption</td>
 	
	<td style="text-align:center; font-size:25px;">Decryption</td>

	</tr>
	
<% 


Connection d = Dbconn.create();
PreparedStatement p = d.prepareStatement("SELECT filename,filetype,filesize,encryptionfile,decryptionfile FROM  publiccloud.fileupload where id='"+Id+"'");
ResultSet s=p.executeQuery();
 while(s.next()){
	/*  Id=s.getString(1);  */
filename=s.getString(4);
filetype=s.getString(6);
filesize=s.getString(7);  
Encryption=s.getString(8); 
decryption=s.getString(9);

%>
	  
 <tr>
<%-- <td><%=s.getString(1)%></td> --%>
<td><%=s.getString(4)%></td>
<td><%=s.getString(6)%></td>
  <td><%=s.getString(7)%></td>  
 <td><%=s.getString(8)%></td>
 <td><%=s.getString(9)%></td> 
<td align="left"><a href="Request?file=<%=filename%>&&filetype=<%=filetype%>&&filesize=<%=filesize%>&&encryptionfile=<%=Encryption%>&&decryptionfile=<%=decryption%> " method="post"><!-- <button class="btn btn-danger"  >Documents details</button> --></a></td>
</tr> 
  <%}%>  
</table> 
  
</body>
</html> 