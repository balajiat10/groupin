
<html>

<head>

<title>Group in</TITLE>

<style>

div
{




	BACKGROUND-COLOR:F7F3F3
}

div.home
{
	border-width:12px;

	
border-color:58FAF4;

	border-collapse:collapse;
	
BACKGROUND-COLOR:F7F3F3;
}

</style>

</head>

<div class="title" width="1500" style="background-image:url('z5.jpg');height:110px;width:1350px;">
<h1 style="text-align:center; font-color:yellow;font-size:40">

Groupin.com</H1>
<BR><br>
<H1 style="text-align:center; font-color:yellow;font-size:20">
Catch up with awesome ideas
</H1>

</DIV>
<br>
<DIV CLASS="HOME" style="background-image:url('z5.jpg');height:500px;width:1350px;">

<h1 align="right">
<a href="signup.html" >
<button width="48" height="48">Sign up</button>
</a>

<a href="app1.jsp" >
<button width="48" height="48">Login</button>
</a>
</h1>

<H1 style="text-align:center; font-color:yellow;font-size:20">



<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>


<%

  

String name=request.getParameter("name");

String phone=request.getParameter("reg");

String email=request.getParameter("email");

String password=request.getParameter("pass");

Connection conn=null;
try{

Class.forName("com.mysql.jdbc.Driver");


conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/balaji","root","");


Statement ps=conn.createStatement();

String query = "INSERT INTO signup (name,phone,email,password) VALUES ('"+name+"',"+phone+",'"+email+"','"+password+"');";



int i= ps.executeUpdate(query);



if(i>0)  
{
%>


</h1>
<h1 align="center">
<img src="stark.jpg" alt="registered">

</h1>


<%
}

else

{
	out.println("error");





}
ps.close();

conn.close();
}
catch(Exception e)
{
e.toString();}

%>


</DIV>
</HTML>

