<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.techpalle.model.Developer" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Page</title>
</head>
<body>
<form action="display" method="post">

<h1>Welcome to Display Page</h1>
<h2>UserName: <%= request.getParameter("tbUsername") %></h2>
<h2>Email:<%=request.getParameter("tbEmail")  %>></h2>

<h1>Developer:</h1>

<% Developer djsp = (Developer)request.getAttribute("dev"); %>

<h2>Name:<%= djsp.getName() %></h2>
<h2>Email:<%= djsp.getEmail() %></h2>
<h2>Location:<%= djsp.getLocation() %></h2>

<h1>Thank You</h1>
</form>

</body>
</html>