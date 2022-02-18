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
			<center>	<table class="table table-border table-hover">
					<thead><tr><th>Product Name</th>
							<th>Price</th>
							<th>Payment Type</th>
							<th>Card Number</th>
							<th>Phone</th>
							<th>Expiry Date</th>
							<th>Zipcode</th></tr>
					</thead>
					<tbody>
					<c:forEach items="${molist}" var="molists"> 
						
						<div class="product-info">
							<tr><th>${molists.proName}</th>
							<th>${molists.price}</th>
							<th>${molists.cardName}</th>
							<th>${molists.cardNo}</th>
							<th>${molists.phone}</th>
							<th>${molists.expiryDate}</th>
							<th>${molists.zipcode}</th></tr>
						</div>
				  </c:forEach> 
					</tbody>
				</table>	
				</center>
</body>
</html>