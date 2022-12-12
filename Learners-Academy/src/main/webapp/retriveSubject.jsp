<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dao.SubjectDAO" %>
    <%@ page import="com.pojo.Subject" %>
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

<h1 style="color:purple;">List of Subjects</h1>

<form action="SubjectInsert.jsp">
<input style="background-color: pink;" type="submit"  value="Add New Subjects">
</form>
<br>

<table border="1" cellpadding="4" cellspacing="4" width="400px" style="border-collapse:collapse;">

<tr style="background-color: skyblue;" >
<th>Subject ID</th>
<th>Subject Name</th>
<th>Actions</th>
</tr>

<%

SubjectDAO dao=new SubjectDAO();
List<Subject> list=dao.display();
for(Subject s:list){
%>

<tr><td><%=s.getSub_ID() %></td><td><%=s.getSubject_Name()%></td>
<td>
<a style="color:red;" href="updatesubject.jsp?subid=<%=s.getSub_ID() %>">Edit</a>
<a style="color:red;" href="deletesubject.jsp?subid=<%=s.getSub_ID()%>">Delete</a>
</td></tr>


<% } %>

</table>


</body>
</html>