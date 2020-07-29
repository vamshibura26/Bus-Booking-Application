<%@page import="Lang.Welcome"%>
<%@page import="Lang.Booking"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-image: url("css6.jpg");
	background-size: 1380px 700px;
}
h1 {
position:relative;
top:50px;
margin:20px;
border-radius:20px;
background-image:linear-gradient(to bottom right,#7CFC00,#00FFFF);
color:white;
}
.form1 {
color:white;
display:table;
padding:15px;
margin:auto;
}
.row {
display:table-row;
}
.row label {
position:relative;
top:100px;
left:100px;
display:table-cell;
padding:2px;
}
.row input {
position:relative;
top:100px;
display:table-cell;
padding:2px;
}
.row1 {
position: relative;
top: 100px;
left:215px;
}
.bt {
background-image: linear-gradient(to bottom right,#00008B,#B22222);
color:white;
border-radius: 15px;
border: none;
height: 30px;
width: 70px;
}
.bt:hover {
	background-image: linear-gradient(to bottom right,#B22222,#2E8B57);
	transform:translateY(2px);
}
.row2 {
position: relative;
bottom:50px;
}
.row3 {
position: relative;
top:50px;
left:140px
}
p1 {
color:black;
}
p2 {
color:black;
}
p3 {
color:black;
}
p4 {
color:black;
}
p5 {
color:black;
}
.row5 {
position: relative;
top:50px;
left:110px
}
.co {
border: none;
border-radius: 5px;
}
p7 {
color:yellow;
}
</style>
<title>Details</title>
</head>
<body>
<%
HttpSession session2=request.getSession();
String From=(String)session2.getAttribute("From");
String To=(String)session2.getAttribute("To");
String Date=(String)session2.getAttribute("Date");
String S=(String)session2.getAttribute("Seats");
String Time=(String)session2.getAttribute("Time");
double j=(Double)session2.getAttribute("j");
if(session.getAttribute("Email")==null)
{
	response.sendRedirect("Login.jsp");
}
%>
<h1><marquee behavior="scroll" direction="right">Passenger Details</marquee></h1>
<form class="form1" action="Details" method="post">
<div class="row3">
<table border="3">
<tr>
<td><label for="From">From: </label></td>
<td><p2><%out.println(From); %></p2></td>
</tr>
<tr>
<td><label for="To">To: </label></td>
<td><p2><%out.println(To); %></p2></td>
</tr>
<tr>
<td><label for="Date">Date: </label></td>
<td><p3><%out.println(Date); %></p3></td>
</tr>
<tr>
<td><label for="S">Seats:</label></td>
<td> <p4><%out.println(S); %></p4></td>
</tr>
<tr>
<td><label for="Time">Time:</label></td>
<td> <p5><%out.println(Time); %></p5></td>
</tr>
<tr>
<td><label for="Amount">Amount:</label></td>
<td><p6><%out.println(j);%>/-</p6></td>
</tr>
</table><br><br>
</div>
<div class="row5">
<label for="Coupon Code">Coupon Code:</label>
<input class="co" type="text" size="10" name="Cup"><br><br>
<p7>Apply Coupon Code</p7>
</div>
<div class="row">
<label for="Passenger Name">Passenger Name:</label>
<input type="text" name="Pn" required="required"><br><br>
</div>
<div class="row">
<label for="Phone No">Phone No:</label>
<input type="text" name="No" required="required"><br><br>
</div>
<div class="row">
<label for="E-mail">E-mail:</label>
<input type="text" name="Em" required="required"><br><br>
</div>
<div class="row1">
<input type="checkbox" checkbox="checked" type="checkbox" required="required">
<label>Agree all terms and conditions</label><br><br>
</div>
<div class="row">
<label for="Confirm"></label>
<input class="bt" type="submit" value="Confirm">
</div>
</form>
</body>
</html>