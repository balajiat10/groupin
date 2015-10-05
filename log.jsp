
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>


<%

String uid=request.getParameter("age");
String password=request.getParameter("wpm");
Class.forName("com.mysql.jdbc.Driver");
Connection conn=null;
try
{
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/balaji","root","");

Statement ps=conn.createStatement();


String select="Select * from signup where email='"+uid+"' and password='"+password+"';";
ResultSet rel=ps.executeQuery(select);
int flag=1;
while(rel.next())
{
	session.setAttribute("user",uid);
	session.setAttribute("name",rel.getString(1));
	out.println("Welcome to Group in ~~~~~"+rel.getString(1)+"~~~~~~~");
flag++;
}	
if(flag==1)
{
	out.println("WRONG-USER");

}




ps.close();
conn.close();
 }
 catch(Exception e)
 {
	 e.toString();
 }
%>
