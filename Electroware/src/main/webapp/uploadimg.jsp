<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form method="POST" action="/uploadMultiFile" enctype="multipart/form-data">
    <table>
        <tr>
            <td>Select a file to upload</td>
            <td><input type="file" name="files" /></td>
        </tr>
        <tr>\
        
        
            <td>Select a file to upload</td>
            <td><input type="file" name="files" /></td>
        </tr>
        <tr>
            <td>Select a file to upload</td>
            <td><input type="file" name="files" /></td>
        </tr>
        <tr>
            <td><input type="submit" value="Submit" /></td>
        </tr>
    </table>
</form:form>



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

</body>
</html>