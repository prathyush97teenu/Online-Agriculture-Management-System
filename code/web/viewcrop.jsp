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
         <img class="bg" src="images/crop/crop1.jpg" alt="crop1" >
        <img class="bg" src="images/crop/crop2.jpg" alt="crop2" >
        <img class="bg" src="images/crop/crop3.jpg" alt="crop3" >
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
        <div class="divtable">
            <header><h3>Crop Information</h3></header>
        <table align="center" cellpadding="5" cellspacing="5" border="1">
        <tr></tr>
        <tr bgcolor="#1F4788">
            <td><b>Crop Id</b></td>
            <td><b>Crop Name</b></td>
            <td><b>Soil Id</b></td>
            <td><b>Season</b></td>
            <td><b>Crop Type</b></td>
        </tr>
        <%
        try{ 
        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
        statement=connection.createStatement();
        String sql ="SELECT * FROM cropdetails";

        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
        %>
        <tr bgcolor="#FFB85F">

        <td><%=resultSet.getString("cropid") %></td>
        <td><%=resultSet.getString("cropname") %></td>
        <td><%=resultSet.getString("soilid") %></td>
        <td><%=resultSet.getString("season") %></td>
        <td><%=resultSet.getString("croptype") %></td>

        </tr>

        <% 
        }

        } catch (Exception e) {
            e.printStackTrace();
        }
        %>
        </table>
        </div>
        </div>
         </body>
</html>
<%}}
else{
response.sendRedirect("login.jsp");
}
%>