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
        <img class="bg" src="images/fert/fert1.jpg" alt="fert1" >
        <img class="bg" src="images/fert/fert2.jpg" alt="fert2" >
        <img class="bg" src="images/fert/fert3.jpg" alt="fert3" >
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
            <header><h3>Fertilizer Information</h3></header>
        <table align="center" cellpadding="5" cellspacing="5" border="1">
        <tr></tr>
        <tr bgcolor="#1F4788">
            <td><b>Fertilizer Id</b></td>
            <td><b>Fertilizer Name</b></td>
            <td><b>Fertilizer Type</b></td>
            <td><b>Soil Id</b></td>
            <td><b>Crop Id</b></td>
            <td><b>Nitrogen</b></td>
            <td><b>Phosphorus</b></td>
            <td><b>Fertilizer Cost</b></td>
        </tr>
        <%
        try{ 
        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
        statement=connection.createStatement();
        String sql ="SELECT * FROM fertilizers";

        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
        %>
        <tr bgcolor="#FFB85F">

        <td><%=resultSet.getString("fertilizerid") %></td>
        <td><%=resultSet.getString("fertilizername") %></td>
        <td><%=resultSet.getString("fertilizertype") %></td>
        <td><%=resultSet.getString("soilid") %></td>
        <td><%=resultSet.getString("cropid") %></td>
        <td><%=resultSet.getString("nitrogen") %></td>
        <td><%=resultSet.getString("phosphorus") %></td>
        <td><%=resultSet.getString("fertilizercost") %></td>
        
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
            <header><h3>Remove Fertilizer</h3></header>
            <form action="submitremovefertilizer.jsp">
            <div class="container">
            <label><b>Fertilizer Id</b></label><br>
            <input type="number" placeholder="Remove Fertilizer" name="fertilizerid"><br><br>
            <input type="submit" value="Remove"/>      
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