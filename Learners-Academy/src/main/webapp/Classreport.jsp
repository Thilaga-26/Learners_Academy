<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.util.*" %>
    <%@ page import="com.dao.SubjectTeacherDAO" %>
    <%@ page import="com.pojo.SubjectTeacher" %>
    
     <%@ page import="com.dao. ClassDAO" %>
     <%@ page import="com.pojo.Classes" %>
     
     <%@ page import="com.dao. StudentDAO" %>
     <%@ page import="com.pojo.Student" %>
    
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


<%

int cid=Integer.parseInt(request.getParameter("cid"));


ClassDAO vf=new ClassDAO();
Classes cc=vf.getClasse(cid);
String name=cc.getClass_Name();

%>
 
<h1 style="color:navy;"><b>Class report of <%=name %></b></h1>

<% 
SubjectTeacherDAO Dao=new SubjectTeacherDAO();
List<SubjectTeacher> arr1=Dao.getAllData(cid);
%>

<table border="1" cellpadding="4" cellspacing="4" width="500px" style="border-collapse:collapse;">

<tr style="background-color: skyblue;"><th>ID</th><th>Class Name</th><th>Subject Name</th>
<th>Teacher Name</th></tr>s

<%
for(SubjectTeacher cc1:arr1){
%>

<tr><td><%=cc1.getId() %></td><td><%=cc1.getClassName() %></td>
<td><%=cc1.getSuBName() %></td><td><%=cc1.gettName() %></td></tr>
<%} %>

</table>

<br>

<h1 style="color:navy;">Student List</h1>

<table border="1" cellpadding="4" cellspacing="4" width="700px" style="border-collapse:collapse;">

<tr style="background-color:skyblue;"><th>Class ID</th><th>Class Name</th><th>First Name</th><th>Last Name</th>
<th>DOB</th><th>Address</th><th>Phone No</th></tr>

<%
StudentDAO dao1=new StudentDAO();
List<Student> list1=dao1.getAllData(cid);
for(Student s:list1){
%>

<tr><td><%=cid %></td>
<td><%=s.getClasses().getClass_Name() %></td>
<td><%=s.getF_name()%></td>
<td><%=s.getL_name() %></td>
<td><%=s.getDOB() %></td>
<td><%=s.getAddress() %></td>
<td><%=s.getPhone() %></td></tr>

<%}%>

</table>
</body>
</html>