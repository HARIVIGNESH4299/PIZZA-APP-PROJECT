<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update product</title>
</head>
<body>
<form align="center" action="updateproduct">
		<h3>UPDATE THE PRODUCTS</h3>
		<label for="name">product id :</label>
        <input type="text" name="id" required><br><br>      
        <label for="name">product name :</label>
        <input type="text" name="name"><br><br>
        <label for="name">product size :</label>
        <input type="text" name="size"><br><br>
        <label for="name">product price :</label>
        <input type="text" name="price"><br><br>     
        <button onclick="demo()">UPDATE</button>
        <button type="reset">RESET</button>
        <a href="AddDeleteUpdate.jsp">BACK</a>
        <script>
function demo() {
alert("product updated successfully");
}
</script>
 </form>
</body>
</html>