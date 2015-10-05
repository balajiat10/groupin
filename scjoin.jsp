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
function ajaxFunction()
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

function ajaxFunction2()
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
			
		}
	
	}
	

	
	
	ajaxRequest.open("GET", "logout.jsp" , true);
	
	ajaxRequest.send(null); 

}


function verify() 
{
	if (form1.name.value == "") 
	{
         	alert("Please give the event name");
             	return false;
         }
	 if (form1.reg.value == "") 
	 {
                alert("Please give the beginning time");
            	return false;
         }
         if (form1.pub.value == "") 
	{
                alert("Please give the location");
            	return false;
        }
	send();
        return( true );
 }

function ajaxFunction1()
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
			
			var ajaxDisplay = document.getElementById('ta');
			
			
			ajaxDisplay.innerHTML = ajaxRequest.responseText;
		
		}
	
	}
	
	var age = document.getElementById('name').value;
	
	var wpm = document.getElementById('aut').value;
	
	var wpmm = document.getElementById('pub').value;
	
	
	var queryString = "?age=" + age + "&wpm=" + wpm + "&wpmm=" + wpmm ;
	
	ajaxRequest.open("GET", "buy.jsp" + queryString, true);
	
	ajaxRequest.send(null); 

}

function ajaxFunction5()
{
	
	
	var ajaxRequest;  
	alert("ORDER HAS BEEN SENT");
	
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
			
			var ajaxDisplay = document.getElementById('div4');
			
			
			ajaxDisplay.innerHTML = ajaxRequest.responseText;
		
		}
	
	}
	
	var age = document.getElementById('name').value;
	
	var wpm = document.getElementById('aut').value;
	
	var wpmm = document.getElementById('pub').value;
	
	
	var queryString = "?age=" + age + "&wpm=" + wpm + "&wpmm=" + wpmm ;
	
	ajaxRequest.open("GET", "buk.jsp" + queryString, true);
	
	ajaxRequest.send(null); 

}


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
	
<a href="logout.jsp">
<input type='button' value="Logout"  />
</a>
	
<a href="app1.jsp">
<input type='button' value="Home"  />
</a>

</h1>

</DIV>

<div id="log1">

<%

String name=(String)session.getAttribute("name");

if(name==null)

{
	out.print("Please login and continue ");

}

else  

{
	out.print("Hello "+name);

}
%>   

</div>

<div class="log" width="1500" id="div3" align="right">

 
<span id="log">

<form name='myForm'>
Mail-id<input type='text' id='age' /> 
<br />
Password<input type='password' id='wpm' />
<br />

<input type='button' onclick='ajaxFunction()' value="Login"  />

</form>

</span>
 
  


</div>

<DIV CLASS="HOME" align="center">
</h1> 


<td><form method="POST"  name="form1">
<table border="2" align="center" cellpadding="7">
<caption>Social information</caption>
<tr>
<td><strong>Event name</strong></td>
<td>
<input type="text" name="name" id="name" onblur='ajaxFunction1()'   />
</td>
</tr>
<tr>
<td><strong>Timing</strong></td>
<td>
<input type="text" name="reg" id="aut" onblur='ajaxFunction1()' />
</td>
</tr>
<td><strong>Location</strong></td>
<td>
<input type="text" name="pub" id="pub" onblur='ajaxFunction1()'/>
</td>
</tr>
<tr align="center">
<td>
<input type='button' onclick='ajaxFunction5()' value="Join"  />
</td>
<td>
<a href="scjoin.jsp"><input type="button" value="Reload"></a>
</td>
</tr>
</form>
</table>
    
<DIV CLASS="success" align="center" id="div4">
    
<table>
    
<tr ><td id="ta"></td></tr>
    
</div>
</HTML>


