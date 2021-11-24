<%@page contentType="text/html" pageEncoding="UTF-8" import= "connect.*,java.sql.*"%>
<%
   try
           {
       int param =Integer.parseInt(request.getParameter("var"));
   
       config c =new config();
    Connection con=c.getcon();
    String Query= "delete from faq where id="+param+"";

   Statement stmt=con.createStatement();
    int result=stmt.executeUpdate(Query);
 response.sendRedirect("contact.jsp");
      }
   

   catch(Exception e)
           { e.printStackTrace();
             }
   %>

