<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Banking Application</title>
<link rel="stylesheet" href="bootstrap.min.css">
<style>
body {
	background-image: url('images/bank3.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	font-family: Arial, sans-serif;
	color: white;
}

.container {
	max-width: 800px;
	margin: 0 auto;
	padding: 20px;
	background-color: rgb(130, 135, 137);
	opacity: 0.8;
}

h1 {
	text-align: center;
}

.form-group {
	margin-bottom: 20px;
}

label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
}

#btn {
	width: auto;
	padding: 10px 20px;
	background-color: #4CAF50;
	color: #fff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

#btn:hover {
	background-color: #45a049;
}
a{
	color: white;	
}
a:hover{
	background-color: rgb(130, 135, 137);
	color:white;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Online Banking Application</h1>
		<br>
		<form name="frm" method="post" action="login">
			<div class="form-group">
				<label for="mono">Mobile Number:</label> 
				<input type="text" name="mono" autocomplete="off" required class="form-control">
			</div>

			<div class="form-group">
				<label for="password">Password:</label> 
				<input type="password" name="psw" required class="form-control">
			</div>

			<div class="form-group">
				<input type="submit" value="Login" id="btn"> 
				<input type="reset" value="Reset" id="btn">
			</div>
		</form>
		<a href="signup">New User Registration</a>&nbsp; &nbsp; 
		<a href="forgetpsw">Forgotten password?</a>&nbsp; &nbsp; 
		<a href="reports">Show All Records</a>
	</div>
</body>
</html>
