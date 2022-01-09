<%@page import="com.pizza.dao.UserDaoImpl"%>
<%@page import="com.pizza.model.User"%>
<%@page import="java.sql.ResultSet"%>
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
<style >
	th{
             background-color: black;
             color: white;
            height: 60px;
            
        }       
table {
             position: absolute;
             left:125px;  
             top:125px;     
            width: 80%;
            border-collapse: collapse;
           
            border-top: none;
        }	
        a:hover{
            text-decoration:none;
            background-color: white;
            border: 1px solid black;
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
  background-color: lightblue;
}

.active {
  background-color: #04AA6D;
}
.main{
	 background-image: url("Images/main.gif");
    background-repeat: no-repeat;
  	background-attachment: fixed;
  	background-size: cover;
}
.h1{

}
    </style>
</head>
<body style="background-color:lightgray;" align="center" class="main"> 
<h1 style="color:white;">List Of Products</h1>
<% 
	Product product=new Product();
	User user=new User();
	User userdetails=(User) session.getAttribute("user");		
	UserDaoImpl userdao=new UserDaoImpl();
	int id=userdao.finduserid(user); 
%>
<ul>  
<li><a href="Showproducts.jsp">Home</a></li>
  <li> <a href="Showorder.jsp">MyOrders</a></li>
  <li><a href="showcart.jsp">Mycart</a></li>  
  <li> <a href="Userdetails.jsp">Account</a></li>
  <li><a href="Walletrecharge.jsp">RechargeWallet</a></li>
  <li style="float:right"><a href="Userlogin.jsp">Logout</a></li>
  <li><a href="Contect.jsp">Contact</a></li>
</ul><br><br><br><br>
		
<%  ProductDaoImpl dao=new ProductDaoImpl();
List<Product> list=dao.showProduct();
for(int i=0;i<list.size();i++){
	 product=list.get(i);			
	session.setAttribute("product", product);		
	ResultSet rs=dao.findProductId(product);%>	
		<%		
		if(rs.next()) {
		%>
		<div>
		<img src="<%= product.getProductname()%>.jpg" alt="img" width=200px height=100px><br>		
		<b style="color:white;"><%= product.getProductname()%> </b>&nbsp &nbsp
		<b style="color:white;"><%=product.getSize()%></b>   &nbsp &nbsp &nbsp
		<b style="color:white;"><%=product.getPrice() %></b><br> <br>	&nbsp &nbsp 
	 <button>  	<a href="Cart.jsp?productname=<%=product.getProductname()%>&productsize=<%=product.getSize()%>&productprice=<%=product.getPrice()%>">cart</a> </button>   &nbsp &nbsp &nbsp		
	<button>	<a href="Order.jsp?productname=<%=product.getProductname()%>&productsize=<%=product.getSize()%>&productprice=<%=product.getPrice()%>">order</a>   </button><br><br><br><br>
		</div>
		<% }} %>				
</body>
</html>