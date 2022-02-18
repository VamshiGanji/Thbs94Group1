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

	<center><frameset align="center ">
	<h3 style="color:GREEN">${str}</h3>
		<legend><h1>Add Products</h1></legend>
		<form action="addProducts" method="POST">
		<table>
			<tr><th>Product Name:</th><td><input type="text" name="productName"></td></tr>
			<tr><th>Product Type:</th><td><input type="text" name="productType"></td></tr>
			<tr><th>Price:</th><td><input type="text" name="price"></td></tr>
		<!-- 	<tr><th>Image:</th><td><input type="file" name="file"></td></tr> -->
			<tr><th>Stock:</th><td><input type="text" name="stock"></td></tr>
			<tr><th>Description:</th><td><input type="text" name="description"></td></tr>
			<tr
			><th><input type="submit" value="Add Product"></th></tr>		
		</table>
		</form>
	</frameset></center>
</body>
</html>