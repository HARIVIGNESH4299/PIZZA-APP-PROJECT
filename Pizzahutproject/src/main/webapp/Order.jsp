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
<body align="center" >
<form action="order">
		<%  int proId=Integer.parseInt(request.getParameter("productId"));
			ProductDaoImpl productdao=new ProductDaoImpl();
			List<Product> productList=productdao.showProduct();		
			int id=(int) session.getAttribute("user_id");
			//int productid=(int) session.getAttribute("product_id");
			for (int i = 0; i < productList.size(); i++) {
		%>
			<label for="UserId"><strong>UserID:</strong></label>
            <input type="number" name="userid" id="id" list="users" value="<%=id %>" style="visiblity:hidden"><br><br>
             
            <label for="ProductId"><strong>ProductId:</strong></label>
            <input type="number" name="productid" id="proid" list="productsid" value="<%=proId %>" style="visiblity:hidden"><br><br>
   
   
            <label for="Quantity"><strong>Quantity:</strong></label>
            <input type="number" name="quan" id="quantity" list="quantity" required><br><br>


            <label for="Price"><strong>Price:</strong></label>
            <input type="number" name="pri" id="Price" list="pri" value="<%=productList.get(i).getPrice() %>" required><br><br>
                        
            <label for="Orderdate"><strong>OrderDate:</strong></label>
            <input type="date" name="orderdate" id="odate" list="odate" placeholder="dd-mm-yyyy" value="" required><br><br><br>

			<div>
                <button type="submit">Order</button>&nbsp; &nbsp; &nbsp; &nbsp;
                <button type="reset"><strong>Reset</strong></button>
            </div>
		</form>
		<script>
function check(){
var count=document.getElementById("quantity").value;
console.log(count);
document.getElementById("Price").value=<%=productList.get(i).getPrice()%>*count;
}
<%} %>
</script>
</body>
</html>