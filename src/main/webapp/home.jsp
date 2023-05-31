<%@page import="org.jsp.userproductapp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
form {
	height:350px;
	width: 300px;
	padding: 15px;
	text-align: center;
}
ul{
list-style-type: none;
text-align: left;
}

.ed{
border: 3px solid;
background-color: black;
color: white;
}
h2{
border: 1px solid;
background-color: black;
color: white;
padding: 5px;
}
li{
padding: 5px;
}

a {
		text-decoration: none;
		text-align:center;
		font-size: 20px;
		color: white;
}
form ul li ul li{
 width: 150px;
    height: 25px;
    line-height: 25px;
    
    }
form ul li ul li{
    display: none;
}
h2:hover{
background-color: skyblue;
color:black;
border: none;
}
.ed:hover{
background-color: skyblue;
border: none;
}
a:hover{
color: black;
}
form ul li:hover ul li{
    display: block;
}

</style>
<title>Home Page</title>
</head>
<body>
<form action="">
	<% User u =(User)session.getAttribute("user"); 
	if(u!=null){%>
	<ul>
	<li id="wlcm"> <h2> Welcome Mr.<%= u.getName() %></h2>
	<ul>
	<li class="ed"><a href="editUser.jsp">Edit profile</a></li> 
	<li class="ed"><a href="viewUser.jsp">View profile</a></li>
	<li class="ed"><a href="addProduct.jsp">Add products</a></li>
	<li class="ed"><a href="viewProd">View products</a></li>
	<li class="ed"><a href="logout">Logout</a></li>
	<li class="ed"><a href="deleteUser">Delete account</a></li>
	</ul>
	</li>
	</ul>
	
	<% 
	} else {
		response.sendRedirect("login.jsp");}
		%>
	</form>
</body>
</html>