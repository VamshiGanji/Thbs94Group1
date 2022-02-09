<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
html {
  height: 100%;
}
.navig
	{
		background-image:black;
		height:40;
		width:1300;
	}
body 
{
  background-image: linear-gradient(#fe7763, #fc3a5d);
  height: 100%;
  margin: 0;
  align-items: center;
  color: Black;
  font-family: "Montserrat", sans-serif;
  font-style: "Italic";
  font-size: 14px;
  justify-content: center;
}
#login-form-wrap {
	background-color: #fff;
	width: 35%;
	margin: 30px auto;
	text-align: center;
	padding:20px 0 0 0;
	border-radius: 4px;
	box-shadow: 0px 30px 50px 0px rgba(0, 0, 0, 0.2);
}
#login-form {
	padding:0 60px;
}
div{
	text-align:center;
	font-style: oblique;
	font-style: italic;
	font-weight: bold;
	}
input[type=text],input[type=password]{
	border-color:grey;
	border-style:double;
	width:150px;
	width: 50%;
  padding: 5px 10px;
  margin: 5px 0;
  box-sizing: border-box;
  background-color: #F0F8FF;
  color: #000000;
}
button {

  text-align:center;
  background: #3054E2;
  display: block;
  color: white;
  border: none;
  border-radius: 40px;
  padding: 12px 0;
  text-transform: uppercase;
  font-weight: bold;
  margin-bottom: 32px;
  outline: none;
  width: 20%;
 margin-left: 40%;
 margin-right: 30%
}
login {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
  }
  .container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}

</style>

</head>

<body>
<div class="navig">
	<a href="home.html" align="left"><img src="./images/electroware.jpg" height="50" width="100"></a>
	
</div>
<div id="login-form-wrap">
	<h3 style="color:red;">${i}</h3>
  <h2>Login</h2>
    <form action="login" class="login" method="POST">
    <div>User name  
      <input type="text" placeholder="enter username" id="name" name="userName" required="required"/>
      <br>
      <br>
      </div>
      <div>Password  
      <input type="password" placeholder="enter password" id="pwd" name="password" required="required"/>
      <br>
      <br>
      </div>
      <div style="text-align:center;">
     <input type="submit">
      <p class="message">Not registered? <a href="UserRegistration.html">Create an account</a></p>
      </div>
    </form>
    
  </div>

 </div><!--create-account-wrap-->
</div><!--login-form-wrap-->
</body>
</html>