<%@page import="java.sql.ResultSet"%>
<%@page import="com.pizza.dao.UserDaoImpl"%>
<%@page import="com.pizza.model.User"%>
<%@page import="java.util.List"%>
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
<body align="center">
<form action="cart" method="post">
	<% 	
	User user=(User) session.getAttribute("user");		
	UserDaoImpl userdao=new UserDaoImpl();
	int id=userdao.finduserid(user);
	
	ProductDaoImpl productdao=new ProductDaoImpl();	
	List<Product> productList=productdao.showProduct();	

	String pname=request.getParameter("productname");
	String psize=request.getParameter("productsize");
	Product product=new Product(pname,psize,null);
	
	ResultSet rs1=productdao.findProductId(product);
	session.setAttribute("productid", product);			
   if(rs1.next()) {	   
    %>	
    
  	<div>
  	<h3>order your product</h3>
		<label for="name"> user id :</label>
		<input type="text" name="userid" value="<%=id%>" readonly><br><br>
		
		<label for="productid">product id :</label>
		<input type="text" name="productid" value="<%=rs1.getInt(1) %>" readonly><br><br>

        <label for="price">price : </label>       
        <input type="text" name="price" id="price"  readonly> <br><br>
            
        <button onclick="demo()">add to cart</button>
        <button type="reset">RESET</button>      
        </div>        
        <td><a href="Order.jsp?productname=<%=product.getProductname()%>&productsize=<%=product.getSize()%>&productprice=<%=product.getPrice()%>"><b>buy</b></a></td>        
 </form>
  <%
	}%>
</body>
</html> 
    
  