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

<h1 style="color:purple;">Add Teachers</h1>
<form action="TeacherController.jsp">

<table>
<tr><td>Teacher ID:</td><td><input type="number" name="tid"></td></tr>
<tr><td>First_Name:</td><td><input type="text" name="tfname"></td></tr>
<tr><td>Last_Name:</td><td><input type="text" name="tlname"></td></tr>
<tr><td>Date Of Birth:</td><td><input type="text" name="tdob"></td></tr>
<tr><td>Address:</td><td><input type="text" name="tadd"></td></tr>
<tr><td>Phone:</td><td><input type="number" name="tphone"></td></tr>
<tr><td>Designation:</td><td><input type="text" name="tdesig"></td></tr>
<tr><td><input style="background-color:peachpuff;" type="submit"  value="Save"></td></tr>
</table>

</form>
</body>
</html>