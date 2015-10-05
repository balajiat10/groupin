
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<%

String name;
String aut;
String pub;
String des="";
String qwe="";

 name=request.getParameter("age");
aut=request.getParameter("wpm");
 pub=request.getParameter("wpmm");
 
try
{
 String uid=(String)session.getAttribute("user");
 
if(uid==null)
{
	out.println("Please login and continue");
} 
else if(name.length()==0&&aut.length()==0&&pub.length()==0&&des.length()==0)
{
	
	out.println("Please enter all the fields");
	}
else
{
 Class.forName("com.mysql.jdbc.Driver");
 
 Connection conn=null;

conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/balaji","root","");

Statement ps=conn.createStatement();


if(name.length()!=0&&aut.length()!=0&&pub.length()==0)
{
	qwe="Select * from sports where description='"+name+"' and author='"+aut+"'and publisher='"+pub+"';";
ResultSet rel=ps.executeQuery(qwe);

while(rel.next())
{
	out.println("Description~~"+rel.getString(5));
		out.println();
		out.println("Timing~~"+rel.getString(3));
		out.println();
		out.println("Location~~"+rel.getString(4));
		out.println();
}
}
 if(name.length()!=0&&aut.length()!=0)
{
	qwe="Select * from sports where description='"+name+"' and author='"+aut+"';";

ResultSet rel=ps.executeQuery(qwe);

while(rel.next())
{
	out.println("Description~~"+rel.getString(5));
		out.println();
		out.println("Timing~~"+rel.getString(3));
		out.println();
		out.println("Location~~"+rel.getString(4));
		out.println();
}
}
else 
{

qwe="Select * from sports where description='"+name+"';";
ResultSet rel=ps.executeQuery(qwe);
if (rel.next())

	out.print("Events are available");
else
	out.print("No such events are available");

while(rel.next())
{
	
		out.println("Description~~"+rel.getString(5));
		out.println();
		out.println("Timing~~"+rel.getString(3));
		out.println();
		out.println("Location~~"+rel.getString(4));
		out.println();
	

}

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