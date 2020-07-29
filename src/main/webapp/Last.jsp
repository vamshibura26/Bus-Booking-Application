<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
background-image: url(css7.jpg);
background-size: 1500px 700px;
}
h1 {
color:red;
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
display:table-cell;
padding:2px;
}
.row input {
display:table-cell;
padding:2px;
}
.bt
{
border: none;
border-radius: 14px;
height: 25px;
width: 70px;
color:white;
background-image: linear-gradient(to bottom left,#00FA9A,#00FFFF);
}
.bt:hover {
transform:translateY(3px);	
	color:black;
	background-image: linear-gradient(to bottom right,#FFFF00,#00FF00);
}
</style>
<meta charset="ISO-8859-1">
<title>payment</title>
</head>
<body>
<%
HttpSession session2=request.getSession();
String Pn=(String)session.getAttribute("Pn");
String Cn=(String)session.getAttribute("No");
String Em=(String)session.getAttribute("Em");
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
<marquee behavior="scroll" direction="right"><h1>Passenger Details</h1></marquee>
<form class="form1" action="Bye" method="post">
<div class="row">
<label for="Passenger Name">Passenger Name:</label>
<label><%out.println(Pn); %></label><br><br>
</div>
<div class="row">
<label for="Phone No">Phone No:</label>
<label><%out.println(Cn); %></label><br><br>
</div>
<div class="row">
<label for="Email id">Email Id:</label>
<label><%out.println(Em); %></label><br><br>
</div>
<div class="row">
<label for="From">From:</label>
<label><%out.println(From); %></label><br><br>
</div>
<div class="row">
<label for="To">To:</label>
<label><%out.println(To); %></label><br><br>
</div>
<div class="row">
<label for="Date">Date:</label>
<label><% out.println(Time);%></label><br><br>
</div>
<div class="row">
<label form="Seats">Seats:</label>
<label><%out.println(S); %></label><br><br>
</div>
<div class="row">
<label for="Amount">Amount:</label>
<label><%out.println(j); %>/-</label><br><br>
</div>
<div class="row">
<label for="Pay"></label>
<input class="bt" type="submit" value="Pay">
</div>
</form>
</body>
</html>