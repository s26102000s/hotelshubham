<%@page contentType="text/html" pageEncoding="UTF-8" import= "connect.*,java.sql.*"%>
<%
    String email = (String)session.getAttribute("email");
if(email != null)
    {
    %>
<%
   try
           {
      
   config c2 =new config();
   Connection con2=c2.getcon();         
    int para =Integer.parseInt(request.getParameter("var"));
   String Query= "select * from registration where user_id="+para+"";

   Statement stmt2=con2.createStatement();
  ResultSet rs2=stmt2.executeQuery(Query);

     %>
<%@include file="header.jsp" %>
<div class="wrapper_search" style="background-color: yellow ">
<div class="header_search">
    <div class="logo_search">
   <h1 style="color:#000;margin-top:20px">Bookings<span style="color:rgb(233, 79, 49);"></span></h1>
    </div>
    
    <div class="clear"></div>
</div><!--header close-->
<div class="srch">

</div>
<br/>
<div class="container-fluid"><div class="row"><div class="col-md-1"></div><div class="col-md-10">
<div class="table-responsive">
    <center>
        <table class="table table-striped table-bordered table-hover"  style="background-color: white">
            <tr class="success">
<th>User Name</th>
<th>User Email</th>
<th>Address</th>
<th>Id Proof</th>
<th>Id no.</th>
<th>Gender</th>
<th>Check-in</th>
<th>Check-out</th>
<th>Room</th>
<th>Room type</th>
<th>Mobile NO.</th>
<th>zip</th>
<th>No. of guest</th>
<th>Message</th>
<th>Action</th>
</tr>
<%
 while(rs2.next())
    {
    String un = rs2.getString("name");
    String em = rs2.getString("email");
    String ad = rs2.getString("address");
    String ip= rs2.getString("idproof");
    String in = rs2.getString("idno");
    String gen = rs2.getString("gender");
    String ci = rs2.getString("cin");
    String co = rs2.getString("cout");
    String rm = rs2.getString("room");
    String p = rs2.getString("p1");
    String mo = rs2.getString("mobile");
    String zip = rs2.getString("zip");
    String gt = rs2.getString("guest");
    String ms = rs2.getString("msg");

   int id = rs2.getInt("id");
%>
<tr>
<td><% out.print(un); %></td>
<td><% out.print(em); %></td>
<td><% out.print(ad); %></td>
<td><% out.print(ip); %></td>
<td><% out.print(in); %></td>
<td><% out.print(gen); %></td>
<td><% out.print(ci); %></td>
<td><% out.print(co); %></td>
<td><% out.print(rm); %></td>
<td><% out.print(p); %></td>
<td><% out.print(mo); %></td>
<td><% out.print(zip); %></td>
<td><% out.print(gt); %></td>
<td><% out.print(ms); %></td>

<td><a href="deleteorders.jsp?var=<%=id%>"><input type="submit"  value="Cancel" class="frmm" /></a></td>
</tr>
<%

}
%>
</table>
    </center>
<br/>

</div>
</div>
<div class="col-md-1"></div>
    </div></div></div>

  <%
      }
   

   catch(Exception e)
           { e.printStackTrace();
             }
   %>
<%@include file="footer.jsp" %>
<%
}
else
    {

response.sendRedirect("login.jsp");
}

%>
  
