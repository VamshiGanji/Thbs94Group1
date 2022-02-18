<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.logo
{
	align:left;
}
select{
	align:right;
}
</style>
</head>
<body>	
	<nav style="background-color:HoneyDew">
		<div class="logo">
			<a href="AdminAccount.jsp"><img src="./images/electroware.jpg" height="70" width="120" align="left"></a>	
		</div>
		<h1 align="center" style="color:teal;">Welcome ${i}</h1>
		<div class="menu" align="right">	
		<table>	
			<tr><th><a href="addProducts.jsp">Add Products</a></th>
				<th><form method="get" id="myCart" action="viewproducts.jsp">
					<a href="viewProducts">View Products</a>
				</form></th>
				<th><a href="login.html">logout</a></th></tr>
		</table>	
		</div>
		<div>
						
		</div>
	</nav>
	
	</body>
</html>	