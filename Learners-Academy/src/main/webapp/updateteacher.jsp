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

<h1 style="color:purple;">Edit Teacher Details</h1>

<form action="UpdateTeacherController.jsp">

<table>

<tr><td>Edit First_Name:</td><td><input type="text" name="tfname"></td></tr>
<tr><td>Edit Last_Name:</td><td><input type="text" name="tlname"></td></tr>
<tr><td>Edit Date Of Birth:</td><td><input type="text" name="tdob"></td></tr>
<tr><td>Edit Address:</td><td><input type="text" name="tadd"></td></tr>
<tr><td>Edit Phone:</td><td><input type="number" name="tphone"></td></tr>
<tr><td>Edit Designation:</td><td><input type="text" name="tdesig"></td></tr>

<tr><td><input type="hidden" name="tid" value=<%=request.getParameter("tid") %>></td></tr>
<tr><td><input style="background-color: peachpuff;" type="submit"  value="Edit"></td></tr>
</table>

</form>


</body>
</html>