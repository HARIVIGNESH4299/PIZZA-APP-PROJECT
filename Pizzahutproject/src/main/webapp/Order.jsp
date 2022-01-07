<%@page import="java.sql.ResultSet"%>
<%@page import="com.pizza.dao.UserDaoImpl"%>
<%@page import="com.pizza.model.User"%>
<%@page import="com.pizza.model.Product"%>
<%@page import="com.pizza.dao.ProductDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.util.List" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order</title>
</head>
<body onmouseover="check()">
<form action="order" align="center" >
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
	
		<label for="productid">product id :</label>
		<input type="text" name="productid" value="<%=rs1.getInt(1) %>" readonly><br><br>
		
		<label for="name">quantity:</label>
        <input type="text" name="qty" id="quantity" pattern="[1-9]{1}"><br><br> 
        
        <label for="price">price : </label>       
        <input type="text" name="price" id="price"  readonly> <br><br>
            
        <button onclick="demo()">buy</button>
        <button type="reset">RESET</button>   
        <a href="Showproducts.jsp">BACK</a>   
        </div>     
 </form>     
<script>
function check(){
	var count=document.getElementById("quantity").value;
	var totalPrice=document.getElementById("price");
	console.log(count)
	totalPrice.value=count * <%=rs1.getDouble(2) %>;
	console.log(totalPrice.value);	
}
</script>
  <%
	  }%>
</body>
</html>


