<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add product Page</title>

<style type="text/css">
form {
	border: 2px solid;
	margin: auto;
	width: 500px;
	padding: 15px;
	text-align: center;
}
input{
border: none;
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
	padding: 8px;
	text-align: left;
}
td {
	border: 1px solid;
	margin: auto;
	text-align: left;
	padding: 8px;
}
button {
	padding-left: 25px;
	padding-right: 25px;
	padding-bottom: 5px;
	padding-top: 5px;
	color: black;
}
</style>
</head>
<body>
<form action="addProd" method="post">
<table>
	<tr>
	<th>Name:</th>
	<td><input type="text" name="nm"></td>
	</tr>
	<tr>
	<th>Description:</th>
	<td><input type="text" name="desc"></td>
	</tr>
	<tr>
	<th>Brand:</th>
	<td><input type="text" name="br" ></td>
	</tr>
	<tr>
	<th>Category:</th>
	<td><input type="text" name="cat"></td>
	</tr>
	<tr>
	<th>Image:</th>
	<td><input type="text" name="img"></td>
	</tr>
	<tr>
	<th>Price:</th>
	<td><input type="text" name="prc"></td>
	</tr>
</table>
	<br>
	<button type="submit">Add</button>
	</form>
</body>
</html>