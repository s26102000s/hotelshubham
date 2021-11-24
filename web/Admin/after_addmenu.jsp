<%@page import="connect.config"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.security.*,connect.config.*"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
                        try
                        {
                            config c=new config();
                            Connection con = c.getcon();
                            Random rand=new Random();
                            int id=rand.nextInt(100);
                            String fname = request.getParameter("name");
                            String lname = request.getParameter("price");
                            String email = request.getParameter("des");
                            
                            
                            
                            String sql;
                            sql = " insert into menu(id,i_name,i_price,i_des)" + " values ( ?, ?, ?, ?)";
 
                            // create the mysql insert preparedstatement
                            PreparedStatement preparedStmt = con.prepareStatement(sql);
                            preparedStmt.setInt (1, id);
                            preparedStmt.setString (2, fname);
                            preparedStmt.setString (3, lname);
                            preparedStmt.setString (4, email);
                         
      
                            // execute the preparedstatement
                            preparedStmt.execute();
                            con.close();
                            
                            response.sendRedirect("viewmenu.jsp");                                                     
                        }
                        catch (Exception e)
                        {
                            out.println(e.getMessage());
                        }
                    %>