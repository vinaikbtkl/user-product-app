<%@page import="org.jsp.userproductapp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit page</title>
<style type="text/css">
form {
	border: 1px solid ;
	margin: auto;
	width: 300px;
	padding: 15px;
	text-align: center;
}
input {
padding: 5px;

}
</style>

</head>
<body>
<%
		User u = (User)session.getAttribute("user");
		if (u != null) {
	%>
	<form action="editUser" method="post">
	<table>
	<tr>
	<th></th>
	<td><input type="hidden" name="id" value="<%=u.getId()%>"></td>
	</tr>
	<tr>
	<th>Name:</th>
	<td><input type="text" name="nm" value="<%=u.getName()%>"></td>
	</tr>
	<tr>
	<th>Age:</th>
	<td><input type="number" name="age" value="<%=u.getAge()%>"></td>
	</tr>
	<tr>
	<th>Gender:</th>
	<td><input type="radio" name="gender" value="Male">Male 
		<input type="radio" name="gender" value="Female">Female </td>
	</tr>
	<tr>
	<th>Phone:</th>
	<td><input type="tel" name="ph" value="<%=u.getPhone()%>"></td>
	</tr>
	<tr>
	<th>Email:</th>
	<td><input type="email" name="em" value="<%=u.getEmail()%>"></td>
	</tr>
	<tr>
	<th>Password:</th>
	<td><input type="password" name="ps" value="<%=u.getPassword() %>"></td>
	</tr>
	</table>
		<input type="submit" value="Update">
	</form>
	<%
		}else{
			response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>