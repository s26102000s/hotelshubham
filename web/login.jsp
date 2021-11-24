<%-- 
    Document   : login
    Created on : 4 Jul, 2019, 1:49:54 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<center>    
        <form action="afterlogin.jsp" method="post">
            <input type="email" placeholder="Email" name="email"/><br />
            <input type="password" placeholder="Password" name="password"/><br />
                    <a class="forgot" href="#"> Forgot Password </a>
                    <input type="submit" value="submit"/>
                    </form>
            
</center>
<%@include file="footer.jsp" %>