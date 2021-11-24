<%@page import= "connect.config"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import= "java.util.*,java.sql.*,java.security.*,connect.config.*"%>
<%@page import= "com.oreilly.servlet.MultipartRequest"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
                        try
                        {
                            config c=new config();
                            Connection con = c.getcon();
                            Random rand=new Random();
                            int id=rand.nextInt(100);
                            
                           
                            
                            MultipartRequest ms = new MultipartRequest(request,"C:/Users/HP/Documents/NetBeansProjects/hotelshubham/web/Admin/images/");
                            String img = ms.getFilesystemName("pic"); 
                         
                            
                            
                            
                            String sql;
                            sql = " insert into gallary(pic)" + " values (?)";
 
                            // create the mysql insert preparedstatement
                            PreparedStatement preparedStmt = con.prepareStatement(sql);
                            
                           
                             preparedStmt.setString (1, img);
                         
      
                            // execute the preparedstatement
                            preparedStmt.execute();
                            con.close();
                            
                            response.sendRedirect("qwe.jsp");                                                     
                        }
                        catch (Exception e)
                        {
                            out.println(e.getMessage());
                        }
                    %>