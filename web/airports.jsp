<%-- 
    Document   : index
    Created on : Dec 20, 2018, 12:09:49 PM
    Author     : 1605158
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<center>
        <table border="1">
            <tr>
                
                <th>name</th>
                
                
            </tr>
            <%
                
                String n = request.getParameter("n");
                session.setAttribute("n", n);
                ResultSet r = BigData.hadoop.getData("Select name from airports where country='"+n+"'");
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
