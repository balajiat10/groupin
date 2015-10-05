<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<html>
<head>
<title>Group in</TITLE>
<style>
div
{
BACKGROUND-COLOR:F7F3F3
}
div.home{border-width:12px;

border-color:58FAF4;
border-collapse:collapse;
BACKGROUND-COLOR:F7F3F3;

}
</style>


<script language="javascript" type="text/javascript">

<!-- 
//Browser Support Code
function ajaxFunction()
{
	
	var ajaxRequest;  
	// The variable that makes Ajax possible!
	
	
	try
	{
		
		// Opera 8.0+, Firefox, Safari
		
		ajaxRequest = new XMLHttpRequest();
	
	} 
	catch (e)
	{
		
		// Internet Explorer Browsers
		
		try
		{
			
			ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
		
		} 
		catch (e) 
		{
			
			try
			{
				
				ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
			
			} 
			catch (e)
			{
				
				// Something went wrong
				
				alert("Your browser broke!");
				
				return false;
			
			}
		
		}
	
	}
	
	// Create a function that will receive data sent from the server
	
	ajaxRequest.onreadystatechange = function()
	{
		
		if(ajaxRequest.readyState == 4)
		{
			
			var ajaxDisplay = document.getElementById('div3');
				
			var ajaxDisplay1 = document.getElementById('log1');
			
			
			var name=ajaxRequest.responseText;
			
			 
			alert (name);
			
			
							
			ajaxDisplay1.innerHTML = name;
			
			
		
		}
	
	}
	
	var age = document.getElementById('age').value;

	var wpm = document.getElementById('wpm').value;

	
	var queryString = "?age=" + age + "&wpm=" + wpm ;
	
	ajaxRequest.open("GET", "log.jsp" + queryString, true);
	
	ajaxRequest.send(null); 

}

function ajaxFunction2()
{
	
	var ajaxRequest;  
	// The variable that makes Ajax possible!
	
	
	try
	{
		
		
		ajaxRequest = new XMLHttpRequest();
	
	} 
	catch (e)
	{
		
	
		try
		{
			
			ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
		
		} 
		catch (e) 
		{
			
			try
			{
				
				ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
			
			} 
			catch (e)
			{
				
					alert("Your browser broke!");
				
				return false;
			
			}
		
		}
	
	}
	
	
	ajaxRequest.onreadystatechange = function()
	{
		
		if(ajaxRequest.readyState == 4)
		{
			
		}
	
	}
	

	
	
	ajaxRequest.open("GET", "logout.jsp" , true);
	
	ajaxRequest.send(null); 

}


function verify() 
{

            //for field must take some input
				
            if (form1.name.value == "") {
                alert("Please give the event name");
             
                return false;
            }
	 	if (form1.reg.value == "") {
                alert("Please give the beginning time");
             
                return false;
            }
            if (form1.pub.value == "") {
                alert("Please give the location");
             
                return false;
            }

            

           
		send();
      return( true );
 
}

function ajaxFunction1()
{
	
	
	var ajaxRequest;  
	// The variable that makes Ajax possible!
	
	
	try
	{
		
		// Opera 8.0+, Firefox, Safari
		
		ajaxRequest = new XMLHttpRequest();
	
	} 
	catch (e)
	{
		// Internet Explorer Browsers
		
		try
		{
			
			ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
		
		} 
		catch (e) 
		{
			
			try
			{
				
				ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
			
			} 
			catch (e)
			{
				
				// Something went wrong
				
				alert("Your browser broke!");
				
				return false;
			
			}
		
		}

	}
	
	// Create a function that will receive data sent from the server
	
	ajaxRequest.onreadystatechange = function()
	{
		
		if(ajaxRequest.readyState == 4)
		{
			
			var ajaxDisplay = document.getElementById('div4');
			
			
			ajaxDisplay.innerHTML = ajaxRequest.responseText;
		
		}
	
	}
	
	var age = document.getElementById('name').value;
	
	var wpm = document.getElementById('aut').value;

	
	var queryString = "?age=" + age + "&wpm=" + wpm ;
	
	ajaxRequest.open("GET", "del.jsp" + queryString, true);
	
	ajaxRequest.send(null); 
}

