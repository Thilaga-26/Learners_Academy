<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.pojo.Student" %>
    <%@ page import="com.dao.StudentDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

StudentDAO dao=new StudentDAO();
Student s1=new Student();
s1.setID(Integer.parseInt(request.getParameter("stuid")));

String s=dao.delete(s1);

if(s.equals("deleted")){
	response.sendRedirect("Success.jsp");
}
else{
	response.sendRedirect("Fail.jsp");
}


%>

</body>
</html>