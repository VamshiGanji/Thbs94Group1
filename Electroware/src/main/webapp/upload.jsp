<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
   
<!DOCTYPE html>  
<html>  
 <head>  
 <title>Image File Upload</title>  
 </head>  
 <body>  
<h1>File Upload Example - JavaTpoint</h1>  
  
<h3 style="color:red">${filesuccess}</h3>  
<form:form method="post" action="savefile" enctype="multipart/form-data">  
<p><label for="image">Choose Image</label></p>  
<p><input name="file" id="fileToUpload" type="file" /></p>  
<p><input type="submit" value="Upload"></p>  
<h2>Submitted File</h2>
<table>
    <tr>
        <td>OriginalFileName:</td>
        <td>${file.originalFilename}</td>
    </tr>
    <tr>
        <td>Type:</td>
        <td>${file.contentType}</td>
    </tr>
</table>
</form:form>  
</body>  
</html>  