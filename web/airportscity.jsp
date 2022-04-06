<%-- 
    Document   : airportscity
    Created on : Dec 22, 2018, 12:55:54 PM
    Author     : 1605158
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <table border="1">
            <tr>
                
                <th>name</th>
                
                
            </tr>
            <%
                
                String n = request.getParameter("n");
                session.setAttribute("n", n);
                ResultSet r = BigData.hadoop.getData("Select name from airports where city='"+n+"'");
                while(r.next()){
                    //String s = r.getString(1);
                    String name = r.getString(1);
                    //int total = Integer.parseInt(r.getString(3));                
            %>
                <tr>
                    
                    <td><%=name%></td>
                    
                </tr>
                <% }
                %>
        </table>
    </center>
</body>
</html>
