<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> ADD products</title>
</head>
<body>
<form align="center" action="addproduct">

	<div>
	<h3>ADD PRODUCTS</h3>
	 <label for="name">product name :</label>
        <input type="text" name="name"><br><br>
        <label for="size">product size :</label> 
        <input type="text" name="size"><br><br>
        <label for="price" >price :</label>
        <input type="number" name="price"><br><br>     
        <button onclick="demo()">ADD</button>
        <button type="reset">RESET</button>
       <a href="AddDeleteUpadte.jsp">BACK</a>
<script>
function demo() {
alert("product added successfully");
}
</script>
</div>
</form>			
</body>
</html>