<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forget Password</title>
<link rel="stylesheet" href="bootstrap.min.css">
<style>
body {
	background-image: url('images/First.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	font-family: Arial, sans-serif;
	color: #333;
}

.container {
	max-width: 800px;
	margin: 0 auto;
	padding: 20px;
	background-color: lightblue;
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
a:hover{
	color:black;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Forgotten password? Recover Now</h1>
		<br>
		<form name="frm" method="post" action="check">
			<div class="form-group">
				<label for="email">Email:</label> 
				<input type="text" name="email" autocomplete="off" required class="form-control">
				<br>
				<label for="seque"> Security Question:</label> 
				<select name="sque" class="form-control">
				<option>Select</option>
				<option value="school name">What is first school Name?</option>
				<option value="born place">In which city you were born?</option>
				</select><br>
				<label for="dob">Answer:</label> 
				<input type="text" name="ans" required class="form-control">
				<br>
				<input type="submit" value="Login" id="btn"> 
				<input type="reset" value="Reset" id="btn">
			</div>
		</form>
		<a href="index">Home</a>
	</div>
</body>
</html>