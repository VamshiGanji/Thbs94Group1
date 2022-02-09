<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<img src="">
	<form action="purchase" method="POST"></form>
	<select name="type">
		<option value="credit">credit card</option>
		<option value="debit">debit card</option>
	</select> 
	
	Card No:<input type="text" name="cardNo">
	Expiry:<input type="date" name="date">
	<input type="submit" value="paynow">
 	</form>

</center>
</body>
</html>