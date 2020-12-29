<%-- 
    Document   : products
    Created on : Dec 29, 2020, 9:14:24 PM
    Author     : Lrandom
--%>

<%@page import="demoshop.models.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%
           ArrayList<Product> products = (ArrayList<Product>)request.getAttribute("products");
        %>
        
        
        <%for (int i = 0; i < products.size(); i++) {
                %>
                
                
                <%
            }
        %>
    </body>
</html>
