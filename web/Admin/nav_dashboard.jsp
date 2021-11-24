<%
    String email = (String)session.getAttribute("username");
if(email != null)
    {
    %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">Wel Come To Admin Panel</h1>
    </body>
</html>
<%
}
else
    {

response.sendRedirect("index.jsp");
}

%>