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
             background-color: red;
             color: white;
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
             top:125px;     
            width: 80%;
            border-collapse: collapse;
           
            border-top: none;
        }
	
        a:hover{
            text-decoration:none;
            background-color: white;
        }
    div.a{
    	text-align: "left;
    }    
    
    
    </style>
</head>
<body style="background-color:#FF0001;" align="center"> 

<h1>List Of Products</h1>
<%Product product=new Product(); %>

<div class="topnav" style="background-color:white;" align="center">
        <a href="Showorder.jsp?">SHOWORDERS  </a> 	&nbsp &nbsp &nbsp 
        <a href="Contect.jsp">CONTECT  US </a>  	&nbsp &nbsp &nbsp 
        <a href="Walletrecharge.jsp" >RECHARGE WALLET</a>	&nbsp &nbsp &nbsp 
        <a href="Userdetails.jsp">USER</a>
</div>
	<table align="center">
			
		<tr>	
		<th>product id</th>	
		<th>product name</th>
		<th>product size</th>
		<th>product price</th>
		<th>cart</th>
		<th>order</th>
		
		</tr>
		
<%  ProductDaoImpl dao=new ProductDaoImpl();
List<Product> list=dao.showProduct();
for(int i=0;i<list.size();i++){
	 product=list.get(i);			
session.setAttribute("product", product);		
ResultSet rs=dao.findProductId(product);%>	
		<%		
		if(rs.next()){
		%>
		<tr>
		<td><%= rs.getInt(1)%></td>		
		<td><%= product.getProductname()%></td>
		<td><%=product.getSize()%></td>
		<td><%=product.getPrice() %></td>		
		
		<%// session.setAttribute("productid",product.getProductId()); 
	    //	 session.setAttribute("productprice",product.getPrice());%>		
	    <td><a href="Cart.jsp?productname=<%=product.getProductname()%>&productsize=<%=product.getSize()%>&productprice=<%=product.getPrice()%>">cart</a></td>    		
		<td><a href="Order.jsp?productname=<%=product.getProductname()%>&productsize=<%=product.getSize()%>&productprice=<%=product.getPrice()%>">order</a></td>
	
		<% }} %>	
		</tr>	
		</table>		
</body>
</html>