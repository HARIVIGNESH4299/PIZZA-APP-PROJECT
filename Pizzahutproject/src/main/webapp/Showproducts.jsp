<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
        <%@page import=" com.pizza.dao.ProductDaoImpl"%>
        <%@page import="com.pizza.model.Product"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PRODUCTS</title>
</head>
<body> 
<form align="center" >
<h1>list of products</h1>
	<table align="center" >
		<tr>
		<th>Product id</th>
		<th>product name</th>
		<th>opropduct size</th>
		<th>product price</th>
		<th>order</th>
		</tr>
		<%
		ProductDaoImpl dao=new ProductDaoImpl();
		List<Product> list=dao.showProduct();
		for(int i=0;i<list.size();i++){
			Product product=list.get(i);
		int productid=dao.findProductId(product);
		
		HttpSession session4=request.getSession();
		session4.setAttribute("product_id", productid);	
		System.out.println(productid);
		%>
		<tr>
		<td><%=productid%></td>		
		<td><%= product.getProductname()%></td>
		<td><%=product.getSize() %></td>
		<td><%=product.getPrice() %></td>
		<td><a href="Order.jsp?productId=<%=productid %>">order</a></td>	
		<% } %>
		
		</tr>	
		</table>
</body>
</html>