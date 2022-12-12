<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1 style="color:purple;">Delete SubjectTeacher</h1>

<form action="DeleteSubjectTeacherController.jsp">
<table>

<tr><td><input type="hidden" name="id"  value=<%=request.getParameter("id") %>></td></tr>
<tr><td>Delete SubjectTeacher ID:</td><td><input type="text"  name="id"></td></tr>
<tr><td><input style="background-color: peachpuff;" type="Submit"  value="Delete"></td></tr>

</table>
</form>

</body>
</html>