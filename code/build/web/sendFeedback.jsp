<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%  Object phn;
    
    phn = request.getSession().getAttribute("username");

    if(phn!=null){
        if(!phn.toString().equals("admin")){
        response.setDateHeader("Expires",0);
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            response.setHeader("Pragma", "no-cache");
        
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/styles.css">
        <title>JSP Page</title>
    </head>
    <body background="images/coverpic.jpg">
        <%
        String driverName = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String dbName = "agriculture";
        String userId = "root";
        String password = "root";

        try {
        Class.forName(driverName);
        } catch (ClassNotFoundException e) {
        e.printStackTrace();
        }

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        %>
        <img class="bg" src="images/home/hom1.jpg" alt="hom1" >
        <img class="bg" src="images/home/hom2.jpg" alt="hom2" >
        <img class="bg" src="images/home/hom3.jpg" alt="hom3" >
            <div class="navbar">
          
               
            <a href="viewsoil.jsp">Soil</a>  
            <a href="viewcrop.jsp">Crop</a>  
            <a href="viewfertilizer.jsp">Fertilizer</a>  
            <a href="viewmarket.jsp">Market</a> 
            <a href="viewcommodity.jsp">Commodity</a>
            <a href="sendFeedback.jsp">Feedback</a>
            <a href="logoutServlet">Logout</a>
        </div>
        <div>
       <div id="idform">
        <h1>Feedback</h1>   
        <form method="post" action="submitfeedback.jsp">
        <div class="container">
            <label><b>Name</b></label>
            <input type="text" placeholder="Enter your name" name="name">
            
            
            <label><b>Comments</b></label><br>
            <textarea name="feedback" rows="15" cols="50"></textarea><br>
            
            <button type="submit">Submit</button>
          
        </div>
        </form>
        </div>
        
        </div>
    </body>
</html>
<%}}
else{
response.sendRedirect("login.jsp");
}
%>





 