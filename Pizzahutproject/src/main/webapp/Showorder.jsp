<%@page import="com.pizza.dao.UserDaoImpl"%>
<%@page import="com.pizza.model.User"%>
<%@page import="java.util.List"%>
<%@page import="com.pizza.dao.OrderDaoImpl"%>
<%@page import="com.pizza.model.Order"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SHOWORDRS</title>
<style type="text/css">
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
             left:235px;  
             top:50px;     
            width: 80%;
            border-collapse: collapse;
           
            border-top: none;
        }


</style>
</head>
<body align="center">
<table align="center">


	
		<tr>	
		<th>product name</th>
		<th>product size</th>
		<th>product price</th>
		<th> quantity</th>
		<th>date</th>
		</tr>		
		<% 
		User user=(User) session.getAttribute("user");		
		UserDaoImpl userdao=new UserDaoImpl();
		int id=userdao.finduserid(user);	
		
		System.out.println("product "+user);
		Order order=new Order();
		OrderDaoImpl dao=new OrderDaoImpl();
		List<Order> orderlist=dao.showorder();
		for(int i=0;i<orderlist.size();i++) {
		order=orderlist.get(i);
		%>	
	<tr>
		<td><%=order.getProduct().getProductname() %></td>
		<td><%=order.getProduct().getSize() %></td>
		<td><%=order.getPrice() %></td>
		<td><%=order.getQuantity() %></td>
		<td><%=order.getOrderdate() %></td>			
	
	</tr>	
<%} %>
		<a href="Showproducts.jsp">Back</a>

	</table>
		
 </body>
</html>