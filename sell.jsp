<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%

String name;
String aut;
String pub;
String des;


 name=request.getParameter("age");

aut=request.getParameter("wpm");
 
pub=request.getParameter("wpmm");
 
des=request.getParameter("wp");
try
{ 
String uid=(String)session.getAttribute("user");
 

if(uid==null)
{
	out.println("Please login and continue");
} 

if(name.length()==0||aut.length()==0||pub.length()==0||des.length()==0)
{
	
	out.println("Please enter all the fields");
	}

else
{
 Class.forName("com.mysql.jdbc.Driver");

Connection conn=null;

conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/balaji","root","");

Statement ps=conn.createStatement();


if(name.equals("sports"))
{
	

String query = "INSERT INTO sports (name,title,author,publisher,description) VALUES ('"+uid+"','"+name+"','"+aut+"','"+pub+"','"+des+"');";



int i= ps.executeUpdate(query);



if(i>0)  
{
out.println("Your event will be organised "+uid);

}

else

out.println("error");

}


if(name.equals("technical"))
{
	

String query = "INSERT INTO technical (name,title,author,publisher,description) VALUES ('"+uid+"','"+name+"','"+aut+"','"+pub+"','"+des+"');";



int i= ps.executeUpdate(query);



if(i>0)  
{
out.println("Your event will be organised "+uid);

}

else

out.println("error");

}


ps.close();

conn.close();
 }
}
catch(Exception e)
{
	e.toString();
}
%>