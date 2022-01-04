<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DELETE PRODUCT</title>
</head>
<body>
<form align="center" action="deleteproduct">
	<div>
	<h3>ADD PRODUCTS</h3>
	 <label for="name">product id :</label>
        <input type="text" name="id"><br><br>            
        <button onclick="demo()">DELETE</button>
        <button type="reset">RESET</button>
        <a href="AddDeleteUpadte.jsp">BACK</a>
<script>
function demo() {
alert("product deleted successfully");
}
</script>
</div>
</form>	
</body>
</html>