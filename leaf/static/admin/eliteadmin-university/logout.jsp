<%-- 
    Document   : logout.jsp
    Created on : 24 Feb, 2017, 2:55:50 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     
        <% 
session.removeAttribute("uname");
session.invalidate();

response.sendRedirect("../../publichome.jsp");
%>
    </body>
</html>
