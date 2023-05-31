<%@page import="org.jsp.userproductapp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">

form {
	border: 1px solid grey;
	width: 500px;
	height: 420px;
	padding: 15px;
	margin:auto;
	text-align: center;
	border-radius: 5px;
}
input{
border:1px solid grey;
padding:5px;
margin:auto;
width: 400px;
height: 40px;
text-align:center;
font-size: 15px;
border-radius: 10px;
}
button{
border:none;
background-color: rgb(27,116,228);
color: white;
padding:5px;
margin:auto;
width: 400px;
height: 45px;
font-size: 20px;
text-align: center;
border-radius: 10px;
}

a{
text-decoration: none;
width:250px;
border: 1px solid;
padding: 10px;
border-radius: 10px;
background-color: rgb(49,162,76);
color: white;
}
#show{
text-align: left;
margin-left: 50px;
}
#show input{
	height: 15px;
	width: 15px;
}
h3{
color: red;
}
</style>
<title>Login page</title>
</head>
<body>

<form action="login" method="post">
<% String s = (String)request.getAttribute("msg");
if(s != null){%>
<center><h3>
<%=s %>
</h3></center>
<%} %>

<h1>Welcome to Shopping E-Kart</h1>
	<input type="tel" name="ph" placeholder="Enter your phone number"> 
	<br><br>
	<input type="password" name="ps" placeholder="Enter your password" id="myInput">
	<br><br>
	<div id="show"><input type="checkbox" onclick="myFunction()"> Show Password</div>

	<br>
	<button type="submit">Log in</button>
	
	<br><br>
	<h2>
	<a href="register.jsp"> Click here to register </a>
	</h2>
</form>
<script type="text/javascript">
function myFunction() {
	  var x = document.getElementById("myInput");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
</script>
</body>
</html>