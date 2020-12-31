<%-- 
    Document   : demo-jstl
    Created on : Dec 31, 2020, 6:43:53 PM
    Author     : Lrandom
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>
            <c:out value="Hello"/>
            
            <c:set var="test" value="10"/>
            
            <c:out value="${test}"/>
            

      
        </p>
        
            <% 
                String[] names = new String[]{"A","B","C"};
            %>
            
           
            <c:forEach begin="0" items="${names}" var="name" >
                <strong> 
                    ${name}
                </strong>
            </c:forEach>
            
            <c:set var="test" value="10"/>
            <c:if test="${test==10}" var="result">
                <b>${result}</b>
            </c:if>
                
            <c:choose>
                <c:when test="${test==10}">
                    10 param
                </c:when>     
                    
                <c:when test="${test==11}">
                    11 param
                </c:when> 
                    
                <c:otherwise>
                    Otherwise
                </c:otherwise>    
            </c:choose>    
           
            
          
                    <fmt:formatNumber value="1000000" type="currency"/>
                    <fmt:formatNumber value="1000000" type="number"/>
                    <fmt:formatNumber value="1218721" type="percent"/>
            
    </body>
</html>
