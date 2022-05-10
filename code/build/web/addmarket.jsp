<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
        <div>
        <div class="divtable">
            <header><h3>Market Information</h3></header>
        <table align="center" cellpadding="5" cellspacing="5" border="1">
        <tr></tr>
        <tr bgcolor="#A52A2A">
            <td><b>Market Name</b></td>
            <td><b>Market Place</b></td>
            <td><b>Market Id</b></td>
            <td><b>Arrivals</b></td>
            <td><b>Grades</b></td>
        </tr>
        <%
        try{ 
        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
        statement=connection.createStatement();
        String sql ="SELECT * FROM market";

        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
        %>
        <tr bgcolor="#FFB85F">

        <td><%=resultSet.getString("marketname") %></td>
        <td><%=resultSet.getString("marketplace") %></td>
        <td><%=resultSet.getString("marketid") %></td>
        <td><%=resultSet.getString("arrivals") %></td>
        <td><%=resultSet.getString("grades") %></td>

        </tr>

        <% 
        }

        } catch (Exception e) {
            e.printStackTrace();
        }
        %>
</table>
        </div>
 <div class="divtable">
            <header><h3>Add Market Information</h3></header>
            <form action="submitaddmarket.jsp">
            <div class="container">
            <label><b>Market Name<br></b></label>
            <input type="text" name="marketname">
            <label><b><br>Market Place</b></label>
            <input type="text" name="marketplace">
            <label><b><br>Market Id<br></b></label>
            <input type="number" name="marketid">
            <label><b><br>Arrivals</b></label>
            <input type="text" name="arrivals">
            <label><b>Grades</b></label>
            <input type="text" name="grades">
            <input type="submit" value="Register"/>    
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