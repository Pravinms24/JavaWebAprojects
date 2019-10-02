<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="powderblue">
<center>
<form action="workcreate.jsp">
<h1>Student Registration Details</h1><br>
ID:<input type="text" name="id"><br><br>	
NAME:<input type="text" name="name"><br><br>
GENDER:
	<input type="radio" name="gender" value="Male">Male<br>
	<input type="radio" name="gender" value="Female">Female<br>
COUNTRY:
		<select name="country">
		<option value="India">India</option>
		<option value="Us">Us</option>
		<option value="Canada">Canada</option>
		<option value="Uk">uk</option>		
		</select><br>
E-MAIL ID:<input type="text" name="eMailid"><br>
<input type="submit" value="create">
</form>
</center>
</body>
</html>