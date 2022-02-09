<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>CATEGORIES</title>
</head>
<body>
<style>
  img{
    justify-content: center;
  align-items: center;
    padding: 5px;
  border-radius: 20px;
  margin: 2.5rem;
   border: 5px solid;
}
ul {
    display: table; 
    margin: 0 auto;
    text-align: center;
    margin-top:0px;
}
.navbar {
  overflow: hidden;
  background-color:navy;
    font:serif;
    margin-top:0px;
    margin-bottom:0px;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  margin-top:0px;
}

.dropdown {
  float:left;
  overflow: hidden;
    position:static;
  display: flex;
 
}

.dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 5px 10px;
  background-color:navy;
  margin-top:0px;
  cursor:pointer;
  right:-5px;
  border:px solid white;
  position:relative;
  float:right;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: ;
}

.dropdown-content {
  display: none;
  position:absolute;
  background-color:white;
   }

.dropdown-content a {
  float: none;
  color:black;
  text-decoration:none;
  display:block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: lightblue;
}

.dropdown:hover .dropdown-content {
 background-color:white;
  display: block;
}

</style>
 
<div class="navbar">
  <div class="dropdown">

    <button class="dropbtn">
    MENU
        </button>
   <div class="dropdown-content dropdown-content-left">

      <a href="#">My Cart</a>
      <a href="my_profile.jsp">My Profile</a>
      <a href="#">My Orders</a>
      <a href='#'>Log out</a>
    </div>
  </div> 
</div>
<div><ul style="list-style-type:none;">
<li><a href=".html"><img src="./images/washing.jpg" height=200 width=200></a> 
<a href="products.html"><img src="./images/oven.jpg" height=200 width=200 alt="Microwave oven"></a>
<a href="products.html"><img src="./images/tv.jpg" height=200 width=200 ></a>
 </li>
<li><a href="counter.html"><img src="./images/refrigerator.jpg" height=200 width=200 ></a>
<a href="products.html"><img src="./images/ac1.jpg" height=200  width=200 ></a>
<a href="products.html"><img src="./images/all.jpg" height=200  width=200 ></a> </li>
</ul>
</div>
</body>
</html>