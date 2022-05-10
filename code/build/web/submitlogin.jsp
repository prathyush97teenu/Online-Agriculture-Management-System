<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  Object phn;
    
    phn = request.getSession().getAttribute("username");

    if(phn!=null){
        if(phn.toString().equals("admin")){
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
       <img class="bg" src="images/home/hom1.jpg" alt="hom1" >
        <img class="bg" src="images/home/hom2.jpg" alt="hom2" >
        <img class="bg" src="images/home/hom3.jpg" alt="hom3" >
        <div class="navbar">
            
            <div class="dropdown">
            <button class="dropbtn">Soil 
            <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="addsoil.jsp">Add Soil</a>
                <a href="removesoil.jsp">Remove Soil</a>
                <a href="updatesoil.jsp">Update Soil</a>
            </div>
            </div> 
            <div class="dropdown">
            <button class="dropbtn">Crops 
            <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="addcrop.jsp">Add Crop</a>
                <a href="removecrop.jsp">Remove Crop</a>
                <a href="updatecrop.jsp">Update Crop</a>
            </div>
            </div>
            <div class="dropdown">
            <button class="dropbtn">Fertilizers 
            <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="addfertilizer.jsp">Add Fertilizer</a>
                <a href="removefertilizer.jsp">Remove Fertilizer</a>
                 <a href="updatefertilizer.jsp">Update Fertilizer</a>
            </div>
            </div>
            <div class="dropdown">
            <button class="dropbtn">Market
            <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="addmarket.jsp">Add Market</a>
                <a href="removemarket.jsp">Remove Market</a>
                <a href="updatemarket.jsp">Update Market</a>
            </div>
            </div>
            <div class="dropdown">
            <button class="dropbtn">Commodity
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="addcommodity.jsp">Add Commodity</a>
                <a href="removecommodity.jsp">Remove Commodity</a>
                <a href="updatecommodity.jsp">Update Commodity</a>
            </div>
            </div>
            <a href="feedback.jsp">Feedback</a>
            <a href="logoutServlet">Logout</a>
        </div>
        <h1>Welcome <%= request.getSession().getAttribute("username")%>!!!</h1>
      
       
    </body>
</html>
<%}}
else{
response.sendRedirect("login.jsp");
}
%>