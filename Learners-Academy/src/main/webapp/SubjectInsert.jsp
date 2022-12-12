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

<h1 style="color:purple;">Add Subjects</h1>
<form action="SubjectController.jsp">

<table>
<tr><td>Subject_ID:</td><td><input type="number" name="subid"></td></tr>
<tr><td>Subject_Name:</td><td><input type="text" name="subname"></td></tr>
<tr><td><input style="background-color:peachpuff;" type="submit"  value="Save"></td></tr>
</table>

</form>


</body>
</html>