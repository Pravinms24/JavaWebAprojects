<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String Id=request.getParameter("id");
String Name=request.getParameter("name");
String Gender=request.getParameter("gender");
String Country=request.getParameter("country");
String EmailId=request.getParameter("eMailid");
int id=Integer.parseInt(Id);
//jdbc to insert daya into backend
try
{
	//for loading driver class
	Class.forName("com.mysql.jdbc.Driver");
	//Establishing connection with db
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Javadb","root","5555");//"url","u id","pwd" of database
	//preparing sql query
	PreparedStatement ps=con.prepareStatement("insert into students_details values(?,?,?,?,?)");
	ps.setInt(1, id);
	ps.setString(2, Name);
	ps.setString(3, Gender);
	ps.setString(4, Country);
	ps.setString(5, EmailId);
	ps.executeUpdate();
	con.close();
}
catch(Exception e)
{
	System.out.println(e);
}
out.print("Inserted Sucessfully");
%>
</body>
</html>