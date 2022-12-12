<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.pojo.*" %>
      <%@ page import="com.dao.*" %>
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

<h1 style="color:purple;">Edit Student Details</h1>

<form action="UpdateStudentController.jsp">

<table>
<tr><td>Edit First_Name:</td><td><input type="text" name="stufname"></td></tr>
<tr><td>Edit Last_Name:</td><td><input type="text" name="stulname"></td></tr>
<tr><td>Edit Date Of Birth:</td><td><input type="text" name="studob"></td></tr>
<tr><td>Edit Address:</td><td><input type="text" name="stuadd"></td></tr>
<tr><td>Edit Phone:</td><td><input type="number" name="stuphone"></td></tr>

<tr><td>

Student Class:

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

<tr><td><input type="hidden" name="stuid" value=<%=request.getParameter("stuid") %>></td></tr>

<tr><td><input style="background-color: peachpuff;" type="submit"  value="Edit"></td></tr>

</table>
</form>

</body>
</html>