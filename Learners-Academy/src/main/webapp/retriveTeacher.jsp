<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dao.TeacherDAO" %>
    <%@ page import="com.pojo.Teacher" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table style="background-color:black; ">
<tr><td>
<a style="color:white;" href="retriveClass.jsp">Classes</a> &nbsp
<a style="color:white;" href="retriveStudent.jsp">Students</a> &nbsp
<a style="color:white;" href="retriveSubject.jsp">Subjects</a> &nbsp
<a style="color:white;" href="retriveTeacher.jsp">Teachers</a> &nbsp
<a style="color:white;" href="Logout.jsp">Logout</a> 
</td></tr>
</table>

<h1 style="color:purple;">List of Teachers</h1>

<form action="TeacherInsert.jsp">
<input style="background-color: pink;" type="submit"  value="Add New Teachers">
</form>
<br>

<table border="1" cellpadding="5" cellspacing="5" width="800px" style="border-collapse:collapse;">

<tr style="background-color: skyblue;" >
<th>Teacher ID</th>
<th>First_Name</th>
<th>Last_Name</th>
<th>DOB</th>
<th>Address</th>
<th>Phone No</th>
<th>Designation</th>
<th>Actions</th>
</tr>

<%
TeacherDAO dao=new TeacherDAO();
List<Teacher> list=dao.display();
for(Teacher t:list){
%>

<tr><td><%=t.getT_ID() %></td>
<td><%=t.getT_FirstName()%></td>
<td><%=t.getT_LastName()%></td>
<td><%=t.getT_DOB()%></td>
<td><%=t.getT_Address()%></td>
<td><%=t.getT_Phone()%></td>
<td><%=t.getDesignation()%></td>
<td>
<a style="color:red;" href="updateteacher.jsp?tid=<%=t.getT_ID()%>"> Edit </a>
<a style="color:red;" href="deleteteacher.jsp?tid=<%=t.getT_ID()%>"> Delete </a>
</td></tr>

<% } %>

</table>

</body>
</html>