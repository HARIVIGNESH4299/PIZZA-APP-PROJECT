<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTER</title>
<style>
 label{
            width:130px;
            display: inline-block;
        }
 .dummySky {
  background-image: url("Images/login.jpg");
    background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
a:hover{
            text-decoration:none;
            background-color: white;   
        }
</style>
</head>
<body align="center" class="dummySky">
<form action="Sample"><br><br><br>

        <h3>CREATE YOUR OWN ACCOUNT</h3><br><br><br>
        <label for="NAME">FIRST NAME :</label>      &nbsp &nbsp &nbsp &nbsp &nbsp
        <input type="text" name="firstname" placeholder="firstname" pattern="[a-zA-Z]{3,}" required><br><br>
        
        <label for="EMAIL">EMAIL :</label>      &nbsp &nbsp  &nbsp &nbsp &nbsp
        <input type="text" name="email" placeholder="abc123@gmail.com" pattern="[a-z]+[a-z0-9]*[@][a-z]+[.][a-z]{2,}" required><br><br>
        
        <label for="PHONENUMBER">PHONENUMBER:</label>       &nbsp &nbsp &nbsp &nbsp &nbsp
        <input type="text" name="phonenumber" placeholder="phonenumber" pattern="[6-9]{1}[0-9]{9}" required><br><br>
        
         <label for="ADDRESS">ADDRESS :</label> &nbsp &nbsp &nbsp &nbsp &nbsp
        <input type="text" name="address" placeholder="address"  required><br><br>
        
        <label for="PASSWORD">PASSWORD :</label> &nbsp &nbsp &nbsp &nbsp &nbsp
        <input type="password" name="password" placeholder="password" pattern="[A-Za-z0-9]+[@][A-Za-z0-9]*"  required><br><br>
        
        <button type="submit">SUBMIT</button> &nbsp &nbsp &nbsp &nbsp &nbsp
        <a href="Userlogin.jsp">Already Have Account</a>
</form>
</body>
</html>