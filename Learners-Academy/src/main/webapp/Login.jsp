<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.PrintWriter" %>
    <%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String user=request.getParameter("user");
String pwd=request.getParameter("pwd");
PrintWriter pw=response.getWriter();

RequestDispatcher rd=request.getRequestDispatcher("Homepage.jsp");		//this will include the login,logout,profile everytime
rd.include(request, response);

if(user.equals(pwd)) {
	Cookie c=new Cookie("UserID",user);
	System.out.println("Cookie created "+c);
	response.addCookie(c);
	pw.print("Login Successful");

}
else {
	pw.print("Login Failed!!");
}
%>
<!-- #33475b   #ff0000-->
<br>
<br>

<table style= "background-color:black">
<tr><td>
<a style="color:pink;" href="retriveClass.jsp">Classes</a> &nbsp
<a style="color:pink;" href="retriveStudent.jsp">Students</a> &nbsp
<a style="color:pink;" href="retriveSubject.jsp">Subjects</a> &nbsp
<a style="color:pink;" href="retriveTeacher.jsp">Teachers</a> &nbsp
<a style="color:pink;" href="Logout.jsp">Logout</a> 
</td></tr>
</table>
</body>
</html>