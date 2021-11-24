<%@page contentType="text/html" pageEncoding="UTF-8" import= "java.sql.*,connect.*"%> 
<%@page import= "javax.servlet.*" %>
<%
    String email= (String)session.getAttribute("username");
    
    if(email!=null)
    {
            config c = new config();
            Connection con = c.getcon();
            String sql = "insert into gallary where username='"+email+"'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            if(rs.next())
            {
                String img= rs.getString("pic");
    %>
    <html>
        <body>
    <table style="background-color: greenyellow">
        <tr>
            <td>
        <div><img src="pic/<% out.print(img); %>" style="height:180px; width:150px;"/></div>
        <table border="1">
            
        </table>
        <form action="profileupload.jsp" enctype="multipart/form-data" method="post">
                <input type="file" name="pic"/><br/>
                <input type ="submit" value="submit"/>           
        </form>
       
            </td>
    </tr>
    </table>
        
    </body>
    </html>
<%
    }
}
    else
    {
         out.print("Please login first");
    }
    %>