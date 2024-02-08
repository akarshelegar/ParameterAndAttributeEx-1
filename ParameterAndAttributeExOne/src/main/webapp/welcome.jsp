<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>
<h1>Welcome User</h1>
<form action="display" method="post">
<label for="tbUsername">UserName:</label>
<input type="text" id="tbUsername" name="tbUsername">
<br>
<label for="tbEmail">Email:</label>
<input type="email" id="tbEmail" name="tbEmail">
<br>
<button>Submit</button>

</form>

</body>
</html>