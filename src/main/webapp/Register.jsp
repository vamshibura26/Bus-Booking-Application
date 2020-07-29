<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Lang.Register" %>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-image: url("css5.jpg");
}
h1 {
text-align:center;
color:lime;
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
.required {
color:red;
}
#row1 {
background-image:linear-gradient(to bottom left,#7CFC00,#00FFFF);
color:white;
width:75px;
height: 30px;
border:none;
border-radius: 10px;
display: flex;
align-self: center;
margin-top: 10px;
justify-content: center;
font-size: 13px;
text-align: center;
outline: none;
cursor: pointer;
transition:all 0.3s ease;
}
#row1:hover {
	background-image: linear-gradient(to bottom right,yellow,red);
	color:black;
	transform:translateY(2px);
	text-decoration: underline;
}
</style>
<title>Register</title>
</head>
<body>
<h1>Register Form</h1>
<form id="form1" action="Reg" method="post">
<p>
<div class="row">
<label for="First Name">First Name:<span class="required">*</span></label>
<input type="text" name="Fn" required="required">&nbsp
<label for="Last Name">Last Name:<span class="required">*</span></label>
<input type="text" name="Ln" required="required"><br><br>
</div>
<div class="row">
<label for="Phone No">Phone No:<span class="required">*</span></label>
<input type="text" name="Pn" required="required"><br><br>
</div>
<div class="row">
<label for="Email-Id">Email-Id:<span class="required">*</span></label>
<input type="text" name="Em" required="required"><br><br>
</div>
<div class="row">
<label for="Date">DOB:<span class="required">*</span></label>
<input type="date" name="DOB" min="1-1-1990" max="31-12-2025" required="required"><br><br>
</div>
<div class="row">
<label Create Password>Create Password:<span class="required">*</span></label>
<input type="text" name="Cp"><br><br>
</div>
<div class="row">
<label for="Re-Enter">Re-Enter:<span class="required">*</span></label>
<input type="password" name="Pass" required="required"><br><br>
</div>
<div class="row">
<label  for="Register"></label>
<input id="row1" type="Submit" value="Register">
</div>
</p>
</form>
</body>
</html>