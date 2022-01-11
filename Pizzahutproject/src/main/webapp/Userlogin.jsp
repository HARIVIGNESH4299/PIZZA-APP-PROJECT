 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN</title>
<style>
a:hover	{
            text-decoration:none;
            background-color: white;   
        }
        label{
            width:130px;
            display: inline-block;
        	}
.dummySty {
  background-image: url("Images/login.jpg");
    background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
.login{
    font-family: 'Ubuntu', 'Lato', sans-serif;
    font-weight: 400;
    /* Size and position */
    width: 300px;
    position: relative;
    margin: 60px auto 30px;
    padding: 10px;
    overflow: hidden;
	font-color : white;
    /* Styles */
    background: #111; 
    border-radius: 0.4em;
    box-shadow: 
        0 16px 10px -8px rgba(0, 0, 0, 0.6);
}
label{
    color: gray !important;
}
</style>
</head>
<body class="dummySty" >

<h1 style="color:white;" align="center"><img src="Images\logopizza.png" width="150px" height="100px">PizzaHut</h1>

        <br>
        
        <%String notfound=(String)request.getAttribute("notfound");
        if(notfound !=null){
        	%>
        	<h2 align="center"><%=notfound %></h2>
       <% } %>
      <form action="Login" align="center" class="login"> 
        <div>
        <label for="email" font-color="white">EMAIL :</label> <br>
        <input type="text" name="email" placeholder="email" pattern="[a-z]+[a-z0-9]*[@][a-z]+[.][a-z]{2,}" required><br><br>
        <label for="password">PASSWORD :</label>  <br>
        <input type="password" name="password" placeholder="password" required><br><br>
        <button class="btn btn-primary" type="submit">Login</button>   &nbsp &nbsp &nbsp 
        <a href="Userregister.jsp"><button class="btn btn-primary" type="submit">I'm New Here</button></a>
        </div>
</form>
</body>
</html>