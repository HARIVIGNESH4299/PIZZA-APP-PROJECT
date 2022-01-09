<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN</title>
<style>
a:hover{
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
</style>
</head>
<body class="dummySty" >
<form action="Login" align="center"><br><br><br><br><br>
        <h2>LOGIN HERE</h2>     <br><br><br>
        <div >
        <label for="email">EMAIL :</label>
        <input type="text" name="email" placeholder="email" pattern="[a-z]+[a-z0-9]*[@][a-z]+[.][a-z]{2,}" required><br><br>
        <label for="password">PASSWORD :</label> 
        <input type="password" name="password" placeholder="password" required><br><br>
        <button type="submit">LOGIN</button>   &nbsp &nbsp &nbsp 
        <a href="Userregister.jsp">I'm New Here</a>
        </div>
</form>
</body>
</html>