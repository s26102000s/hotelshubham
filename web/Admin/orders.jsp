<%@page contentType="text/html" pageEncoding="UTF-8" import="connect.*,java.sql.*"%>
<%
    String email = (String)session.getAttribute("username");
if(email != null)
    {
    %>
<%
config c =new config();
   Connection con=c.getcon();
String Query= "select * from registration";

   Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery(Query);

 %>
<html>
<head>
    <style>
        .frmm {
	width:100px;
	height:35px;
	border:1px solid rgb(233, 79, 49);
	border-radius:4px;
	margin:10px;
	color:black;
	background:rgb(233, 79, 49);
	cursor:pointer;
	font-size:15px;
}
    </style>
<title></title>
<style>
.srch{padding:0px;width:960px;margin:auto;height:30px;}
.tab{padding:0px;width:1024px;margin:auto;}
#frm{width:500px;height:28px;}
#but{height:28px;width:100px;text-align:center;padding-bottom:2px;}
td{text-align:center !important}
.header_search{width:960px;margin:auto;padding-top:10px;}
.logo_search{width:350px;float:left;}
.address{float:right;}
h1{text-align:center;}
.wrapper_search{width:960;margin:auto;}
.clear{clear:both;}
</style>
</head>
<body>
<div class="wrapper_search">
<div class="header_search">
    <div class="logo_search">
   <h1 style="color:#000;margin-top:20px">User Orders <span style="color:rgb(233, 79, 49);"></span></h1>
    </div>
    
    <div class="clear"></div>
</div><!--header close-->
<div class="srch">

</div>
<br/>
<div class="tab">
<table width="960px" height="30px" cellpadding="0" cellspacing="0" border="1" align="center">
<tr>
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
 while(rs.next())
    {
    String name = rs.getString("name");
    String em = rs.getString("email");
    String ad = rs.getString("address");
    String ip= rs.getString("idproof");
    String in = rs.getString("idno");
    String gen = rs.getString("gender");
    String ci = rs.getString("cin");
    String co = rs.getString("cout");
    String rm = rs.getString("room");
    String p = rs.getString("p1");
    String mo = rs.getString("mobile");
    String zip = rs.getString("zip");
    String gt = rs.getString("guest");
    String ms = rs.getString("msg");

   int id = rs.getInt("id");
%>
<tr>
<td><% out.print(name); %></td>
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

<td><a href="deleteorders.jsp?var=<%=id%>"><input type="submit"  value="Delete" class="frmm" /></a></td>
</tr>
<%

}
%>
</table>

</div>
</div>

</body>
</html>
<%
}
else
    {

response.sendRedirect("index.jsp");
}

%>