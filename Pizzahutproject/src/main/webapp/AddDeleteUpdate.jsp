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
<title>AddUpdateDelete</title>
<style>

			  ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #04AA6D;
}
	th{
             background-color: white;
             color: black;
            height: 60px;
            border: 1px solid black;
        }

        td {
        height:20px;
            text-align: center;
            border: 1px solid black;
        }
        
table {
             position: absolute;
             left:125px;  
             top:200px;     
            width: 80%;
            border-collapse: collapse;           
            border-top: none;
        }

</style>
</head>
<body class="admin"> 
<center>
<h3>Admin</h3>
</center>
<ul>
<li><a href="AddDeleteUpdate.jsp">Home</a></li>
 <li style="float:right"><a href="Userlogin.jsp">Logout</a></li>
</ul><br><br><br><br>
<center>
			<a href="Addproduct.jsp">Add Product </a>
</center>
<form align="center">

		<table align="center">
	<tr>	
		<th>product id</th>	
		<th>product name</th>
		<th>product size</th>
		<th>product price</th>
		<th>DeleteProducts</th>	
		<th>UpdateProducts</th>
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
					
		<td><a href="Deleteproduct.jsp?Pid=<%= rs.getInt(1)%>">DELETE </a></td>
		<td><a href="Updateproduct.jsp?Pid=<%= rs.getInt(1)%>">UPDATE </a></td>

		<% }} %>	
		</tr>	
		</table><br><br><br><br><br><br>
		</form>
	
</body>
</html>