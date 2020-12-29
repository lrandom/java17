<%-- 
    Document   : index
    Created on : Dec 29, 2020, 7:40:17 PM
    Author     : Lrandom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
       <jsp:include page="head.jsp">
            <jsp:param name="school" value="NIIT"/>
        </jsp:include>
    <body>
        <h1>Hello World!</h1>
        
        
        <%! int age = 10;%>
        <%=age%>
        
        <%
            //float a= 1;
            //Float A = new Float(1);
            String name = "Luan";
            out.println(name);
        %>
        
     
    </body>
</html>
