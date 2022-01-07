<%@page import="java.util.List"%>
<%@page import="com.pizza.dao.UserDaoImpl"%>
<%@page import="com.pizza.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user details</title>
<style type="text/css">
.myDiv {
  background-color: cheryred;    
  text-align: justify;
}
</style>
</head>
<body align="center">
<%
		User user=(User) session.getAttribute("user");
		UserDaoImpl dao=new UserDaoImpl();
		%>	
		<div class="myDiv">
	<label for="name"><b>NAME - </b><%=user.getUsername() %></label> <br><br>
	<label for="email"><b>E-MAIL - </b><%=user.getEmail() %></label><br><br>
	<label for="pnumber"><b>PHONENUMBER - </b><%=user.getPhonenumber() %></label><br><br>
	<label for="address"><b>ADDRESS - </b><%=user.getAddress() %></label><br><br>
	<label for="password"><b>PASSWORD - </b><%=user.getPassword() %></label><br><br>
	<label for="wallet"><b>WALLET - </b><%=user.getWallet() %></label><br><br>
		<a href="Showproducts.jsp">home</a>
		</div>
</body>
</html>