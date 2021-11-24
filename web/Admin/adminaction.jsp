<%-- 
    Document   : afterregister
    Created on : Jul 31, 2013, 11:54:35 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"  import="connect.*,java.sql.*, sun.misc.*,java.security.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
   try
           {
       int s=0;
      String login="user";
       String code=null;
       int Result=0;
 int param =Integer.parseInt(request.getParameter("var"));
  
   String price=request.getParameter("email");
   String des=request.getParameter("mob");
   String unam=request.getParameter("un");

   
   config c =new config();
   Connection con=c.getcon();
  
   String Query="update admin set `email`='"+price+"' ,`mobile`='"+des+"',`username`='"+unam+"' where `id`='"+param+"' ";

//out.print(Query);
   Statement stmt=con.createStatement();
    Result=stmt.executeUpdate(Query);

   
   if(Result>=1)
       {
         response.sendRedirect("adminprofile.jsp");
          }
   else
       {
         out.print("Oops...! Try Again");
         }
   }
   
   catch(Exception e)
           { e.printStackTrace();
             }
   %>