<%-- 
    Document   : afterlogin
    Created on : Jul 31, 2013, 11:54:51 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import= "java.security.*,connect.*, sun.misc.*, java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">

<%
   try
           {
   String m=request.getParameter("email");
   String p=request.getParameter("password");

  
    config c =new config();
   Connection con=c.getcon();
String Query= "select * from admin where `username`='"+m+"' and `password`='"+p+"'  ";

   Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery(Query);
  if(rs.next())
      {
                session.setAttribute("username",m);
                 response.sendRedirect("dashboard.jsp");
              }
       
   else
  {
      
   response.sendRedirect("index.jsp");
   }


 }
  catch(Exception e)
           { e.printStackTrace();
             }
   %>