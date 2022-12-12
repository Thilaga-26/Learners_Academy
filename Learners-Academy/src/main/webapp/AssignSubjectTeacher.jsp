<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.util.*" %>
    <%@ page import="com.pojo.Classes" %>
    <%@ page import="com.dao.ClassDAO" %>
    <%@ page import="com.pojo.Teacher" %>
    <%@ page import="com.dao.TeacherDAO" %>
    <%@ page import="com.pojo.Subject" %>
    <%@ page import="com.dao.SubjectDAO" %>
    <%@ page import="com.dao.SubjectTeacherDAO" %>
    <%@ page import="com.pojo.SubjectTeacher" %>
   
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

int sc=Integer.parseInt(request.getParameter("cid"));

ClassDAO vf=new ClassDAO();
Classes cc=vf.getClasse(sc);
String name=cc.getClass_Name();

%>

<h1 style="color:purple;">Assign Subjects and Teachers for Class <%=name %></h1>

<form action="AssignSubjectTeacherController.jsp">
<input type="hidden" name="cid" value="<%=sc %>">

Select Teacher:
<%
TeacherDAO tdao=new TeacherDAO();
List<Teacher> arr=tdao.display();
%>

<select name="teacher">

<%
for(Teacher c:arr){%>

<option value="<%=c.getT_ID()+","+c.getT_FirstName() %>"><%=c.getT_FirstName() %></option>

<%} %>

</select><br><br>

Select Subject :

<%
SubjectDAO dao=new SubjectDAO();
List<Subject> arrsub=dao.display();
%>

<select name="subject">

<%
for(Subject s:arrsub){%>

<option value="<%=s.getSub_ID()+","+s.getSubject_Name() %>"><%=s.getSubject_Name() %></option>

<%} %>

</select><br><br>

<input type="submit" value="Assign Now"><br><br>
</form><br>

<br><br>


<% 
SubjectTeacherDAO Dao=new SubjectTeacherDAO();
List<SubjectTeacher> arr1=Dao.getAllData(sc);

%>

<table border="1" cellpadding="4" cellspacing="4" width="500px" style="border-collapse:collapse;">

<tr style="background-color: skyblue;"><th>ID</th><th>Class Name</th>
<th>Subject Name</th><th>Teacher Name</th></tr>

<%
for(SubjectTeacher cc1:arr1){
%>

<tr><td><%=cc1.getId() %></td><td><%=cc1.getClassName() %></td><td><%=cc1.getSuBName() %></td>
<td><%=cc1.gettName() %></td></tr>

<%} %>


</table>
</body>
</html>