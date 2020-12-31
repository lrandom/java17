<%-- 
    Document   : products
    Created on : Dec 29, 2020, 9:14:24 PM
    Author     : Lrandom
--%>

<%@page import="demoshop.models.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link type="text/css" rel="stylesheet" href="./assets/bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="./assets/css/styles.css"/>
    </head>
    <body>
        <div class="container wrapper">
            <div class="row products">
                <c:forEach items="${products}" var="product">
                <div class="col col-md-4 col-xs-12">
                    <div class="product-item">
                        <img src="${product.getThumbnail()}"/>
                        <h5>${product.getName()}</h5>
                        <div>${product.getContent()}</div>
                        <div>
                            <strong class="price">
                            <fmt:formatNumber 
                                value="${product.getPrice()}" 
                                              type="currency"/>
                            </strong>
                        </div>
                            
                            <div>
                                <a href="/Java17/add-to-cart?id=${product.getId()}" style="color:white" class="btn btn-primary">Add to cart</a>
                            </div>    
                    </div>
                </div>
               </c:forEach>
            </div>
        </div>
    </body>
</html>
