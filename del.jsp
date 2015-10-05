
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%

String name;
String aut;
String qwe="";
String des;


 name=request.getParameter("age");
aut=request.getParameter("wpm");

 String uid=(String)session.getAttribute("user");
try{
if(uid==null)
{
	out.println("Please login and continue");
} 
else if(name.length()==0&&aut.length()==0)
{
	
	out.println("Please enter all the fields");
	}
else
{
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn=null;

conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/balaji","root","");

Statement ps=conn.createStatement();



if(name.length()!=0&&aut.length()!=0)

{


if(name.equals("sports"))
{

qwe="Select * from sports where title='"+name+"'and description='"+aut+"';";
}
if(name.equals("technical"))
{
 qwe="Select * from technical where title='"+name+"' and description='"+aut+"';";
}

ResultSet rel=ps.executeQuery(qwe);
try{
while(rel.next())
{
	out.println(rel.getString(5));
		out.println();
		out.println(rel.getString(3));
		out.println();
		out.println(rel.getString(4));
		out.println("<br>");
}
}
catch(SQLException se){
          se.printStackTrace();
   }





}
else if(name.length()!=0)

{

if(name.equals("sports"))
{

select="Select * from sports where description='"+aut+"';";
}
if(name.equals("technical"))
{

 select="Select * from technical where description='"+aut+"' ;";
}

try{
ResultSet rel=ps.executeQuery(select);

while(rel.next())
{
	out.println(rel.getString(5));
		out.println();
		out.println(rel.getString(3));
		out.println();
		out.println(rel.getString(4));
		out.println("<br>");
}
}
catch(SQLException se){
            se.printStackTrace();
   }
}
 





ps.close();
conn.close(); }

}
catch(Exception e)
{
	
	e.toString();
}

%>