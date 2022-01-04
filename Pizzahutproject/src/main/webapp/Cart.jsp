<%@page import="com.pizza.model.Product"%>
<%@page import="com.pizza.dao.ProductDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
</head>
<body>
<form align="center">
	<% Product product=new Product();
	   ProductDaoImpl dao=new ProductDaoImpl();
	   session.getAttribute("user_id");
	   dao.findProductId(product);	
    %>
	<h3>ADD CART</h3>
		<%
	int userid=(int)session.getAttribute("user_id");%>
		<label for="name">product id:</label>
		<input type="text" name="id"><br><br>
		<label for="name">quantity:</label>
        <input type="text" name="qty"><br><br>            
        <button onclick="demo()">add to cart</button>
        <button type="reset">RESET</button>       
<script>
function demo() {
alert("product added the cart successfully");
}
</script>
</body>
</html>