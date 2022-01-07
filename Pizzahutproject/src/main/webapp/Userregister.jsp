<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTER</title>
</head>
<body align="center">
<form action="Sample">

        <h3>CREATE YOUR OWN ACCOUNT</h3>
        <label for="NAME">FIRST NAME :</label>      
        <input type="text" name="firstname" placeholder="firstname" pattern="[a-zA-Z]{3,}" required><br><br>
        
        <label for="EMAIL">EMAIL :</label>      
        <input type="text" name="email" placeholder="abc123@gmail.com" pattern="[a-z]+[a-z0-9]*[@][a-z]+[.][a-z]{2,}" required><br><br>
        
        <label for="PHONENUMBER">PHONENUMBER :</label>       
        <input type="text" name="phonenumber" placeholder="phonenumber" pattern="[6-9]{1}[0-9]{9}" required><br><br>
        
         <label for="ADDRESS">ADDRESS :</label> 
        <input type="text" name="address" placeholder="address"  required><br><br>
        
        <label for="PASSWORD">PASSWORD :</label> 
        <input type="password" name="password" placeholder="password" pattern="[A-Za-z0-9]+[@][A-Za-z0-9]*"  required><br><br>
        
        <button type="submit">SUBMIT</button> 
</form>
</body>
</html>