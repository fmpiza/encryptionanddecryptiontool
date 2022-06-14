<%@ page import="java.io.*,java.sql.*"%>


 <%
 String idoutcalls=request.getParameter("idoutcalls");
            session.putValue("idoutcalls",idoutcalls);
            String phonenumber=request.getParameter("phonenumber");
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/victorialush","root","88zamzam");  
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("Select idoutcalls,phonenumber,file_path,file_date from outcalls where idoutcalls like '"+idoutcalls+"%','"+phonenumber+"%'");
 %>
 <table cellpadding="15" border="1">
 <%
 while(rs.next()){

%>
<tr>
<td><%=rs.getString("idoutcalls")%> </td>
<td><%=rs.getString("phonenumber")%> </td>
<td><%=rs.getString("file_path")%></td> 

 <td><%=rs.getString("file_date")%> </td> 
  </tr>
  <%}%>
 </table>