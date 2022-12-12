<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dao.SubjectDAO" %>
    <%@ page import="com.pojo.Subject" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

Subject s= new Subject();
SubjectDAO dao=new SubjectDAO();

s.setSub_ID(Integer.parseInt(request.getParameter("subid")));
s.setSubject_Name(request.getParameter("subname"));

int row=dao.insert(s);

if(row>0){
	response.sendRedirect("Success.jsp");
}
else{
	response.sendRedirect("Fail.jsp");
}
%>


</body>
</html>