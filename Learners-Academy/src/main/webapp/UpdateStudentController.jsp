<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.pojo.Student" %>
    <%@ page import="com.pojo.Classes" %>
    <%@ page import="com.dao.StudentDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Student s= new Student();

StudentDAO dao=new StudentDAO();

s.setID(Integer.parseInt(request.getParameter("stuid")));
s.setF_name(request.getParameter("stufname"));
s.setL_name(request.getParameter("stulname"));
s.setDOB(request.getParameter("studob"));
s.setAddress(request.getParameter("stuadd"));
s.setPhone(Long.parseLong(request.getParameter("stuphone")));


String ss=request.getParameter("classname");
String [] a=ss.split(",");

Classes c= new Classes();
c.setClass_ID(Integer.parseInt(a[0]));
c.setClass_Name(a[1]);
s.setClasses(c);

String s1=(String)dao.update(s);

if(s1.equals("updated")){
	response.sendRedirect("Success.jsp");
}
else{
	response.sendRedirect("Fail.jsp");
}

%>

</body>
</html>