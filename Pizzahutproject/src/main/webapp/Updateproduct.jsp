<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update product</title>
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
 label{
            width:130px;
            display: inline-block;
        }
</style>
</head>
<body style="background-color:orange;">
<ul>  
<li><a href="AddDeleteUpdate.jsp">Home</a></li>

  <li style="float:right"><a href="Userlogin.jsp">Logout</a></li>
</ul><br><br><br><br>
<form align="center" action="updateproduct">
		<h3>UPDATE THE PRODUCTS</h3>		
		<label for="name">product id :</label>
        <input type="text" name="id" required><br><br>      
        <label for="name">product name :</label>
        <input type="text" name="name"><br><br>
        <label for="name">product size :</label>
        <input type="text" name="size"><br><br>
        <label for="name">product price :</label>
        <input type="text" name="price"><br><br>     
        <button onclick="demo()">UPDATE</button>
        <button type="reset">RESET</button>
        <script>
function demo() {
alert("product updated successfully");
}
</script>
 </form>
</body>
</html>