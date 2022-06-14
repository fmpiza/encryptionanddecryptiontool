<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; 
                                            charset=UTF-8"> 
        <title>outcallsmysql</title> 
    </head> 
    <body> 
        <%-- Here we fetch the data using the name attribute  
             of the text from the previous page 
        --%> 
       <%
           String idoutcalls=request.getParameter("idoutcalls");
            session.putValue("idoutcalls",idoutcalls);
            String phonenumber=request.getParameter("phonenumber");


            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://192.185.92.87:3306/victoria_call",
                "victoria_call","87654321");
            Statement st= con.createStatement();
            ResultSet rs;
             int i=st.executeUpdate("insert into outcalls values ('"+idoutcalls+"','"+phonenumber+"')");


        %>
    </body> 
            <%-- Here we use the JSP expression tag to display value  
                 stored in a variable --%> 
            <h2>Phone number dialled was stored successfully...!!</h2>
    
</html>
       
