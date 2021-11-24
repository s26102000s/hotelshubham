<%@page import= "connect.config"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import= "java.util.*,java.sql.*,java.security.*, connect.config.*,sun.misc.*"%>
<%@page import= "sun.misc.BASE64Encoder"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <style>
         
        </style>
    </head>
    <body>
<%
                        try
                        {
                            config c=new config();
                            Connection con = c.getcon();
                          
                            
                            String email = request.getParameter("email");
                            String msg = request.getParameter("msg");
                            
                            
                            String sql;
                            sql = " insert into faq(email,msg)" + " values (?, ?)";
 
                            // create the mysql insert preparedstatement
                            PreparedStatement preparedStmt = con.prepareStatement(sql);
                           
                            
                            preparedStmt.setString (1, email);
                            preparedStmt.setString (2, msg);
                            
                            
                            // execute the preparedstatement
                            preparedStmt.execute();
                            con.close();

                           
                            response.sendRedirect("contact.jsp");                                                     
                        }
                        catch (Exception e)
                        {
                            out.println(e.getMessage());
                        }
                    %>
    </body>
</html>