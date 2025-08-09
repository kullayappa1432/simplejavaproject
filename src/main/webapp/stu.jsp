<%@ page import="com.students.user" import="java.sql.*" import="java.util.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%user u1=new user("kullayappa");
String name=u1.getname();
%>
<p>Hello i am ,<%=name %> </p>
<form action="">
<input type="text" placeholder="Please enter your name"></form>
<%
Connection con=null;
String nam;
Statement stmt=null;
ResultSet rs=null;

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","tiger");
	stmt=con.createStatement();
	rs=stmt.executeQuery("select * from stu");
	while(rs.next()){
		out.println("Name :"+rs.getString(1));
		out.println("<br>Roll No:"+rs.getInt(2));
	}
}catch(ClassNotFoundException e){
	out.println("Driver NotFound");
	
}catch(SQLException e){
	out.println("sql Exception");
}
 %>
 <%
 Random r=new Random();
 int rand=r.nextInt();
 out.println(rand);
 
 %>
</body>
</html>
