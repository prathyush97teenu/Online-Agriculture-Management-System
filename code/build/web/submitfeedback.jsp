<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
            String name = request.getParameter("name");
            String feedback = request.getParameter("feedback");
            String phno = request.getSession().getAttribute("session").toString();
            String ftime = request.getParameter("ftime");
            String fdate = request.getParameter("fdate");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture", "root", "root");
                PreparedStatement st = con.prepareStatement("insert into feedback values(?,?,?,?,?)");
                st.setString(1, name);
                st.setInt(2, Integer.parseInt(phno));
                st.setString(3, feedback);
                st.setString(4,ftime);
                st.setString(5,fdate);
                st.executeUpdate();
            
            }catch(Exception ex){
                out.println(ex.getMessage());
            
            }
            response.sendRedirect("sendFeedback.jsp");
        %>