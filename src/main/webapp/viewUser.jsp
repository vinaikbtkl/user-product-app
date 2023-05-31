<%@page import="org.jsp.userproductapp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
form {
	width: 300px;
}
table {
	border: 1px solid;
	margin: auto;
	table-layout: fixed;
	height: 200px;
	width: 100%;
	border-collapse: collapse;
}
th {
	border: 1px solid;
	padding: 5px;
	text-align: left;
	width: 100px;
}
td {
	border: 1px solid;
	margin: auto;
	text-align: left;
	padding: 5px;
	width: 100px;
}
</style>
<title>Profile</title>
</head>
<body>
<%
		User u = (User) session.getAttribute("user");
		if (u != null) {
	%>
	<form action="editUser" method="post">
	<table>
	<tr>
	<th>ID:</th>
	<td><%=u.getId()%></td>
	</tr>
	<tr>
	<th>Name:</th>
	<td><%=u.getName()%></td>
	</tr>
	<tr>
	<th>Age:</th>
	<td><%=u.getAge()%></td>
	</tr>
	<tr>
	<th>Gender:</th>
	<td><%=u.getGender()%></td>
	</tr>
	<tr>
	<th>Phone:</th>
	<td><%=u.getPhone()%></td>
	</tr>
	<tr>
	<th>Email:</th>
	<td><%=u.getEmail()%></td>
	</tr>
	</table>
		
	</form>
	<%
		}else{
			response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>