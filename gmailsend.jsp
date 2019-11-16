
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="Dbconnection.Dbconn" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
</head>
<style>
.a{
width:100%;
height:500px;
text-align:center;
.b{
width:30%;
height:400px;
}
}


table, th, td {
    border-collapse: collapse;
    border:1px solid white;
    background-color:blue;
}
th, td {
    padding: 10px;
    text-align: left;    
}
</style>
<body>
<table>


<%

String gmail=request.getSession().getAttribute("name").toString(); 

System.out.println("Gmail Id: "+gmail);    

String user=request.getParameter("filename");
String filekey=request.getParameter("filekey");

System.out.println("secretckey====="+filekey);



System.out.println("username from share4"+user);
String key="";

		  
   
 
   
	Connection con=null;

   
   
   con=Dbconn.create();
	PreparedStatement ps2=con.prepareStatement("SELECT * FROM publiccloud.fileupload WHERE fileName='"+user+"' and filekey='"+filekey+"'");
   
	ResultSet rs1=ps2.executeQuery();

	while(rs1.next()){
		
		filekey=rs1.getString(5);
		
		System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk====="+filekey);

	%>

	<tr>

		</tr>
		
		
	<%} %>
	
	</table>

<img src="images/g.gif">



 <meta http-equiv="refresh" content="2; URL=MailSend?filekey=<%=filekey%>&&username<%=gmail%>">

</body>
</html>