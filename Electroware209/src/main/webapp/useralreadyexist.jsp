<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>

<style type="text/css">
html {
  height: 100%;
}

body {
  background-image: linear-gradient(#fe7763, #fc3a5d);
  background-repeat: no-repeat;
  background-attachment: fixed;
  height: 100%;
  margin: 0;
  display: flex;
  align-items: center;
  color: Black;
  font-family: "Montserrat", sans-serif;
  font-style: "Italic";
  font-size: 14px;
  justify-content: center;
}
nav
		{
				background-color:white;
				height:70;
				width:1300;
		}
#register-form-wrap {
	background-color: #fff;
	width: 40%;
	margin: 100px auto;
	text-align: center;
	padding:5px 0 0 0;
	border-radius: 8px;
	box-shadow: 0px 30px 50px 0px rgba(0, 0, 0, 0.2);
}
#register-form {
	padding:0 50px;
	}
	
table{
	text-align:center;
	font-style: oblique;
	font-style: italic;
	font-weight: bold;
}
input[type=text],input[type=password],input[type=number],input[type=email]{
	border-color:grey;
	border-style:double;
	width:200px;
	width: 140%;
  padding: 5px 10px;
  margin: 5px 0;
  box-sizing: border-box;
  background-color: #F0F8FF;
  color: #000000;
}

.form-field input:hover::placeholder {
  color: #d61e2d;
  
  background-color:pink;
}
.register-form {
  width: 500px;
  padding: 0% 0 0;
  margin: auto;
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

<div id="register-form-wrap">

  <h2>Register here..</h2>
    <form action="register" method="POST">
    <table class="center">
<tr>
<td>First name</td>
<td><input type="text" id="name" name="firstName" required="required"></td>
</tr>
<tr>
<td>Last name</td>
<td><input type="text" id="Lname" name="lastName" required="required"></td>
</tr>
<tr>
<td>Phone Number</td>
<td><input type="number" id="num" name="phone" required="required"></td>
</tr>
<tr>
<td>E-mail</td>
<td><input type="email" id="mail" name="userName" required="required"></td>	<h3 style="color:red;">${i}</h3>
</tr>
<tr>
<td>Password</td>
<td><input type="password" id="password" name="password" required="required"></td>
</tr>
<tr>
<td>Confirm Password</td>
<td><input type="password" id="re-password" name="confirmPassword" required="required"></td>
</tr>
 <tr>
      <td>Gender</td>
     <td><input type="radio" checked="checked" name="gender">
      <label class="male" name="male">Male
   <span class="checkmark"></span>
   </label></td>
   <td>
    <input type="radio" name="radio">
	<label class="female" name="female">Female
  <span class="checkmark"></span>
	</label></td>
	<td>
	<input type="radio" name="radio">
	<label class="others" name="others">Others
  <span class="checkmark"></span>
	</label></td>
	</tr>
	<tr><td>DOB</td><td><input type="date" name="dob"></td></tr>
	<tr>
	<td>Address Line1</td>
	<td><input type="text" id="address" name="address" required="required"></td></tr>
	<tr>
	<td>Address Line2</td>
	<td><input type="text" id="add" required="required"></td>
	</tr>
	<tr>
	<td>Address Line3</td>
	<td><input type="text" id="add3" required="required"></td>
	</tr>
	<tr>
	<td>Pincode</td>
	<td><input type="number" id="Pin" class="pincode" required="required"></td>
	</tr>
</table>
    <div style="text-align:center;">
      <input type="submit">
</form>

      <p class="message">Already a user? <a href="login.html">Login!!!</a></p>
  </div>
</body>
</html>