<%@page import="org.omg.CORBA.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="javax.servlet.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-image: url("css1.jpg");
	background-size: 1000px 700px;
}
#form1 {
color:white;
display:table;
padding:15px;
margin:auto;
}
.row {
display:table-row;
}
.row label {
display:table-cell;
padding:2px;
}
.row input {
display:table-cell;
padding:2px;
}
#r {
color:red
}
h1 {
text-align: center;
color:black;
}
#row1 {
background-image:linear-gradient(to right,pink,yellow);
color:black;
border: none;
width:70px;
height: 30px;
font-size: 15px;
border-radius: 15px;
text-align: center;
cursor: pointer;
}
#row1:hover {
background-image: linear-gradient(to bottom left,#FF00FF,#7CFC00);
 color:white;
    }
</style>
<title>Login Page</title>
</head>
<h1>Please Enter Login Details</h1>
<body>
<form id="form1"action="Log" method="post">
<p>
<div class="row">
<label for="E-mail">Email:<span id="r">*</span></label>
<input type="text" id="E-mail" name="Em" required="required"><br><br>
</div>
<div class="row">
<label for="Password">Password:<span id="r">*</span></label>
<input type="password" id="Password" name="Pass" required="required"><br><br>
</div>
<div class="row">
<label for="Login"></label>
<input id="row1" type="Submit" value="Login">
</div>
</p>
</form>
</body>
</html>