<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dao.StudentDAO" %>
    <%@ page import="com.pojo.Student" %>
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

<h1 style="color:purple;">List of Students</h1>

<form action="StudentInsert.jsp">
<input style="background-color: pink;" type="submit"  value="Add New Students">
</form>
<br>

<table border="1" cellpadding="4" cellspacing="4" width="800px" style="border-collapse:collapse;">

<tr style="background-color: skyblue;" >
<th>Student ID</th>
<th>First Name</th>
<th>Last Name</th>
<th>DOB</th>
<th>Address</th>
<th>Phone No</th>
<th>Class_Name</th>
<th>Actions</th>
</tr>

<%

StudentDAO dao=new StudentDAO();
List<Student> list= dao.display();
for(Student st:list){
	
%>


<tr><td><%=st.getID() %></td>
<td><%=st.getF_name()%></td>
<td><%=st.getL_name()%></td>
<td><%=st.getDOB()%></td>
<td><%=st.getAddress()%></td>
<td><%=st.getPhone()%></td>
<td><%=st.getClasses().getClass_Name()%></td>
<td>
<a style="color:red;" href="updatestudent.jsp?stuid=<%=st.getID()%>"> Edit </a>
<a style="color:red;" href="deletestudent.jsp?stuid=<%=st.getID()%>"> Delete </a>
</td></tr>

<% } %>

</table>
</body>
</html>