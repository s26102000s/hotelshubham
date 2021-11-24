<%-- 
    Document   : logout
    Created on : May 1, 2016, 10:52:19 PM
    Author     : Harsh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
    </head>
    <body>
        <%
            session.invalidate();
        %>
        <h1> You are successfully logged out<a href="index.jsp">Go back to home page</a> </h1> 
    </body>
</html>
