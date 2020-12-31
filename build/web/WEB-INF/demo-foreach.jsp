<%-- 
    Document   : demo-foreach
    Created on : Dec 31, 2020, 6:57:00 PM
    Author     : Lrandom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Demo foreach</title>
    </head>
    <body>
    <c:forEach items="${pageContext.getAttribute('names')}"
               var="name">
                <strong> 
                   ${name}
                </strong>
            </c:forEach>
    </body>
</html>
