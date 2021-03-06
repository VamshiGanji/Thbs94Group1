<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Products</title>
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
		background-image:black;
		height:40;
		width:1300;
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
	background-image:linear-gradient(#fe7763, #fc3a5d);
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
button {

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

</style>
</head>
<body>
<div class="navig">
	<a href="userhomepage.jsp"><h2 style="font-weight:bold;color:black;">Welcome ${i}</h2></a>
	<a href="login.html"><h4 align="right">Log Out</h4></a>
</div>

<nav class="product-filter">
		<h1>All Products</h1>
		
		<div class="sort">
			<div class="collection-sort">
				<label>Filter by:</label>
				<select id="select" onChange="reDirect();">
		      <option value="allproducts">All Products</option>
		      <option value="ac">Air Conditioner</option>
		      <option value="refregirator">Refrigerator</option>
		      <option value="tv">Television</option>
		      <option value="washingmachine">Washing Machine</option>
		   	</select>
			</div>
		</div>
	</nav>
	
	<section class="products">
		
		<div class="product-card">
			<div class="product-image">
				<img src="./images/Mv1.jpg"width="400" height="300">
			</div>
			<div class="product-info">
				<h5>LG 28 L Charcoal Convection Microwave Oven (MJ2886BFUM, Black)</h5>
				<h6>Rs.17,290</h6>
				<br>
				<a href="payment.html"><button name="lg" >Buy now</button></a>
			</div>
		</div>	
		
		<div class="product-card">
			<div class="product-image">
				<img src="./images/Wm1.jpg"width="400" height="300">
			</div>
			<div class="product-info">
				<h5>IFB 7 kg 3D Wash Technology, CradleWash, Aqua Energie, In-built heater Fully Automatic Front Load with In-built Heater Black, White??(Neo Diva BX 7 kg)</h5>
				<h6>Rs.33,610</h6>
				<br>
				<a href="payment.html"><button>Buy now</button></a>
			</div>
		</div>
		
		<div class="product-card">
			<div class="product-image">
				<img src="./images/Tv4.jpg" width="400" height="300">
			</div>
			<div class="product-info">
				<h5>SAMSUNG Crystal 4K 138 cm (55 inch) Ultra HD (4K) LED Smart TV??(UA55AUE60AKLXL)</h5>
				<h6>Rs.49,999</h6>
				<br>
				<a href="payment.html"><button type=button>Buy now</button></a>
			</div>
		</div>
		
		
		<div class="product-card">
			<div class="product-image">
				<img src="./images/Wm2.jpg" width="400" height="300">
			</div>
			<div class="product-info">
				<h5>IFB 8 kg 5 Star Dynamic Water Jets, Anti Allergen, Water Softener, Fully Automatic Front Load with In-built Heater White??(Senator Plus VX)</h5>
				<h6>Rs.32,990</h6>
				<br>
				<a href="payment.html"><button type=button>Buy now</button></a>
			</div>
		</div>
		
		<div class="product-card">
			<div class="product-image">
				<img src="./images/Wm3.jpg" width="400" height="300">
			</div>
			<div class="product-info">
				<h5>Whirlpool 7.5 kg 5 Star, Ace Wash Station Semi Automatic Top Load Grey??(ACE 7.5 SUPREME GREY DAZZLE)</h5>
				<h6>Rs.10,690</h6>
				<br>
				<a href="payment.html"><button type=button>Buy now</button></a>
			</div>
		</div>
		
		<div class="product-card">
			<div class="product-image">
				<img src="./images/Wm4.jpg" width="400" height="300">
			</div>
			<div class="product-info">
				<h5>Whirlpool 7 kg 5 Star,Turbo Scrub Technology Semi Automatic Top Load Grey (SUPERB ATOM 70S GREY DAZZLE)</h5>
				<h6> Rs.10,190</h6>
				<br>
				<a href="payment.html"><button type=button>Buy now</button></a>
			</div>
		</div>	
		
		<div class="product-card">
			<div class="product-image">
				<img src="./images/fg1.jpg"width="400" height="300">
			</div>
			<div class="product-info">
				<h5>LG 190 L Direct Cool Single Door 4 Star Refrigerator with Base Drawer??(Blue Plumeria, GL-D201ABPY)</h5>
				<h6>Rs.15,990</h6>
				<br>
				<a href="payment.html"><button type=button>Buy now</button></a>
			</div>
		</div>
		
		<div class="product-card">
			<div class="product-image">
				<img src="./images/fg3.jpg" width="400" height="300">
			</div>
			<div class="product-info">
				<h5>SAMSUNG 198 L Direct Cool Single Door 5 Star Refrigerator with Base Drawer (Camellia Blue, RR21T2H2WCU/HL)</h5>
				<h6>Rs.35,490</h6>
				<br>
				<a href="payment.html"><button type=button>Buy now</button></a>
			</div>
		</div>
		
		<div class="product-card">
			<div class="product-image">
				<img src="./images/fg4.jpg" width="400" height="300">
			</div>
			<div class="product-info">
				<h5>SAMSUNG 253 L Frost Free Double Door 3 Star Refrigerator (Elegant Inox)</h5>
				<h6> Rs.22,600</h6>
				<br>
				<a href="payment.html"><button type=button>Buy now</button></a>
			</div>
		</div>	
		
		<div class="product-card">
			<div class="product-image">
				<img src="./images/Ac4.jpg">
			</div>
			<div class="product-info">
				<h5>Voltas 1.5 Ton 5 Star Split Inverter AC - White)</h5>
				<h6> Rs.26,700</h6>
				<br>
				<a href="payment.html"><button type=button>Buy now</button></a>
			</div>
		</div>
		
		<div class="product-card">
			<div class="product-image">
				<img src="./images/Mv2.jpg">
			</div>
			<div class="product-info">
				<h5>LG 28 L Convection Microwave Oven??(MC2886BRUM, Black)</h5>
				<h6>Rs.15,999</h6>
				<br>
				<a href="payment.html"><button type=button>Buy now</button></a>
			</div>
		</div>
		
		<div class="product-card">
			<div class="product-image">
				<img src="./images/Ac3.jpg">
			</div>
			<div class="product-info">
				<h5>Voltas 2 in 1 Convertible Cooling 1.2 Ton 3 Star <br/>Split Inverter AC - White??(153V ADP, Copper Condenser)</h5>
				<h6>Rs.28,999</h6>
				<br>
				<a href="payment.html"><button type=button>Buy now</button></a>
			</div>
		</div>
		
		<div class="product-card">
			<div class="product-image">
				<img src="./images/Mv3.jpg">
			</div>
			<div class="product-info">
				<h5>SAMSUNG 28 L Slim Fry Convection Microwave Oven??(CE1041DSB2, Black)</h5>
				<h6>Rs.10,990</h6>
				<br>
				<a href="payment.html"><button type=button>Buy now</button></a>
			</div>
		</div>
		
		<div class="product-card">
			<div class="product-image">
				<img src="./images/Mv4.jpg">
			</div>
			<div class="product-info">
				<h5> SAMSUNG 23 L Solo Microwave Oven(MS23J5133AG/TL, Black)</h5>
				<h6> Rs.6,390</h6>
				<br>
				<a href="payment.html"><button type=button>Buy now</button></a>
			</div>
		</div>	
		
		<div class="product-card">
			<div class="product-image">
				<img src="./images/Ac1.jpg">
			</div>
			<div class="product-info">
				<h5>Whirlpool 1.5 Ton 5 Star Split Inverter AC - Whit</h5>
				<h6>Rs.33,990</h6>
				<br>
				<a href="payment.html"><button type=button>Buy now</button></a>
			</div>
		</div>
		
		<div class="product-card">
			<div class="product-image">
				<img src="./images/Tv1.jpg">
			</div>
			<div class="product-info">
				<h5>OnePlus U1S 164 cm (65 inch) Ultra HD (4K) LED Smart Android TV(65UC1A00)</h5>
				<h6>Rs.64,999</h6>
				<br>
				<a href="payment.html"><button type=button>Buy now</button></a>
			</div>
		</div>
		
		<div class="product-card">
			<div class="product-image">
				<img src="./images/Ac2.jpg">
			</div>
			<div class="product-info">
				<h5>Whirlpool 4 in 1 Convertible Cooling 1.5 Ton 3 Star Split Inverter AC-
		White?(1.5T FLEXICHILL 3S COPR INV, Copper Condenser</h5>
				<h6>Rs.31,990</h6>
				<br>
				<a href="payment.html"><button type=button>Buy now</button></a>
			</div>
		</div>
		
		<div class="product-card">
			<div class="product-image">
				<img src="./images/Tv2.jpg">
			</div>
			<div class="product-info">
				<h5>OnePlus Y Series 108 cm (43 inch) Full HD LED Smart Android TV??(43FA0A00)</h5>
				<h6>Rs.25,999</h6>
				<br>
				<a href="payment.html"><button type=button>Buy now</button></a>
			</div>
		</div>	
	</section>
	
	<script>
	
	function reDirect()
	{
		switch(document.getElementById('select').value)
		{
			case "refregirator":
				window.location="Refrigerator.html";
				break;
			case "ac":
				window.location="Ac.html";
				break;
			case "tv":
				window.location="Tv.html";
				break;
			case "washingmachine":
				window.location="washingmachine.html";
				break;
			case "oven":
				window.location="Oven.html";
				break;	
		}
	}
	
	</script>
</body>
</html>