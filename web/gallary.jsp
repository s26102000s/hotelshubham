
<%@page contentType="text/html" pageEncoding="UTF-8" import= "connect.*,java.sql.*"%>


<%
config c =new config();
   Connection con=c.getcon();
String Query= "select * from gallary";

   Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery(Query);

 %>
<%@include file="header.jsp"%>

    
    
    <div class="clear"></div>
<!--header close-->
<div class="srch">

</div>
<br/>
<div class="tab"></div>
<div class="container" >

<h1>Images</h1>
<%
 while(rs.next())
    {

    String sr = rs.getString("pic");
    
int id = rs.getInt("id");
   
%>

<div class="col-md-4">
      <div class="thumbnail">
        <a href="Admin/images/<% out.print(sr); %>" target="_blank">
          <img src="Admin/images/<% out.print(sr); %>" style="height: 200px;width: 400px">
          <div class="caption">
        
          </div> 
        </a>
      </div>
    </div>
<%

}
%>

</div>
<%@include file="footer.jsp"%>

