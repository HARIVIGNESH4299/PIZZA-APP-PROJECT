<%@page import="java.sql.ResultSet"%>
<%@page import="com.pizza.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.pizza.dao.ProductDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> ADD products</title>
<style>
 label{
            width:130px;
            display: inline-block;
        }
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
</style >
</head>
<body style="background-color:orange;">
<ul>  
<li><a href="AddDeleteUpdate.jsp">Home</a></li>
 <li style="float:right"><a href="Userlogin.jsp">Logout</a></li>
</ul><br><br><br><br>
<form align="center" action="addproduct">
	<div>
	<h3>ADD PRODUCTS</h3>
	 <label for="name"> name :</label>
        <input type="text" name="name"><br><br>
        <label for="size">product size :</label> 
        <input type="text" name="size"><br><br>
        <label for="price" >price :</label>
        <input type="number" name="price"><br><br>     
        <button onclick="demo()">ADD</button>
        <button type="reset">RESET</button>
      </div> 
       </form>	
<script>
function demo() {
alert("product added successfully");
}
</script>

		
</body>
</html>