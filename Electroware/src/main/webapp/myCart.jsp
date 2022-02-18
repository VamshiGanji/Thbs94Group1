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
<style>
	.navig
	{
		background-color:HoneyDew;
		height:50;
		width:40;
	
	}

</style>
</head>
<body><nav style="background-color:HoneyDew">
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
<center>	<h4>${str}</h4></center>
	<center><table class="table table-border table-hover">
					<thead>
					<c:forEach items="${molist}" var="molists"> 
						
						<div class="product-info">
							<tr><th>${molists.productName}</th></tr>
							<tr><th>${molists.productType}</th></tr>
							<tr><th>${molists.price}</th></tr>
							<tr><th>${molists.stock}</th></tr>
							<tr><th>${molists.description}</th></tr>
							<tr><th><form action="payment.jsp" method="post">
							<input type="hidden" name="proName" value="${molists.productName}">
							<input type="hidden" name="proType" value="${molists.productType}">
							<input type="hidden" name="price" value="${molists.price}">
							<input type="hidden" name="stock" value="${molists.stock}">
							<input type="hidden" name="desc" value="${molists.description}">
				  			<input type="submit" name="remove" formaction="removeFromCart" value="Remove"></th><th><button>Buy now</button></form></th></tr>	
						</div>
					</c:forEach>
					</thead>
				</table></center>
</body>
</html>