function ajaxFunction20()
	{
	
	
	var ajaxRequest;  
	// The variable that makes Ajax possible!
	
	
	try
	{
		
		// Opera 8.0+, Firefox, Safari
		
		ajaxRequest = new XMLHttpRequest();
	
	} 
	catch (e)
	{
		
		// Internet Explorer Browsers
		
		try
		{
			
		ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
		
		} 
	catch (e) {
			try{
				ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e){
				// Something went wrong
				alert("Your browser broke!");
				return false;
			}
		}
	}
	// Create a function that will receive data sent from the server
	ajaxRequest.onreadystatechange = function(){
		if(ajaxRequest.readyState == 4){
			var ajaxDisplay = document.getElementById('div4');
			
			ajaxDisplay.innerHTML = ajaxRequest.responseText;
		}
	}
	var age = document.getElementById('name').value;
	var wpm = document.getElementById('aut').value;

	var queryString = "?age=" + age + "&wpm=" + wpm ;
	ajaxRequest.open("GET", "del1.jsp" + queryString, true);
	ajaxRequest.send(null); 
}
function ajaxFunction10(){
	
	var ajaxRequest;  // The variable that makes Ajax possible!
	
	try{
		// Opera 8.0+, Firefox, Safari
		ajaxRequest = new XMLHttpRequest();
	} catch (e){
		// Internet Explorer Browsers
		try{
			ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try{
				ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e){
				// Something went wrong
				alert("Your browser broke!");
				return false;
			}
		}
	}
	// Create a function that will receive data sent from the server
	ajaxRequest.onreadystatechange = function(){
		if(ajaxRequest.readyState == 4){
			var ajaxDisplay = document.getElementById('div14');
			
			ajaxDisplay.innerHTML = ajaxRequest.responseText;
		}
	}

	var wpm = document.getElementById('aut1').value;

	var queryString = "?wpm=" + wpm ;
	ajaxRequest.open("GET", "delreq.jsp" + queryString, true);
	ajaxRequest.send(null); 
}
function ajaxFunction15(){
	
	var ajaxRequest;  // The variable that makes Ajax possible!
	
	try{
		// Opera 8.0+, Firefox, Safari
		ajaxRequest = new XMLHttpRequest();
	} catch (e){
		// Internet Explorer Browsers
		try{
			ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try{
				ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e){
				// Something went wrong
				alert("Your browser broke!");
				return false;
			}
		}
	}
	// Create a function that will receive data sent from the server
	ajaxRequest.onreadystatechange = function(){
		if(ajaxRequest.readyState == 4){
			var ajaxDisplay = document.getElementById('div14');
			
			ajaxDisplay.innerHTML = ajaxRequest.responseText;
		}
	}

	var wpm = document.getElementById('aut1').value;

	var queryString = "?wpm=" + wpm ;
	ajaxRequest.open("GET", "delreq1.jsp" + queryString, true);
	ajaxRequest.send(null); 
}
</script>
</head>

<div class="title" width="1500" id="div2" style="background-image:url('z5.jpg');height:110px;width:1350px;">
<h1 style="text-align:center; font-color:yellow;font-size:40">
Group in</H1> 
<h1 align="right">
<a href="signup.html" >
	<button width="48" height="48">Signup</button></a>
	<a href="logout.jsp"><input type='button' value="Logout"  /></a>
		<a href="app1.jsp"><input type='button' value="Home"  /></a>
</h1>
</DIV>
<br>
<div id="log1">
<%
String name=(String)session.getAttribute("name");
if(name==null)
{out.print("Please login and continue ");}
else  
out.print("Hello "+name);
%>   
</div>
<div class="log" width="1500" id="div3" align="right" style="background-image:url('z4.jpg');height:100px;width:1350px;">
<br>
 <span id="log">
<form name='myForm'>
<font color="white">Mail-id </font><input type='text' id='age' /> <br />
<font color="white">Password </font><input type='password' id='wpm' /><br />

<input type='button' onclick='ajaxFunction()' value="Login"  />
</form>
</span>
 
  

