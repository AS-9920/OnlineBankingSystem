<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>New User Registration</title>
<link rel="stylesheet" href="bootstrap.min.css">
<style>
body {
	background-image: url('images/Second.jpg');
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
	margin-bottom: 16px;
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
</style>
	<script>
	function validateForm()
	{
		var selectedOption = document.getElementById("acctype").value;
		if(selectedOption === "select")
		{
			alert("Please select option");
			return false;
		}
	}
	</script>
</head>
<body>
	<div class="container">
		<h1>New User Registration</h1>

		<form name="frm" method="post" action="register">
			<div class="form-group">
				<label for="email">Email:</label> 
				<input type="email" name="email" autocomplete="off" required class="form-control">
				<br> 
				<label for="psw">Password:</label> 
				<input type="password" name="psw" required class="form-control" autocomplete="off"> 
				<br> 
				<label for="name">Name:</label> 
				<input type="text" name="name" required class="form-control" autocomplete="off"> 
				<br>
				<label for="mono">Mobile Number:</label> 
				<input type="tel" name="mono" required class="form-control" autocomplete="off"> 
				<br>
				<label for="bal">Balance:</label> 
				<input type="number" name="balance" required class="form-control" autocomplete="off"> 
				<br>
				<label for="gen">Gender:</label> 
				<input type="radio" name="gen" value="male"> Male&nbsp; 
				<input type="radio" name="gen" value="female"> FeMale&nbsp; 
				<input type="radio" name="gen" value="Male">&nbsp;Other
				<br><br>
				<label for="acctype"> Account Type:</label> 
				<select name="acctype" 	class="form-control" id="acctype">
					<option>Select</option>
					<option value="saving">Saving Account</option>
					<option value="current">Current Account</option>
					<option value="fixed">Fixed Account</option>
				</select>
				<br> 
				<label for="sque"> Security Question:</label> 
				<select id="sque" name="sque" class="form-control">
				<option value="select">Select</option>
				<option value="school name">What is first school Name?</option>
				<option value="born place">In which city you were born?</option>
				</select>
				<br>
				<label for="ans">Answer:</label> 
				<input type="text" name="ans" class="form-control" autocomplete="off" required>
				<br>
				<input type="submit" value="SignUp" id="btn" onclick="validateForm()"> 
				<input type="reset" value="Reset" id="btn">
			</div>
		</form>
	</div>
</body>
</html>
