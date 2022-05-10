<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
        <%
            String marketname = request.getParameter("marketname");
            String marketplace = request.getParameter("marketplace");
            String marketid = request.getParameter("marketid");
            String arrivals = request.getParameter("arrivals");
            String grades = request.getParameter("grades");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture", "root", "root");
                Statement st = con.createStatement();
                
                st.executeUpdate("insert into market(marketname,marketplace,marketid,arrivals,grades)values('"+ marketname+"','"+marketplace +"','"+marketid+"','"+ arrivals+"','"+ grades+"')");
            
            }catch(Exception ex){
                out.println(ex.getMessage());
            
            }     
        %>
        <img class="bg" src="images/market/market1.jpg" alt="market1" >
        <img class="bg" src="images/market/market2.jpg" alt="market2" >
        <img class="bg" src="images/market/market3.jpg" alt="market3" >
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
        <h3>Market Information is Successfully Added</h3>  
    </body>
</html>
<%}}
else{
response.sendRedirect("login.jsp");
}
%>