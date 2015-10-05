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
	border-style:dotted;
	border-color:58FAF4;
	border-collapse:collapse;
	BACKGROUND-COLOR:F7F3F3;
}
</style>



<script language="javascript" type="text/javascript">

<!-- 
//Browser Support Code
function 
ajaxFunction()
{
	
	var ajaxRequest;  
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

<div class="title" width="1500" id="div2">

<h1 style="text-align:center; font-color:yellow;font-size:40">

<img src="ra.jpg" align="center" alt="logo" height="50" width="50">
Group in
<img src="ra.jpg" align="center" alt="logo" height="50" width="50">
</H1> 

<h1 align="right">

<a href="signup.html" >
	
<button width="48" height="48">Signup</button>
</a>
	
<a href="profile.jsp" >	
<button width="48" height="48">Profile</button>
</a>
	
<a href="app1.jsp" >	
<button width="48" height="48">Home</button>
</a>
	
<a href="logout.jsp">
<input type='button' value="Logout"  />
</a>

</h1>

</DIV>

<div id="log1">

<%

String name=(String)session.getAttribute("name");

if(name==null)

{}

else  

{
	out.print("Hello "+name);

}
%> 

</div>


<div class="log" width="1500" id="div3" align="right">

<form name='myForm'>

Mail-id <input type='text' id='age' /> 
<br />

Password <input type='password' id='wpm' />

<br>
<input type='button' onclick='ajaxFunction()' value="Login"  />

</form>



</form>  
  


</div>

<DIV CLASS="HOME">
</h1> 

<TABLE style="margin-bottom:0;" align="center">

<tr>

<td align="CENTER" colspan="2">
Social 
</td>
</tr>
<TR>

<td align="center">
<a href="scjoin.jsp" >
<img src="bm1.jpg" alt="buy" border="5" height="250" width="250">
</a>
<figcaption>Join</figcaption>
</td>

<td align="center">
<a href="scorganise.jsp" >
<img src="bm2.jpg" alt="buy" border="5" width="250" height="250">
</a>
<figcaption>Organise</figcaption>
</td>



</tr>

</TABLE>
</HTML>

