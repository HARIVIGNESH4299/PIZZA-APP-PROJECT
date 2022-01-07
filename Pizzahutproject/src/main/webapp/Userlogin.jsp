<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN</title>
</head>
<body style="background-color:red;" >
<form action="Login" align="center">
        <h2>LOGIN HERE</h2>
        <label for="email">EMAIL :</label>
        <input type="text" name="email" placeholder="email" pattern="[a-z]+[a-z0-9]*[@][a-z]+[.][a-z]{2,}" required><br><br>
        <label for="password">PASSWORD :</label> 
        <input type="password" name="password" placeholder="password" required><br><br>
        <button type="submit">LOGIN</button>
</form>
</body>
</html>