<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<a style="color:green;" href="retriveClass.jsp">Classes</a> &nbsp
<a style="color:green;" href="retriveStudent.jsp">Students</a> &nbsp
<a style="color:green;" href="retriveSubject.jsp">Subjects</a> &nbsp
<a style="color:green;" href="retriveTeacher.jsp">Teachers</a> &nbsp
<a style="color:green;" href="Logout.jsp">Logout</a>

<h1 style="color:purple;">Add Classes</h1>

<form action="ClassController.jsp">

<table>
<tr><td>Class ID:</td><td><input type="number" name="cid"></td></tr>
<tr><td>Class Name:</td><td><input type="text" name="cname"></td></tr>
<tr><td><input style="background-color: peachpuff;" type="submit"  value="save"></td></tr>
</table>

</form>
</body>
</html>