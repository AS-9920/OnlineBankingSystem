<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reports</title>
<link rel="stylesheet" href="bootstrap.min.css">
<script>
<script type="text/javascript">
function createRequestObject(){
var tmpXmlHttpObject;
if(window.XMLHttpRequest)
{
tmpXMLHttpObject = new XMLHttpRequest();
}
else if(window.ActiveXObject)
{
tmpXmlHttpObject = new ActiveXObject("Microsoft.XMLHTTP");
}
return tmpXmlHttpObject;
}
var http = createRequestObject();

function makeGetRequest()
{
no = document.frm.ano.value;
http.open('get', 'searchinfo?accno=' +no);
http.onreadystatechange = processResponse;
http.send(null);
}

function processResponse()
{
if(http.readyState == 4)
{
var response = http.responseText;
document.getElementById('info').innerHTML = response;
}
}

function clearRepo()
{
document.frm.rno.value = " ";
document.getElementById('info').innerHTML = "";
}
</script>
</head>
<body>
<div class="container">
<br><br>
<h1>Search Account</h1>
<hr>
<form name="frm" method="post">
Account Number:<br> <input type="text" name="ano" class="form-control"><br>
<input type="button" value="Search" onclick="makeGetRequest()">
</form>
<div id="info"></div>
</div>
</body>
</html>