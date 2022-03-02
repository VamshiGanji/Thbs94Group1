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
	<center>	
		<legend><h1>Customer Orders	</h1></legend>
	
	<table class="table table-border table-hover">
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