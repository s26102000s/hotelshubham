<%@page import= "connect.config"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import= "java.util.*,java.sql.*,java.security.*, connect.config.*,sun.misc.*"%>
<%@page import= "sun.misc.BASE64Encoder"%>

<%
    String email = (String)session.getAttribute("email");
if(email != null)
    {
    %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
                        try
                        {
                            config c=new config();
                            Connection con = c.getcon();
                          
                            String name = request.getParameter("name");
                            String a = request.getParameter("user_id");
                            String address = request.getParameter("add");
                            String idproof = request.getParameter("idproof");
                            String idno = request.getParameter("idno");
                            String gender = request.getParameter("gender");
                            String cin = request.getParameter("cin");
                            String cout = request.getParameter("cout");
                            String room = request.getParameter("room");
                            String p1 = request.getParameter("p1");
                            String mobile = request.getParameter("mobile_no");
                            String zip = request.getParameter("zip");
                            String guest = request.getParameter("guest");
                            String msg = request.getParameter("msg");
                            
                           
                            String sql;
                            sql = " insert into registration(name,email,address,idproof,idno,gender,cin,cout,room,p1,mobile,zip,guest,msg,user_id)" + " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                            
                            // create the mysql insert preparedstatement
                            PreparedStatement preparedStmt = con.prepareStatement(sql);
                           
                            preparedStmt.setString (1, name);
                            preparedStmt.setString (2, email);
                            preparedStmt.setString (3, address);
                            preparedStmt.setString (4, idproof);
                            preparedStmt.setString (5, idno);
                            preparedStmt.setString (6, gender);
                            preparedStmt.setString (7, cin);
                            preparedStmt.setString (8, cout);
                            preparedStmt.setString (9, room);
                            preparedStmt.setString (10, p1);
                            preparedStmt.setString (11, mobile);
                            preparedStmt.setString (12, zip);
                            preparedStmt.setString (13, guest);
                            preparedStmt.setString (14, msg);
                            preparedStmt.setString (15, a);
                            
                            // execute the preparedstatement
                            preparedStmt.execute();
                            con.close();

                            
                            response.sendRedirect("index.jsp");                                                     
                        }
                        catch (Exception e)
                        {
                            out.println(e.getMessage());
                        }
                    %>
<%
}
else
    {

response.sendRedirect("index.jsp");
}

%>