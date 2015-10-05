
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%

String aut;
String qwe;
String des;



aut=request.getParameter("wpm");
try{
 String uid=(String)session.getAttribute("user");

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





 qwe="delete from buk where buyer='"+uid+"' and product='"+aut+"';";


try{
int rel=ps.executeUpdate(qwe);
if(rel>0)
	out.println("Your request has been deleted");
else
	out.println("sorry error");
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