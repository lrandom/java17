<%-- 
    Document   : cart
    Created on : Dec 31, 2020, 8:31:57 PM
    Author     : Lrandom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
    </head>
    <body>
        <table>
            <tr>
                <td>Name</td>
                <td>Price</td>
                <td>Quantity</td>
            </tr>
            
            
                <c:forEach items="${cart}" var="productItem">
                   <tr> 
                       <td>${productItem.getProduct().getName()}</td>
                       <td>
                           <fmt:formatNumber value="${productItem.getProduct().getPrice()}" type="currency"/>
                       </td>
                       <td> ${productItem.getQuantity()} 
                       </td>
                   </tr>
                </c:forEach>
           
        </table>
    </body>
</html>
