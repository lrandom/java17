<%-- 
    Document   : session6
    Created on : Jan 5, 2021, 6:44:29 PM
    Author     : Lrandom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="/WEB-INF/tlds/utils.tld" prefix="mytag" %>
<fmt:setLocale value="vi_VN"/>
<fmt:setBundle basename="session6.main"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div><fmt:message key="Home"/></div>
        <div><fmt:message key="About"/></div>
        
        <div>
            <fmt:bundle basename="session6.special">
                <fmt:message key="Hi"/>
            </fmt:bundle>
        </div>
        
        <div>
            <mytag:BlockSwearWord 
                content="Bitches, Go away">
                
            </mytag:BlockSwearWord>
        </div>
    </body>
</html>
