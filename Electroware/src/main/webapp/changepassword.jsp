<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>

	<form action="changePassword" method="POST">
	${param.user}
	<input type="hidden" name="userName" value="${param.user}"><br>
	password:<input type="password" name="password"><br>
	confirm password:<input type="password" name="confirmPassword"><br>
	<input type="submit">

</form>
	</center>
</body>
</html>