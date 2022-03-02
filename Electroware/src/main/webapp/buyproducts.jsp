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

<!-- 
<style>
html,body,div,span,applet,object,iframe,
h1,h2,h3,h4,h5,h6,p,blockquote,pre,
a,abbr,acronym,address,big,cite,code,
del,dfn,em,img,ins,kbd,q,s,samp,
small,strike,strong,sub,sup,tt,var,
b,u,i,center,
dl,dt,dd,ol,ul,li,
fieldset,form,label,legend,
table,caption,tbody,tfoot,thead,tr,th,td,
article,aside,canvas,details,figcaption,figure,
footer,header,hgroup,menu,nav,section,summary,
time,mark,audio,video{
    margin:0;
    padding:0;
    border:0;
    outline:0;
    font-size:100%;
    font:inherit;
    vertical-align:baseline;
}
/* HTML5 display-role reset for older browsers */
article,aside,details,figcaption,figure,
footer,header,hgroup,menu,.nav,section{
    display:block;
}.navig
	{
		background-color:white;
		height:60;
		width:100;
	}
body{
    line-height:1;
	
}
ol,ul{
    list-style:none;
}
blockquote,q{
    quotes:none;
}
blockquote:before,blockquote:after,
q:before,q:after{
    content:â€™â€™;
    content:none;
}
/* remember to define visible focus styles! 
:focus{
    outline:?????;
} */

/* remember to highlight inserts somehow! */
ins{
    text-decoration:none;
}
del{
    text-decoration:line-through;
}

table{
    border-collapse:collapse;
    border-spacing:0;
}

/*------------------------------------*\
    $MAIN
\*------------------------------------*/

@import url(https://fonts.googleapis.com/css?family=Roboto:400,300,500);

body {
	margin: 0 auto;
	width: 90%;
	max-width: 1240px;
	font-family: 'Roboto', sans-serif;
	background-color:HoneyDew;
}

/* Typography */

h1 {
	font-size: 28px;
	font-weight: 300;
	flex: 1;
}

h5 {
	font-weight: 500;
	line-height: 1.7em;
}

h6 {
	color: #666;
	font-size: 14px;
}

/* Product Layout */

.product-filter {
	display: flex;
	padding: 30px 0;
}

.sort {
	display: flex;
	align-self: flex-end;
}

.collection-sort {
 display: flex;
	flex-direction: column;
}

.collection-sort:first-child {
	padding-right: 20px;
}

label {
	color: #666;
	font-size: 10px;
	font-weight: 500;
	line-height: 2em;
	text-transform: uppercase;
}

.products {
	display: flex;
	flex-wrap: wrap;
}

.product-card {
	display: flex;
	flex-direction: column;
	
	padding: 2%;
	flex: 1 16%;
	
	background-color: #FFF;
	box-shadow: 0px 0px 1px 0px rgba(0,0,0,0.25);
}

.product-image img {
	width: 100%;
}

.product-info {
	margin-top: auto;
	padding-top: 20px;
	text-align: center;
}

@media ( max-width: 920px ) {
	
	.product-card {
		flex: 1 21%;
	}
	
	.products .product-card:first-child, 
	.products .product-card:nth-child(2) {
		flex: 2 46%;
	}
	
}

@media ( max-width: 600px ) {
	
	.product-card {
		flex: 1 46%;
	}
	
}

@media ( max-width: 480px ) {
	
	h1 {
		margin-bottom: 20px;
	}
	
	.product-filter {
		flex-direction: column;
	}
	
	.sort {
		align-self: flex-start;
	}
	
}
.cart{
  text-align:center;
  background: #3054E2;
  display: block;
  color: white;
  border: none;
  border-radius: 40px;
  padding: 10px 0;
  text-transform: uppercase;
  font-weight: bold;
  margin-bottom: 30px;
  outline: none;
  width: 20%;
 margin-left: 40%;
 margin-right: 30%

}
button {

  text-align:center;
  background: #3054E2;
  display: block;
  color: white;
  border: none;
  border-radius: 10px;
  padding: 10px 0;
  text-transform: uppercase;
  font-weight: bold;
  margin-bottom: 20px;
  outline: none;
  width: 10%;
 margin-left: 10%;
 margin-right: 10%
}

</style>
	 -->	
	 
</head>
<body>
	
<div class="topnav">
<nav style="background-color:HoneyDew">
	<form method="get" id="home" action="buyproducts.jsp">
		<a href="buyproducts"><h2 align="left" style="font-weight:bold;color:black;">Welcome ${i}</h2></a>
	</form>
	<div class="menu" align="right">			
		<table><tr>
			<th><form method="get" id="myCart" action="userproducts.jsp">
				<a href="userproducts" class="active">View Products</a>
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
</nav>
</div>
	
	
	<h4 style="color:red">${e}</h4>
					
	<div class="product-card">	
		<table class="table table-border table-hover" align="center">
			<thead>
				<c:forEach items="${prolist}" var="prolists"> 	
					<div class="product-info">
						<tr><th>${prolists.productName}</th></tr>
						<tr><th>${prolists.productType}</th></tr>
						<tr><th>${prolists.price}</th></tr>
						<tr><th>${prolists.stock}</th></tr>
						<tr><th>${prolists.description}</th></tr>
				  		<tr><th><form action="payment.jsp" method="post"><input type="hidden" name="proName" value="${prolists.productName}">
						<input type="hidden" name="proType" value="${prolists.productType}">
						<input type="hidden" name="price" value="${prolists.price}">
						<input type="hidden" name="stock" value="${prolists.stock}">
						<input type="hidden" name="desc" value="${prolists.description}">
				  		<input type="submit" name="cart" formaction="addToCart" value="addToCart">
				  		<input type="submit" value="BuyNow"></form></th></tr>
					</div>
				  </c:forEach> 
			</thead>
		</table>	
	</div>
</body>
</html>