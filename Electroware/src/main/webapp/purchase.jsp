<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:declaration>
	String proInfo="";
	String price="";
</jsp:declaration>
<jsp:scriptlet>
	proInfo=request.getParameter("proinfo");
	price=request.getParameter("price");
</jsp:scriptlet>

<jsp:expression>
	proInfo 
</jsp:expression>
<jsp:expression>
	price 
</jsp:expression>

</body>
</html>