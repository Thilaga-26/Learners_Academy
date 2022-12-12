<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dao.ClassDAO" %>
    <%@ page import="com.pojo.Classes" %>
    <%@ page import="java.util.*" %>
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

<h1 style="color:purple;">Add Students</h1>

<form action="StudentController.jsp">
<table>

<tr><td>Student ID:</td><td><input type="number" name="stuid"></td></tr>
<tr><td>First_Name:</td><td><input type="text" name="stufname"></td></tr>
<tr><td>Last_Name:</td><td><input type="text" name="stulname"></td></tr>
<tr><td>Date Of Birth:</td><td><input type="text" name="studob"></td></tr>
<tr><td>Address:</td><td><input type="text" name="stuadd"></td></tr>
<tr><td>Phone:</td><td><input type="number" name="stuphone"></td></tr>

<tr><td>Student Class:

<%
ClassDAO dao1= new ClassDAO();
List<Classes> li=dao1.display();
%>

<select name="classname">

<%
for(Classes c:li){
%>

<option value="<%=c.getClass_ID() +","+c.getClass_Name() %>"><%=c.getClass_Name() %></option>

<% } %>

</select>

</td></tr>

<tr><td><input style="background-color:peachpuff;" type="submit"  value="Save"></td></tr>

</table>
</form>

</body>
</html>