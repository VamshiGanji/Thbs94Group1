<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<nav>
		<div class="navig" style="background-color:white;">
		<a href="userhomepage.jsp"><h2 align="left" style="font-weight:bold;color:black;">Welcome ${i}</h2></a>
		<div class="menu" align="right">			
				<a href="addProducts.jsp">add product</a>
				<a href="viewProducts">view products</a>
				<a href="changePassword">change password</a>
				<a href="logout">logout</a>
		</div>
	</div>	
	</nav>
	<center>
	
		<div class="product-card">
			<div class="product-image">
				<img src="./images/Mv1.jpg"width="400" height="300">
			</div>
			<div class="product-info">
				<h5>LG 28 L Charcoal Convection Microwave Oven (MJ2886BFUM, Black)</h5>
				<h6>Rs.17,290</h6>
				<br>
			<table>	
			<tr><th><input type="hidden" name="" value=""></th></tr>
			<tr><th><a href="payment.html"><button name="lg" >Buy now</button></a></th>
			<th><form action="addToCart" method="POST"><input type="hidden" name="status" value="0">
			<input type="submit" value="Add To Cart"></a></th></tr>
			</table>
			</div>
		</div>	
	</center>
</body>
</html>