</div>
<br>
<DIV CLASS="HOME" align="center" style="background-image:url('z5.jpg');height:500px;width:1350px;">
<%
try{
 
 String uid=(String)session.getAttribute("user");
 String id=(String)session.getAttribute("name");
 
if(uid==null)
{
	out.println("Please login and continue");
} 

else
{
 Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection conn;

conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/balaji","root","");

Statement ps=conn.createStatement();



%>
<br><br>
 <table border="2" align="center" cellpadding="7">
<tr>
<td align="CENTER" colspan="3">
PROFILE
</td>
</tr>
<TR>
<td align="CENTER" >
Sports events organised
</td>

<td align="CENTER" >
Technical events organised
</td>
<TR>
<td align="center">
<%
out.println("Sports events organised");
out.println("<br>");
String select="Select * from sports where name='"+uid+"';";
ResultSet rel=ps.executeQuery(select);

while(rel.next())
{
	out.println("Description~~"+rel.getString(5));
		out.println();
		out.println("Timing~~"+rel.getString(3));
		out.println();
		out.println("Location~~"+rel.getString(4));
		out.println("<br>");
}
%>
</td>

<td>
<%
out.println("Technical events organised");
out.println("<br>");
 select="Select * from technical where name='"+uid+"';";
 rel=ps.executeQuery(select);

while(rel.next())
{
	out.println("Description~~"+rel.getString(5));
		out.println();
		out.println("Timing~~"+rel.getString(3));
		out.println();
		out.println("Location~~"+rel.getString(4));
		out.println("<br>");
}
%>
</td>
</TR>
<tr>
<td align="CENTER" colspan="3">
People willing to join your events 

<%

out.println("<br>");
 select="Select * from buk where seller='"+uid+"';";
 rel=ps.executeQuery(select);

while(rel.next())
{
	out.println("Interested name~~"+rel.getString(1));
		out.println();
		out.println("Event name~~"+rel.getString(3));
		out.println();
		
	
}
%>
</td>
</tr>
<tr align="center">
<td align="CENTER" colspan="2"><form method="POST"  name="form1">

    <table border="2" align="center" cellpadding="7">
<caption>Cancel your event</caption>
   
        <tr>

            <td><strong>Event type</strong></td>

   
            <td>
 						<select id="name">
 					<option value="sports">Sports</OPTION>	
               <option value="technical">Technical</OPTION>
               
            </td>
     
        </tr>

      <tr>

            <td><strong>Event name</strong></td>

   
            <td>
 
                <input type="text" name="reg" id="aut" onclick='ajaxFunction1()' />
            </td>
     
        </tr>
        
    
     

       
       

       
        
        <tr align="center">

            <td>
                <!--Submit Button, Function verify need to be called when we process
                submit button-->
                <input type='button' onclick='ajaxFunction20()' value="Cancel"  />
            </td>

            <td>
                <!--Reset Button-->
                 <a href="profile.jsp"><input type="button" value="Reload"></a>
            </td>
        </tr>
</form>

    <!--Form Close -->


        <!--Table Close-->
    </table>



</div>
<div id="div4">
</div>
<td align="CENTER" colspan="2"><form method="POST"  name="form1">

    <table border="2" align="center" cellpadding="7">
<caption>Remove your request</caption>
   
       
            <td><strong>Event name</strong></td>

   
            <td>
 
                <input type="text" name="reg" id="aut1" onblur='ajaxFunction10()' />
            </td>
     
        </tr>
        
    
     

       
       

       
        
        <tr align="center">

            <td>
                <!--Submit Button, Function verify need to be called when we process
                submit button-->
                <input type='button' onclick='ajaxFunction15()' value="Donot join"  />
            </td>

            <td>
                <!--Reset Button-->
                 <a href="profile.jsp"><input type="button" value="Reload"></a>
            </td>
        </tr>
</form>

    <!--Form Close -->


        <!--Table Close-->
    </table>

<%

ps.close();
conn.close();
}
}
catch(Exception e)
{
	
	e.toString();
}
%>

</div>
<div id="div14">
</div>