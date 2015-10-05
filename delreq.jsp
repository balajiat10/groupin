
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%

String aut;
String qwe="";
String des;



aut=request.getParameter("wpm");

 String uid=(String)session.getAttribute("user");
try{
if(uid==null)
{
	out.println("Please login and continue");
} 
else if(aut.length()==0)
{
	
	out.println("Please enter all the fields");
	}
else
{
 Class.forName("com.mysql.jdbc.Driver");

Connection conn=null;

conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/balaji","root","");

Statement ps=conn.createStatement();






 qwe="Select * from buk where buyer='"+uid+"' and product='"+aut+"';";

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




ps.close();
conn.close(); }

}
catch(Exception e)
{
	e.toString();
}

%>