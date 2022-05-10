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
            <form method="post" action="submitsignup.jsp">
            <div class="imgcontainer">
            <img src="images/sign.png" alt="Avatar" class="avatar">
          </div>
          
            <div class="container">
            
            <label><b>Name</b></label>
            <img src="images/fname.png" height="30" align="right">
            <input type="text" placeholder="Enter Name" name="name">

            <label><b>Password</b></label>
            <img src="images/password.png" height="30" align="right">
            <input type="password" placeholder="Enter Password" name="password">

              
            <label><b>Email</b></label>
            <img src="images/email.png" height="30" align="right">
            <input type="text" placeholder="Enter Email" name="email">
            
            <label><b>Phone</b></label>
            <img src="images/phone.png" height="30" align="right">
            <input type="text" placeholder="Enter Phone Number" name="phone">
            
            <label><b>Birthday</b></label>
            <img src="images/birthday.png" height="30" align="right"><br>
            <input type="date" placeholder="Enter Birthday" name="birthday"><br><br>
            
            <label><b>Gender</b></label>
            <img src="images/gender.png" height="30" align="right"><br>
            <input type="text" placeholder="Enter 'male' or 'female'" name="gender">
            
            <button type="submit">Register</button>
              
          </div>
        </form>
        </div>
    </body>
</html>
