<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Panel</title>
<link rel="stylesheet" href="bootstrap.min.css">
<link rel="stylesheet" href="style1.css">
<style type="text/css">
*{
	margin:0;
	padding:0;
}
body{
	font-size: 100%;
	font-family: sans-serif;
}
div,section, ul, li, a, header{
	box-sizing: border-box;
}
header{
	 width: 100%;
    display: flex;
    justify-content: space-between;
    padding: 20px 50px;
    position: fixed;
    z-index: 999;
}
#menu li{
	list-style: none;
	display: inline-block;
	margin: 20px;
}
#menu li a{
	color: black;
    text-decoration: none;
    font-size: 20px;
    margin-right: 40px;
}
section{
    width: 100%;
    float: left;
    height: 100vh;
    position: relative;
}
#home{
   background-color: whitesmoke;
  /*  background-image: url(images/admin.jpg); */
   background-repeat: no-repeat;
   float:right;
}
h1{
    position: absolute;
    top: 30%;
    left: 35%;
    transform: translate(-50,-50);
}
h2{
	margin-left: 30%;
	margin-top: 20%;
}
.tbl{
	margin-left: 63%;
	margin-top: 230px; 
	top: 20%;
}
.btn{
	background-color: black;
	color:white;
	margin-right: 10px;
	margin: 05px;
}
</style>
</head>
<body>
<section id="home">
<header>
<a href="#"><img src="images/admin.jpg" alt="admin" width="20%" height="90%"></a>
<ul id="menu">
<li><a href="#home">Home</a></li>
<li><a href="#about">About us</a></li>
<li><a href="#services">Services</a></li>
<li><a href="#contact">Setting</a></li>
</ul>
</header>
<div class="container">
<form name="frm" method="post" action="Check">
<table class="tbl">
<tr>
<td><h5>UserId</h5></td>
<td><input type="text" name="uid" class="form-control" autocomplete= "off" required autofocus></td>
</tr>
<tr>
<td><h5>Password</h5></td>
<td><br><input type="password" name="psw" class="form-control" required></td>
</tr>
<tr>	
<td><br><input type="submit" value="Submit" class="btn">
<input type="reset" value="Reset" class="btn"></td>
</tr>
</table></form></div></section>
</body>
</html>