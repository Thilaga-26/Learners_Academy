<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.PrintWriter" %>
    <%@ page import="javax.servlet.http.HttpSession" %>
    <%@ page import="javax.servlet.RequestDispatcher" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

PrintWriter pw=response.getWriter();
response.setContentType("text/html");
Cookie c=new Cookie("UserID","");
c.setMaxAge(0);
response.addCookie(c);
pw.println("Logged Out");
pw.println("Want to Login Again?");
RequestDispatcher rd=request.getRequestDispatcher("Admin.jsp");
rd.include(request, response);



%>

</body>
</html>