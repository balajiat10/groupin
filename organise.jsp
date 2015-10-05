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


//-->
</script>
</head>

<div class="title" width="1500" id="div2" style="background-image:url('z5.jpg');height:110px;width:1350px;">

<h1 style="text-align:center; font-color:yellow;font-size:40">



Group in
</H1> 

<h1 align="right">

<a href="signup.html" >
	
<button width="48" height="48">Signup</button></a>
	
<a href="profile.jsp" >	
<button width="48" height="48">Profile</button>
</a>
	<a href="app1.jsp">
	<button width="48" height="48">Home</button></a>
<a href="logout.jsp"><input type='button' value="Logout"  />
</a>

</h1>

</DIV>
<br>
<div id="log1">

<%

String name=(String)session.getAttribute("name");

if(name==null)
{}

else  

out.print("Hello "+name);

%> 

</div>


<div class="log" width="1500" id="div3" align="right" style="background-image:url('z4.jpg');height:100px;width:1350px;">
<br>
<form name='myForm'>

<font color="white">Mail-id</font> <input type='text' id='age' /> <br />

<font color="white">Password</font> <input type='password' id='wpm' />

<br>

<input type='button' onclick='ajaxFunction()' value="Login"  />

</form>



</form> 
 
  

</div>
<br>
<DIV CLASS="HOME" style="background-image:url('z5.jpg');height:500px;width:1350px;">
<br><br>

</h1> 

<TABLE style="margin-bottom:0;" align="center">
<tr>
<td align="CENTER" colspan="2">
Choose an event type
</td></tr>
<TR>

<td align="center">
<figure>
<a href="sorganise.jsp" ><img src="ra3.jpg" alt="buy" border="5" height="250" width="250">
</a><figcaption>Sports</figcaption>
</figure>
</td>

<td align="center">
<figure>
<a href="torganise.jsp" ><img src="ra4.jpg" alt="buy" border="5" width="250" height="250">
</a><figcaption>Technical</figcaption>
</figure>
</td>


</tr>

</TABLE></HTML>

