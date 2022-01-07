<%@page import="java.sql.ResultSet"%>
<%@page import="com.pizza.dao.ProductDaoImpl"%>
<%@page import="java.util.List"%>
<%@page import="com.pizza.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form align="center">

		<table>
			<tr>	
		<th>product id</th>	
		<th>product name</th>
		<th>product size</th>
		<th>product price</th>		
		</tr>
		    
		<%
		ProductDaoImpl dao=new ProductDaoImpl();
		List<Product> list=dao.showProduct();
		for(int i=0;i<list.size();i++){
			Product product=list.get(i);
		ResultSet rs=dao.findProductId(product);
		
		if(rs.next()){%>
		
		<tr>
		<td><%= rs.getInt(1)%></td>		
		<td><%= product.getProductname()%></td>
		<td><%=product.getSize()%></td>
		<td><%=product.getPrice() %></td>		
		
		<%// session.setAttribute("productid",product.getProductId()); 
	    	 session.setAttribute("productprice",product.getPrice());%>		
		
		<% }} %>	
		</tr>	
		</table>
			<a href="Addproduct.jsp"><h3>ADD PRODUCTS</h3></a>
			<a href="Deleteproduct.jsp"><h3>DELECT PRODUCT</h3></a>
			<a href="Updateproduct.jsp"><h3>UPDATE PRODUCT</h3></a>
</form>
</body>
</html>