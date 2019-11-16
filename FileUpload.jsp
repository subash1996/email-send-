<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>File Upload Widget Flat Resposive Website Template | Home :: w3layouts</title>
<link href="css1/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css1/styleadd.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<script src="jsadd/jquery.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="File Upload Widget Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<style>
 .form-group{
     text-align:"center"
     float:right;
     text-align: 10px;
 }
 a{
   text-decoration: none;
    
    
 }
 #btu{
    width: 30%;
    height:35px;
	margin-left: 40%;
	margin-right: 40%;
    background-color:blue;
     color:red;
  }
  ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;

}

li {
  float: none;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;

}

li a:hover {
  background-color: red;
    text-decoration: none;
}
</style>
</head>
<body>


	<%				
	 	
	     String name=request.getSession().getAttribute("name").toString(); 
	       
	       System.out.println("username is: "+name);
	       %>
<div class="container">
<h1 style="color:blue;">FILE UPLOAD WIDGET</h1>
  <ul class="list-inline">
  <li><a class="active" href="Register.jsp">Home</a></li>
  <li><a href="logout.jsp">Logout</a></li>
  </ul>
</div>
<div class="upload">
			<h3>Select File</h3>
		<div class="login-form">
			<form action="FileUpload" method="post" enctype="multipart/form-data">
				<div>
					<span>Title</span>
						<input type="text" name="tname" class="title" value="Eg:file name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Eg: Beach Fun';}"autocomplete="off"/>
				</div>
				<div>
					<span>Description</span>
						<input type="text" class="describe" name="desp" value="Eg:give some comments" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Eg: The one in the Bahamas';}"autocomplete="off" />
				</div>
					<div>
			
			<% Random r=new Random();
	
				int f=r.nextInt(100000);
				String filekey= ""+f;
	
				Random ra=new Random();
	
					int pri=r.nextInt(100000);
					String prikey= ""+pri;
	
	%>
			<span>Public Key</span>
			<input type="text" name="key" value="<%=filekey %>"><br>
			<input type="hidden" name="private" value=<%=prikey %>"> 
			</div>
                <div>
				<input type="file" name="upl"   />
			</div>
		

				
				<ul>
				<!-- The file uploads will be shown here -->
				</ul>

			<br>
			<br>
			<div>
			<input type="submit" class="btn btn-success" id="btu" value="submit"> 
			</div>
			</form>
			
			
		</div>
			</div>
			
	<!-- JavaScript Includes -->
		<script src="jsadd/jquery.knob.js"></script>
	<!-- JavaScript Includes -->

	<!-- jQuery File Upload Dependencies -->
		<script src="jsadd/jquery.ui.widget.js"></script>
		<script src="jsadd/jquery.iframe-transport.js"></script>
		<script src="jsadd/jquery.fileupload.js"></script>
	<!-- jQuery File Upload Dependencies -->
		
	<!-- Main JavaScript file -->
		<script src="jsadd/script.js"></script>
	<!-- Main JavaScript file -->

</body>
</html>