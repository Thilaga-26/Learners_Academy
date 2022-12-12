<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.dao.ClassDAO" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.pojo.Classes" %>
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

<h1 style="color:purple;">List of Classes</h1>


<form action="ClassInsert.jsp">
<input style="background-color: pink;" type="submit"  value="Add New Classes">
</form>
<br>

<table border="1" cellpadding="4" cellspacing="4" width="500px" style="border-collapse:collapse;">

<tr style="background-color: skyblue;"><th>Class ID</th><th>Class Name</th><th>Actions</th></tr>

<%
ClassDAO dao=new ClassDAO();
List<Classes> list=dao.display();
for(Classes c:list){%>

	<tr><td><%=c.getClass_ID() %></td><td><%=c.getClass_Name() %></td>
<td>
<a style="color:red;" href="upadte.jsp?cid=<%=c.getClass_ID()%>">Edit</a>
<a style="color:red;" href="delete.jsp?cid=<%=c.getClass_ID()%>">Delete</a>
<a style="color:red;" href="AssignSubjectTeacher.jsp?cid=<%=c.getClass_ID()%>">Subjects and Teachers</a>
<a style="color:red;" href="Classreport.jsp?cid=<%=c.getClass_ID()%>">Class Report</a>
</td></tr>


<% } %>

</table>
</body>
</html>