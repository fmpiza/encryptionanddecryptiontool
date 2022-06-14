<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; 
                                            charset=UTF-8"> 
        <title>incomingcalls</title> 
    </head> 
    <body> 
        <%-- Here we fetch the data using the name attribute  
             of the text from the previous page 
        --%> 
       <%
            String user=request.getParameter("id");
            session.putValue("id",user);
            String fullname=request.getParameter("fullname");
            String phonenumber=request.getParameter("phone");
            String password=request.getParameter("password");
            String email=request.getParameter("email");
            String country=request.getParameter("countryname");



            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://http:192.185.92.87:3306/victoria_call",
                "victoria_call","12345678");
            Statement st= con.createStatement();
            ResultSet rs;
            int i=st.executeUpdate("insert into customerdb values ('"+user+"','"+fullname+"','"+phonenumber+"','"+password+"','"+email+"','"+country+"')");



        %>
            </body> 
            <%-- Here we use the JSP expression tag to display value  
                 stored in a variable --%> 
         <h2>Customer entries was stored successfully...!! </h2>
    
</html>
       

