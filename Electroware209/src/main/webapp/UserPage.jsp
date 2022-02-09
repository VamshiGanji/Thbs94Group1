<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
.button {
  padding: 5px 6px;
  font-size: 12px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: blue;
  background-color:pink;
  border: none;
  border-radius: 5px;
  box-shadow: 0 2px #999;
}
.button:hover {background-color: #3e8e41}
body{
    margin-top:20px;
    text-align: left;
    background-image: linear-gradient(#fe7763, #fc3a5d);
}

</style>
<title>My Profile</title>
</head>
<body>
<center>
<h2>My Profile</h2>
</center>

<div class="container">
 
                      <div class="row">
                      <h3 >Full Name</h3>
                      </div>
                   
                      <div id="edit" contenteditable="true">
                      Ananya
                      </div>
                      </div>
                      <hr>
                      <div class="row">
                  
                      <h3> Email</h3>
                      </div>
                      <div id="edit" contenteditable="true">
                      
                      </div>
                      </div>
                      <hr>
                      <div class="row">
                   
                      <h3 >Mobile number</h3>
                      </div>
                      <div id="edit" contenteditable="true">
                     
                      </div>
                      </div>
                      <hr>
                      <div class="row">
               
                      <h3>Address</h3>
                      </div>
                      <div id="edit" contenteditable="true">
                      Bangalore
                      </div>
                      </div>
                      <hr>
                      <div class="row">
                  
              
                    <button class="button" onclick="saveEdits()">Save changes </button>
                    <div id="update"></div>
                    <script>
                    function saveEdits() {

//get the editable element
var editElem = document.getElementById("edit");

//get the edited element content
var userVersion = editElem.innerHTML;

//save the content to local storage
localStorage.userEdits = userVersion;

//write a confirmation to the user
document.getElementById("update").innerHTML="Edits saved!";
                    }
              
                    
</script>


                     
</body>
</html>	