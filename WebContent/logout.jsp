<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="nav.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout Page</title>
</head>
<body>
<% 
response.sendRedirect("//localhost:8080/ProiectInternship/home.jsp");%>
</body>
</html>