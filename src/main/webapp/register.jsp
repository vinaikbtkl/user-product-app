<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
form {
	border: 1px solid ;
	margin: auto;
	width: 500px;
	padding: 15px;
	text-align: center;
}
input{
border:1px solid grey;
padding:5px;
margin:auto;
width: 300px;
height: 25px;
font-size: 15px;
text-align: center;
border-radius: 10px;
}
button{
border:none;
background-color: rgb(27,116,228);
color: white;
padding:5px;
margin:auto;
width: 250px;
height: 40px;
font-size: 20px;
text-align: center;
border-radius: 10px;
}

table {
	border: 1px solid;
	margin: auto;
	table-layout: fixed;
	width: 80%;
	border-collapse: collapse;
}
.gen{
height: 15px;
width: 15px;
display: compact;
}
#gen{

}
th {
	border: 1px solid;
	padding: 5px;
	text-align: left;
}
td {
	border: 1px solid;
	margin: auto;
	text-align: center;
	padding: 5px;
	text-align: left;
}
</style>
<title>Register Page</title>
</head>
<body>
<div>
	<form action="register" method="post">
	<input type="text" name="nm" placeholder="Enter your name">
	<br><br>
	<input type="number" name="age" placeholder="Enter your age">
	<br><br>
	<div id="gen">
	<input type="radio" name="gender" value="Male" class="gen">Male
	<input type="radio" name="gender" value="Female" class="gen">Female
	</div>
	<br><br>
	<input type="tel" name="ph" placeholder="Enter your phone number">
	<br><br>
	<input type="email" name="em" placeholder="Enter your E-mail">
	<br><br>
	<input type="password" name="ps" placeholder="Enter the password">
	<br><br>
	<button type="submit">Register</button>
	</form>
	</div>
</body>
</html>