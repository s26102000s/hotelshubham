<%@page import= "java.security.MessageDigest"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import= "connect.*,java.sql.*,sun.misc.*"%>
<%@page import= "sun.misc.BASE64Encoder" %>
<%@include file="header.jsp" %>
<% 
    try
    {
        String uname = request.getParameter("email");
        String pass = request.getParameter("password");
        config c = new config();
        Connection con = c.getcon();
        
        MessageDigest md5 = MessageDigest.getInstance("MD5");
        md5.update(pass.getBytes(),0, pass.getBytes().length);
        byte[] newpass=md5.digest(pass.getBytes());
        
        String encpass = new BASE64Encoder().encode(newpass);
        
        String sql = "select * from register where email= '"+uname+"'and pass='"+encpass+"'";
        Statement  stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        
        if(rs.next())
        {
            session.setAttribute("email",uname);
            session.setAttribute("password",pass);
            response.sendRedirect("index.jsp");
            
        }
        else
        {
            response.sendRedirect("login.jsp");
        }
                   
    }
    catch(Exception e)
            {
                e.printStackTrace();
            }
%>
<%@include file="footer.jsp" %>