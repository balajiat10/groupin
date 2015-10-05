<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%String name;
String aut;
String pub;
String des;
String seller="";
	String buyer="";
	String qwe="";
	String product="";
String query="";
	
 name=request.getParameter("age");
aut=request.getParameter("wpm");
 pub=request.getParameter("wpmm");
 try
 {
 String uid=(String)session.getAttribute("user");
  String id=(String)session.getAttribute("name");

if(uid==null)
{
	out.println("Please login and continue");
} 
else if(name.length()==0||aut.length()==0||pub.length()==0)
{
	
	out.println("Please enter all the fields");
	}
else
{
 Class.forName("com.mysql.jdbc.Driver");
Connection conn=null;

conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/balaji","root","");

Statement ps=conn.createStatement();




qwe="Select * from technical where description='"+name+"' and author='"+aut+"'and publisher='"+pub+"';";

ResultSet rel=ps.executeQuery(qwe);
if(rel==null)
out.println("No such events are available");
else
{
while(rel.next())
{
	
seller=rel.getString(1);
	 buyer=uid;
	 product=rel.getString(5);
	
		

}
if(buyer.equals(seller))
{
	out.println("One cannot join into his own event");
}
else
{
query = "INSERT INTO tbuk (buyer,seller,product) VALUES ('"+buyer+"','"+seller+"','"+product+"');";

 int i=ps.executeUpdate(query);
 if(i>0)
	out.println("Your request has been sent to the organiser");
else
	out.println("OOPS!!Some error");
}
}
	}
 }
 catch(Exception e)
 {
	 e.toString();
 }
	%>