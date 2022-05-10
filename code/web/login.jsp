

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/styles.css">
        <title>JSP Page</title>
    </head>
    <body background="images/coverpic.jpg">
        <img class="bg" src="images/home/hom1.jpg" alt="hom1" >
        <img class="bg" src="images/home/hom2.jpg" alt="hom2" >
        <img class="bg" src="images/home/hom3.jpg" alt="hom3" >
        <div class="navbar">
            <a href="index.jsp">Home</a>
            <a href="login.jsp">Login</a>
            <a href="signup.jsp">Sign Up</a>
        </div>
        <div id="idform">
        <form method="post" action="loginServlet">
          <div class="imgcontainer">
            <img src="images/user.png" alt="Avatar" class="avatar">
          </div>

          <div class="container">
            <label><b>Username</b></label>
            <img src="images/username.png" height="25" align="right">
            <input type="text" placeholder="Enter Username" name="username">
            

            <label><b>Password</b></label>
            <img src="images/password.png" height="30" align="right">
            <input type="password" placeholder="Enter Password" name="password">

            <button type="submit">Login</button>
              
          </div>
        </form>
        </div>
    </body>
</html>
