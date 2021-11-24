<%@page contentType="text/html" pageEncoding="UTF-8" import= "java.sql.*,connect.*"%> 
<%@page import= "javax.servlet.*" %>
<%
    String email= (String)session.getAttribute("email");
    
    if(email!=null)
    {
            config c = new config();
            Connection con = c.getcon();
            String sql = "Select * from register where email='"+email+"'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            if(rs.next())
            {
                String name = rs.getString("fname");
                String last = rs.getString("lname");
                String em = rs.getString("email");
                String img= rs.getString("pic");
                
           
            
       
    %>
    <%@include file="header.jsp" %>
    <table style="background-color: greenyellow">
        <tr>
            <td>
        <div><img src="pic/<% out.print(img); %>" style="height:180px; width:150px;"/></div>
        <table border="1">
            <tr>
                <td>First name</td>
                <td><% out.print(name);%> </td>
            <tr>
                <td>Last name</td>
                <td><% out.print(last);%></td>
            </tr>               
            <tr>
                 <td> email</td>
                <td><% out.print(em);%></td>
            </tr>
            
        </table>
        <form action="profileupload.jsp" enctype="multipart/form-data" method="post">
                <input type="file" name="pic"/><br/>
                <input type ="submit" value="submit"/>           
        </form>
        <form action="logout.jsp" method="post">
            <br/><br/>
            <input type="submit" value="Logout">
            
        </form>
            </td>
    </tr>
    </table>
        
                <%@include file="footer.jsp" %>
<%
    }
}
    else
    {
         out.print("Please login first");
    }
    %>