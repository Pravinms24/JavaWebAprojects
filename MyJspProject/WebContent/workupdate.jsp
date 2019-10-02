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
String EmailId=request.getParameter("eMailid");
int id=Integer.parseInt(Id);
//idbc to insert data into backend
try
{
	//loading driver class
	Class.forName("com.mysql.jdbc.Driver");
	//Establish connection with DB
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Javadb","root","5555");//"url","u id","pwd" of database
	//preparing sql query
	PreparedStatement ps=con.prepareStatement("update students_details set eMailid=? where id=?");
	ps.setString(1,EmailId);
	ps.setInt(2,id);
	ps.executeUpdate();
	con.close();
}
catch(Exception e)
{
	System.out.println(e);
}
out.print("Updated Sucessfully");

%>
</body>
</html>