<%@ page import="java.io.*,java.sql.*"%>


 <%
         String phonenumber=request.getParameter("tophone");
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/victorialush","root","88zamzam");  
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("Select phonenumber,file_path,file_date from callsreceived where phonenumber like '"+phonenumber+"%'");
 %>
 <table cellpadding="15" border="1">
 <%
 while(rs.next()){

%>
<tr>
<td><%=rs.getString("tophone")%> </td>
<td><%=rs.getString("file_path")%></td> 

 <td><%=rs.getString("file_date")%> </td> 
  </tr>
  <%}%>
 </table>