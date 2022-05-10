<%@ page import ="java.sql.*" %>
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
            <a href="signup.jsp">Sign Up</a>
            <a href="login.jsp">Login</a>
        </div>
        <%
    try{
        String name = request.getParameter("name");   
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String birthday =request.getParameter("birthday");
        String gender =request.getParameter("gender");
       
        Class.forName("com.mysql.jdbc.Driver").newInstance();  // MySQL database connection
       java .sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture", "root","root");    
      Statement st=con.createStatement();
       st.executeUpdate("insert into user values('"+name+"','"+password+"','"+email+"','"+phone+"','"+birthday+"','"+gender+"')");
        String Query="select * from user ";
        PreparedStatement pst= con.prepareStatement(Query);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())           
           out.println("Signup Successful!!!");  
        else
           out.println("Signup Unsuccessful Try Again !!!");            
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>
        
    </body>
</html>
