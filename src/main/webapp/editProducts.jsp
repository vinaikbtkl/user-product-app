<%@page import="org.jsp.userproductapp.dto.User"%>
<%@page import="org.jsp.userproductapp.dto.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Product Page</title>
<style type="text/css">
form {
	border: 1px solid black;
	margin: auto;
	width: 500px;
	padding: 15px;
	text-align: center;
}
input{
}
button{
width: 150px;
height: 35px;
}
table {
	border: 1px solid;
	margin: auto;
	table-layout: fixed;
	width: 80%;
	height:200px;
	border-collapse: collapse;
}

th {
	border: 1px solid;
	padding: 3px;
}
td {
	border: 1px solid;
	margin: auto;
	text-align: center;
	padding: 3px;
}
</style>
</head>
<body>
	<%
	User user = (User) session.getAttribute("user");
	if (user != null) {
		Product p = (Product) request.getAttribute("product");
	%>
	<form action="editProd" method="post">
	<table>
	<tr>
	<input type="hidden" value="<%=p.getId()%>" name="id">
	<tr>
	<th>Name:</th>
	<td><input type="text" name="nm" value="<%=p.getName()%>"></td>
	</tr>
	<tr>
	<th>Description:</th>
	<td><input type="text" name="desc"value="<%=p.getDescription()%>"></td>
	</tr>
	<tr>
	<th>Brand:</th>
	<td><input type="text" name="br" value="<%=p.getBrand()%>"></td>
	</tr>
	<tr>
	<th>category:</th>
	<td><input type="text" name="cat" value="<%=p.getCategory()%>"></td>
	</tr>
	<tr>
	<th>Image:</th>
	<td><input type="text" name='im' value="<%=p.getImage()%>"></td>
	</tr>
	<tr>
	<th>Price:</th>
	<td><input type="text" name="pr" value="<%=p.getPrice()%>"></td>
	</tr>
	</table>
	<br>
	<button type="submit">Update</button>

	</form>
	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>
	
	
</body>
</html>