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
		<form method="get" id="home" action="buyproducts.jsp">
			<a href="buyproducts"><h2 align="left" style="font-weight:bold;color:black;">Welcome ${i}</h2></a>
		</form>
	<div class="menu" align="right">			
			<table><tr>
				
				<th><form method="get" id="myCart" action="userproducts.jsp">
					<a href="userproducts">View Products</a>
				</form></th>
				
				<th><form method="get" id="myOrders" action="myOrders.jsp">
					<a href="myOrders">My Orders</a>
				</form></th>
				<th><form method="get" id="myCart" action="myCart.jsp">
					<a href="myCart">My Cart</a>
				</form></th>
				<th><a href="login.html">logout</a></th></tr>
			</table>
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