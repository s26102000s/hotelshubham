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
                            String lname = request.getParameter("email");
                            String email = request.getParameter("pass");
                            String pass = request.getParameter("mob");
                            String spe = request.getParameter("spe");
                            String hos = request.getParameter("hos");
                          String time = request.getParameter("time");
                          String add = request.getParameter("address");
                            
                            
                            String sql;
                            sql = " insert into dregister(id,name,email,password,mobile,speciality,hospital,time,address)" + " values (?, ?, ?, ?, ?,?, ?, ?,?)";
 out.print(sql);                            // create the mysql insert preparedstatement
                            PreparedStatement preparedStmt = con.prepareStatement(sql);
                            preparedStmt.setInt (1, id);
                            preparedStmt.setString (2, fname);
                            preparedStmt.setString (3, lname);
                            preparedStmt.setString (4, email);
                            preparedStmt.setString (5, pass);
                            preparedStmt.setString (6, spe);
                             preparedStmt.setString (7, hos);
                            preparedStmt.setString (8, time);
                            preparedStmt.setString (9, add);
      
                            // execute the preparedstatement
                            preparedStmt.execute();
                            con.close();
                            
                            response.sendRedirect("viewdoctors.jsp");                                                     
                        }
                        catch (Exception e)
                        {
                            out.println(e.getMessage());
                        }
                    %>