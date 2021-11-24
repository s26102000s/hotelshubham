<%@page import= "com.oreilly.servlet.MultipartRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import=  "connect.*,java.sql.*, java.security.*"%>
<%@page import= "java.sql.*" %>
<%@page import= "java.security.*"%>
<%@page contentType="text/html" import= "com.oreilly.servlet.MultipartRequest" %>
<%
    try
    {
        String email= (String)session.getAttribute("username");
        MultipartRequest ms = new MultipartRequest(request,"C:/Users/HP/Documents/NetBeansProjects/admin/web/pic/");
        String img = ms.getFilesystemName("pic");
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        
        config c = new config();
        con = c.getcon();
        stmt = con.createStatement();
        String sql ="insert into gallary set pic ='"+img+"' where username='"+email+"'";
        int result = stmt.executeUpdate(sql);
        if(result>=1)
        {
            response.sendRedirect("viewgallery.jsp");
        }
        else
        {
            out.print("Sorry!");
        }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    
    %>