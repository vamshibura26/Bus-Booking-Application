<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="javax.servlet.*,java.sql.*,Lang.Example.*,Lang.Login.*" %>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-image: url("css4.jpg");
	background-size: 1400px 650px;
}
h1 {
text-align: center;
color:#000000;
}
.row1 {
background-image:linear-gradient(to bottom left,#00FF00,#00FA9A);
border:none;
width:60px;
height: 30px;
border-radius: 20px;
font-size: 12px;
font-style: normal;
color:white;
text-align: center;
cursor: pointer;
}	
.row1:hover {
	background-image: linear-gradient(to bottom left,#00FFFF,#FF1493);
	color:black;
}
#form1 {
position: relative;
left:1280px;
top:2px;
}
h3 {
color:white;
background-image: linear-gradient(to bottom right,black,green,yellow);
border-radius: 10px; 
}
p {
position:relative;
top:70px;
text-align: center;
color:black;
text-decoration: underline;
}
h5 {
position:relative;
top :50px;
color:red;
border: solid 2px white;
}
.row4 {
position:relative;
left:100px;
margin: 16.6px;
}
.row3 {
position:relative;
left:100px;
margin: 15px;
}
.set {
background-image:linear-gradient(to bottom left,#00FF00,#00FA9A);
border:none;
width:120px;
height: 25px;
border-radius: 15px;
font-size: 12px;
font-style: normal;
cursor: pointer;
position: relative;
left:520px;
}
.set1 {
background-image:linear-gradient(to bottom left,#FFFF00	,#FF0000);
border:none;
width:100px;
height: 25px;
border-radius: 15px;
font-size: 12px;
font-style: normal;
cursor: pointer;
position: relative;
left:580px;
}
p1 {
position: relative;
left:500px;
}
p2 {
position: relative;
left:550px;
}
.Net {
position: relative;
left: 650px;
top:50px;
border: none;
background-image: linear-gradient(to bottom right,#008080,#0000CD);
color:white;
height:25px;
width:70px;
border-radius: 15px;
}
.Net:hover {
	background-image: linear-gradient(to bottom right,#FF69B4,#800000);
    color:black;
}
.Tim {
position: relative;
left:500px;
}
.Tim1 {
background-image:linear-gradient(to bottom right,#FFFF00,#32CD32);
border:none;
border-radius:15px;
width:70px;
height:25px;
position: relative;
left: 520px;
}
</style>
<title>Welcome</title>
</head>
<body>
<%
String r=(String)request.getAttribute("name");
if(session.getAttribute("Email")==null)
{
	response.sendRedirect("Login.jsp");
}
%>
<h1><%out.println("Welcome "+r); %></h1>
<form id="form1" action="Out">
<div class="row">
<label class="row2" for="Logout"></label>
<input class="row1" type="Submit" value="Logout">
</div>
</form>
<h3><marquee behavior="scroll" direction="right">Book Your Destination Point......!!!!!</marquee></h3>
<form action="Sub" method="post">
<p1>From:</p1><select name="From" class="set" required="required">
<option value="Hyderabad">Hyderabad</option>
<option value="Secunderabad">Secunderabad</option>
<option value="Rajanna">Rajanna</option>
<option value="Siddipet">Siddipet</option>
</select>
<p2>To:</p2><select name="To" class="set1" required="required">
<option value="Hyderabad">Hyderabad</option>
<option value="Secunderabad">Secunderabad</option>
<option value="Rajanna">Rajanna</option>
<option value="Siddipet">Siddipet</option>
</select><br><br>
<div>
<label for="Date"><p1>Date:</p1></label>
<input class="set" type="date" name="Date" min="1-1-1990" max="31-12-2025" required="required"><br><br>
</div>
<label class="Tim" for="Time">Time:</label>
<select class="Tim1" name="Time" required="required">
<option value="6:00 AM">6:00 AM</option>
<option value="8:15 AM">8:15 AM</option>
<option value="10:15 AM">10:15 AM</option>
<option value="12:00 PM">12:00 PM</option>
<option value="3:00 AM">3:00 PM</option>
<option value="4:15 AM">4:15 PM</option>
<option value="6:00 PM">6:00 PM</option>
<option value="8:15 PM">8:15 PM</option>
<option value="10:15 PM">10:15 PM</option></select>
<p>Bus Layout</p>
<h5>
<label class="row4" for="Seat-1">Seat-1</label>
<input class="row4" type="checkbox" name="S" value="S1" checkbox="checked">
<label class="row4" for="Seat-2">Seat-2</label>
<input class="row4"type="checkbox" name="S" value="S2" checkbox="checked">
<label class="row4" for="Seat-3">Seat-3</label>
<input class="row4" type="checkbox" name="S" value="S3" checkbox="checked">
<label class="row4" for="Seat-4">Seat-4</label>
<input class="row4"type="checkbox" name="S" value="S4" checkbox="checked">
<label class="row4" for="Seat-5">Seat-5</label>
<input class="row4" type="checkbox" name="S" value="S5" checkbox="checked">
<label class="row4" for="Seat-6">Seat-6</label>
<input class="row4"type="checkbox" name="S" value="S6" checkbox="checked">
<label class="row4" for="Seat-7">Seat-7</label>
<input class="row4" type="checkbox" name="S" value="S7" checkbox="checked">
<label class="row4" for="Seat-8">Seat-8</label>
<input class="row4"type="checkbox" name="S" value="S8" checkbox="checked">
<label class="row4" for="Seat-9">Seat-9</label>
<input class="row4" type="checkbox" name="S" value="S9" checkbox="checked">
<label class="row4" for="Seat-10">Seat-10</label>
<input class="row4"type="checkbox" name="S" value="S10" checkbox="checked"><br><br><br><br>
<label class="row3" for="Seat-11">Seat-11</label>
<input class="row3" type="checkbox" name="S" value="S11"checkbox="checked">
<label class="row3" for="Seat-12">Seat-12</label>
<input class="row3"type="checkbox" name="S" value="S12" checkbox="checked">
<label class="row3" for="Seat-13">Seat-13</label>
<input class="row3" type="checkbox" name="S" value="S13" checkbox="checked">
<label class="row3" for="Seat-14">Seat-14</label>
<input class="row3"type="checkbox" name="S" value="S14" checkbox="checked">
<label class="row3" for="Seat-15">Seat-15</label>
<input class="row3" type="checkbox" name="S" value="S15" checkbox="checked">
<label class="row3" for="Seat-16">Seat-16</label>
<input class="row3"type="checkbox" name="S" value="S16" checkbox="checked">
<label class="row3" for="Seat-17">Seat-17</label>
<input class="row3" type="checkbox" name="S" value="S17" checkbox="checked">
<label class="row3" for="Seat-18">Seat-18</label>
<input class="row3"type="checkbox" name="S" value="S18" checkbox="checked">
<label class="row3" for="Seat-19">Seat-19</label>
<input class="row3" type="checkbox" name="S" value="S19" checkbox="checked">
<label class="row3" for="Seat-20">Seat-20</label>
<input class="row3"type="checkbox"  name="S" value="S20" checkbox="checked">
</h5></br>
<label for="Next"></label>
<input class="Net" type="submit" value="Next">
</form>
</body>
</html>