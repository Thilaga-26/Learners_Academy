<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dao.SubjectTeacherDAO" %>
    <%@ page import="com.pojo.Subject" %>
    <%@ page import="com.pojo.Teacher" %>
    <%@ page import="com.pojo.SubjectTeacher" %>
    
    <%@ page import="com.dao.ClassDAO" %>
    <%@ page import="com.pojo.Classes" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

SubjectTeacher rp=new SubjectTeacher();

String arr[]=request.getParameter("teacher").split(",");

rp.setCid(Integer.parseInt(request.getParameter("cid")));
ClassDAO vf=new ClassDAO();
Classes cc=vf.getClasse(Integer.parseInt(request.getParameter("cid")));
String name=cc.getClass_Name();
rp.setClassName(name);

String arr1[]=request.getParameter("teacher").split(",");
rp.settName(arr1[1]);
rp.setSubid(0);

String arr2[]=request.getParameter("subject").split(",");
rp.setSuBName(arr2[1]);
rp.setTid(0);

SubjectTeacherDAO assignDao=new SubjectTeacherDAO();
String s=assignDao.insert(rp);

if(s.equalsIgnoreCase("data inserted")) {
	response.sendRedirect("Success.jsp");
}
else {
	response.sendRedirect("Fail.jsp");
}

%>

</body>
</html>