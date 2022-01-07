<%@page import="com.pizza.dao.UserDaoImpl"%>
<%@page import="com.pizza.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Wallet Recharge</title>
</head>
<body>
<form action="recharge" method="post">

<%		User user=(User) session.getAttribute("user");
		UserDaoImpl dao=new UserDaoImpl();
	//	int id=dao.finduserid(user);
		%>
		<label for="name"> user name :</label>
		<input type="text" name="userid" value="<%=user.getUsername()%>" readonly><br><br> 
 		<label for="wallet">amount</label>
 		<input type="number" name="recharge" ><br><br>
 		<button  type="submit">UPDATE</button>
 		
 		<a href="Showproducts.jsp">BACK</a>  
 </form>
</body>
</html>