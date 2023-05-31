<%@page import="org.jsp.userproductapp.dto.Product"%>
<%@page import="java.util.List"%>
<%@page import="org.jsp.userproductapp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
table {
	border: 1px solid;
	margin: auto;
	table-layout: fixed;
	width: 80%;
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
<title>View Product Page</title>
</head>
<body>
<% User u = (User) session.getAttribute("user");
if(u != null)
{
List<Product> products = (List<Product>)request.getAttribute("products"); 
%>

<table>
<tr>
<th>ID</th>
<th>Name</th>
<th>Description</th>
<th>Brand</th>
<th>Category</th>
<th>Image</th>
<th>Price</th>
<th>Edit</th>
<th>Delete</th>
</tr>

<%
for(Product p:products){
%>
<tr>
<td><%=p.getId()%></td>
<td><%=p.getName()%></td>
<td><%=p.getDescription()%></td>
<td><%=p.getBrand()%></td>
<td><%=p.getCategory()%></td>
<td><%=p.getImage()%></td>
<td><%=p.getPrice()%></td>
<td><a href="find?pid=<%=p.getId()%>" >Edit</a> </td>
<td><a href="deleteProd?pid=<%=p.getId()%>">Delete</a> </td>
</tr>
<% } %>
</table>
<%}else{
	response.sendRedirect("login.jsp");
	}%>
</body>
</html>