<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.torryharris.Electroware.model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav style="background-color:HoneyDew">
		<div class="logo">
			<a href="AdminAccount.jsp"><img src="./images/electroware.jpg" height="70" width="120" align="left"></a>	
		</div>
		<h1 align="center" style="color:teal;">Welcome Admin</h1>
		<div class="menu" align="right">			
		<table><tr><th><a href="addProducts.jsp">Add Products</a></th>
				<th><form method="get" id="myCart" action="viewproducts.jsp">
					<a href="viewProducts">View Products</a>
				</form></th>
				<th><a href="login.html">logout</a></th></table>
		</div>
		</div>
	</nav>
	
					<thead>
<center>	<table class="table table-border table-hover">
						<tr>
							<td>Product Name</td>
							<td>Product Type</td>
							<td>Price</td>
							<td>stock</td>
							<td>Description</td>
						</tr>
					</thead>
					
					<tbody>
					<c:forEach items="${prolist}" var="prolists"> 
						<tr>
							<td>${prolists.productName}"</td>
							<td>${prolists.productType}"</td>
							<td>${prolists.price}"</td>
							<td>${prolists.stock}"</td>
							<td>${prolists.description}</td>
							</tr>
				  </c:forEach> 
					</tbody>
				</table> </center>
</body>
</html>