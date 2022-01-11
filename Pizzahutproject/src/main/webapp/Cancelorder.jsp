<%@page import="java.util.List"%>
<%@page import="com.pizza.dao.OrderDaoImpl"%>
<%@page import="com.pizza.model.Order"%>
<%@page import="com.pizza.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
             left:125px;  
             top:200px;      
            width: 80%;
            border-collapse: collapse;           
            border-top: none;
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
.order{
	 background-image: url("Images/showorder.jpg");
    background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
</style>
</head>
<body align="center" class="order">
<table align="center">
<h1>MyOrders</h1>
<ul>  
<li><a href="Showproducts.jsp">Home</a></li>
  <li> <a href="Showorder.jsp">MyOrders</a></li>
  <li><a href="showcart.jsp">Mycart</a></li>
  <li> <a href="Userdetails.jsp">Account</a></li>
  <li><a href="Walletrecharge.jsp">RechargeWallet</a></li>
  <li style="float:right"><a href="Userlogin.jsp">Logout</a></li>
  <li><a href="Contect.jsp">Contact</a></li>
</ul><br><br><br><br>
	<tr>	
		<th>product name</th>
		<th>product size</th>
		<th>product price</th>
		<th> quantity</th>
		<th>date</th>
		<th>status</th>
		</tr>		
		<% 
		User user=(User) session.getAttribute("user");				
		Order order=new Order();
		OrderDaoImpl dao=new OrderDaoImpl();
		List<Order> orderlist=dao.showorder(user);
		for(int i=0;i<orderlist.size();i++) {
		order=orderlist.get(i);
		%>	
	<tr>		
		<td><%=order.getProduct().getProductname() %></td>
		<td><%=order.getProduct().getSize() %></td>
		<td><%=order.getPrice() %></td>
		<td><%=order.getQuantity() %></td>
		<td><%=order.getOrderdate() %></td>	
		<td><%=order.getStatus() %></td>
	</tr>	
<%} %>

	</table>
	
</form>		
</body>
</html>